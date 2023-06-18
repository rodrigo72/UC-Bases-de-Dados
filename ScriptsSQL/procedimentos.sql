use bookstore;

DELIMITER $$
create procedure novoFornecimento
	(in LivroID int, in FornecedorID int, in Valor decimal(6,2), in QuantidadeFornecimento int)
begin
	declare erroTransação bool default 0;
    declare continue handler for sqlexception set erroTransação = 1;
    
    start transaction;
	insert into FornecedorLivro (Livro, Fornecedor, Valor, Data, Quantidade) values
		(LivroID, FornecedorID, Valor, now(), QuantidadeFornecimento);
	update Livro
		set Quantidade = Quantidade + QuantidadeFornecimento
        where ID = LivroID;
        
	if erroTransação then rollback;
	else commit;
    end if;
end $$
DELIMITER ;


DELIMITER $$
create procedure emailCliente
	(in ClienteID int)
begin
	select C.Email
		from Cliente as C
        where C.ID = ClienteID;
end $$
DELIMITER ;

DELIMITER $$
create procedure calcularPreçoEncomenda (in EncomendaID int)
begin
	declare result decimal (6,2);
    declare eID int;
    declare codigoValor int;
    declare correçãoDePreço decimal(6, 2);
    declare erroTransação bool default 0;
    declare continue handler for sqlexception set erroTransação = 1;
    
    start transaction;
	select E.ID, sum(L.Preço * (1 - coalesce(L.Desconto/100.0, 0)) * coalesce(EL.Quantidade, 0)), coalesce(C.Valor, 0) into eID, result, codigoValor
		from Encomenda as E
			left join `Código promocional` as C on E.Código = C.Código
				inner join EncomendaLivro as EL on E.ID = EL.Encomenda
					inner join Livro as L on EL.Livro = L.ID
		where E.ID = EncomendaID
		group by E.ID;
	
    set correçãoDePreço = result * (1 - (codigoValor / 100.0));
	select eID as Encomenda, result as `Preço total`, concat(codigoValor, '%') as 'Promoção', correçãoDePreço as `Correção de preço`;
     
	update Encomenda
		set Valor = correçãoDePreço
        where ID = EncomendaID;
	
    if erroTransação then rollback;
	else commit;
    end if;
end $$
DELIMITER ;

drop procedure calcularPreçoEncomenda;

DELIMITER $$
create procedure melhoresCódigosPromocionais 
	(in Data date, in Limite int)
begin
	select *
		from `Código promocional`
		where `Data de fim` > Data
		order by Valor
    limit Limite;
end $$
DELIMITER ;

DELIMITER $$
create procedure livrosDeEncomenda (in EncomendaID int)
begin
	select L.Título, L.Preço, L.Desconto, EL.Quantidade
		from Encomenda as E
			left join EncomendaLivro as EL on E.ID = EL.Encomenda
				left join Livro as L on L.ID = EL.Livro
		where E.ID = EncomendaID;
end $$
DELIMITER ;

drop procedure livrosDeEncomenda;

DELIMITER $$
create procedure avisoATodosOsUtilizadores 
	(in Aviso varchar(100), out Avisos varchar(10000))
begin
	declare Fim integer default 0;
    declare NomeCliente char(75);
    declare AvisosConcat varchar(10000) default '';
    
    -- definição do cursor
    declare cursorClientes cursor for
		select Nome
			from Cliente
            where ID in (1,2,3,4,5) -- restrição imposta
            order by Nome asc;
	
    -- declaração do handler para deteção do final do cursor
    declare continue handler for not found set fim = 1;
        
	-- abertura e carregamento do cursor com os dados 
    open cursorClientes;
    
	-- travessia de todas as linhas do cursor
    fazAvisos : loop
		fetch cursorClientes into NomeCliente;
        
		if Fim = 1 then leave fazAvisos;
		end if;
        
		set AvisosConcat = concat (AvisosConcat, 'Para: ', NomeCliente, '\n', Aviso, '\n\n');
	end loop fazAvisos;
    close cursorClientes;
    
	set Avisos = AvisosConcat;
end $$
DELIMITER ;

DELIMITER $$
create procedure darCodigosPromocionais 
	(in Semanas int, in MinSum decimal(6,2), in CódigoPromocional varchar(50), out Avisos varchar(5000))
begin
	declare Fim integer default 0;
    declare NomeCliente char(75);
    declare AvisosConcat varchar(10000) default '';
	declare cursorClientes cursor for
		select C.Nome
			from Encomenda as E
				inner join Cliente as C on E.Cliente = C.ID
			where E.`Data de pagamento` >= date_sub(curdate(), interval Semanas week)
			group by C.ID
            having sum(E.Valor) > MinSum;
	
    declare continue handler for not found set fim = 1;
	open cursorClientes;
    fazAvisos : loop
		fetch cursorClientes into NomeCliente;
		if Fim = 1 then leave fazAvisos;
		end if;
		set AvisosConcat = concat (AvisosConcat, 'Parabéns, ', NomeCliente, ', ganhou o código promocional: ', CódigoPromocional, '\n\n');
	end loop fazAvisos;
    
    close cursorClientes;
	set Avisos = AvisosConcat;
end $$
DELIMITER ;

DELIMITER $$
create procedure especializaçõesFornecedor
	(in FornecedorID int)
begin
	select G.Nome
		from Fornecedor as F
			inner join Especialização as E on F.ID = E.Fornecedor
				inner join Género as G on E.Género = G.ID
		where F.ID = FornecedorID
        order by G.Nome asc;
end $$
DELIMITER ;

call especializaçõesFornecedor(2);

call novoFornecimento (1, 1, 129.49, 20);
call emailCliente(25);
call melhoresCódigosPromocionais(curdate(), 5);

call calcularPreçoEncomenda(5);
call livrosDeEncomenda(5);

call avisoATodosOsUtilizadores('Promoção 20% em livros de Ficção', @Avisos);
select @Avisos;

call darCodigosPromocionais(4, 300, '05CTNM9913W', @AvisosCodigos);
select @AvisosCodigos;

select L.Título from Livro as L;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '914357';