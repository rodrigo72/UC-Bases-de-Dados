use bookstore;

select ID, Nome
	from Cliente
    where ID >= 1 and ID <= 5
union
select ID, Nome 
	from Autor
	where ID >= 1 and ID <= 5;
    
select ID, Nome
	from (
		select ID, Nome
			from Cliente
			where ID >= 1 and ID <= 5
		union
		select ID, Nome 
			from Autor
			where ID <= 5
	) as subQuery
order by Nome asc;

select ID, Nome, Email
	from Cliente
    where Email like '%@example.com';
    
select count(*) as Total
	from Cliente
	where Email like '%@example.com';

select count(*) as Total
	from Cliente	
	where Email like '%@nowhere.com';

select count(*), sum(Preço), max(Preço), min(Preço), avg(Preço)
    from Livro
union
select count(*), sum(Valor), max(Valor), min(Valor), avg(Valor)
    from Encomenda;

-- 10 clientes que mais gastaram
select C.Nome as Cliente, count(*), sum(Valor), max(Valor), min(Valor), avg(Valor)
	from Encomenda as E
		inner join Cliente as C on C.ID = E.Cliente
    group by Cliente
    order by sum(Valor) desc
    limit 10;

-- clientes que mais gastaram nas últimas 4 semenas (limite 10)
select C.Nome, sum(E.Valor) as Total
	from Encomenda as E
		inner join Cliente as C on E.Cliente = C.ID
	where E.`Data de pagamento` >= date_sub(curdate(), interval 4 week)
	group by C.ID
    order by Total desc
    limit 10;

-- 10 livros com melhor avaliação média (nem todos os livros têm reviews)
select Livro.ID, Livro.Título, avg(Review.Avaliação) as AvaliaçãoMédia
	from Review
		right join Livro on Review.Livro = Livro.ID
	group by Livro.ID
	order by AvaliaçãoMédia desc
    limit 10;
    
-- 10 livros de ficção com melhor avaliação média (nem todos os livros têm reviews)
select L.Título, avg(R.Avaliação) as `Avaliação Média`
	from Review as R
		right join Livro as L on R.Livro = L.ID
			left join GéneroLivro as GL on GL.Livro = L.ID
	where GL.Género in (
		select ID
			from Género
			where Nome like '%ficção%'
    )
    group by L.ID
    order by `Avaliação Média` desc
    limit 10;

-- ver todas as avaliações
select Livro.Título, Review.Avaliação
	from Review
    inner join Livro on Review.Livro = Livro.ID;
    
-- 10 livros com melhor avaliação média (display do nome do livro)
select Livro.Título as Título, avg(Avaliação) as `Avaliação média`
	from Review
	join Livro on Review.Livro = Livro.ID -- une a tabela review com a tabela livro a partir do ID do livro
	group by Livro -- agrupar resultados pelo livro
	order by avg(Avaliação) desc
	limit 10;
    
select CL.Nome as `Nome do cliente`, Enc.ID as `Nº da encomenda`, Enc.Valor as `Valor`
	from Encomenda as Enc, Cliente as CL
	where CL.ID in (1,2,3) and Enc.Cliente = CL.ID;
    
select CL.ID, CL.Nome, Enc.Valor
	from Encomenda as Enc
		inner join Cliente as CL -- combina duas tabelas com base na condição Enc.Cliente = CL.ID
        on Enc.Cliente = CL.ID
	where CL.ID <= 5
    order by Valor desc;

select Cliente.ID, Cliente.Nome, Encomenda.Valor
	from Encomenda
		inner join Cliente
        on Encomenda.Cliente = Cliente.ID
	where Cliente.ID <= 5
    order by Valor desc;
    
-- 10 autores com livros mais comprados
select A.Nome, sum(EL.Quantidade) as Total
	from EncomendaLivro as EL
			inner join AutorLivro as AL on EL.Livro = AL.Livro
				inner join Autor as A on AL.Autor = A.ID
    group by A.ID
    order by Total desc
    limit 10;

select *
	from Encomenda
    where MONTHNAME(`Data de pagamento`) in ('March', 'May');

-- livros que ninguém encomendou
select *
	from Livro
    where ID not in (
		select distinct Livro
			from EncomendaLivro);
            
-- livros que ninguém encomendou v2
select L.*
	from Livro as L
		left join EncomendaLivro as EL on EL.Livro = L.ID
	group by L.ID
	having count(EL.Encomenda) = 0 or count(EL.Encomenda) is null;

             
-- clientes que não fizeram nenhuma encomenda
select *
	from Encomenda
		where Cliente not in (
			select distinct ID
				from Cliente);



-- quantidade de livros (únicos) por género literário
select G.Nome as `Género literário`, count(G.ID) as Quantidade
	from Livro as L
		inner join GéneroLivro as GL on L.ID = GL.Livro
			inner join Género as G on GL.Género = G.ID
	group by G.Nome
    order by Quantidade desc;
    
-- display dos livros de poesia
select L.*
	from Livro as L
		inner join GéneroLivro as GL on L.ID = GL.Livro
			inner join Género as G on GL.Género = G.ID
	where G.Nome = 'Poesia';
    
-- display dos livros em Nepali
select L.*
	from Livro as L
		inner join Idioma as I on L.Idioma = I.ID
	where I.Nome = 'Slovak';

-- género de ficção
select * 
	from Género
    where Nome like 'Literatura%ficção%';

-- autores que nasceram no mês de junho    
select *
	from Autor
    where `Data de nascimento` like '____-06%';
    
-- todos os nomes
select Nome as Nomes
	from Cliente
union
select Nome
	from Autor;
    
-- fornecedores que ...forneceram mais
select F.Nome, sum(FL.Quantidade) as Quantidade
	from Fornecedor as F
		inner join FornecedorLivro as FL on FL.Fornecedor = F.ID
	group by F.ID
    order by Quantidade desc;
    
-- top 5 editoras com mais livros
select E.Nome, count(L.ID) as Quantidade
	from Livro as L
		inner join Editora as E on L.Editora = E.ID
	group by E.ID
    order by Quantidade desc
    limit 5;
    
-- fornecedores com mais especializações
select F.Nome, count(F.ID) as Quantidade
	from Fornecedor as F
		inner join Especialização as E on E.Fornecedor = F.ID
			inner join Género as G on E.Género = G.ID
	group by F.ID
    order by Quantidade desc;
    
-- quantidade de livros comprados num dado dia
create view QuantidadeDeLivrosCompradosHoje as
	select count(EL.Quantidade)
		from Encomenda as E
			inner join EncomendaLivro as EL on EL.Encomenda = E.ID
		where date(E.`Data de pagamento`) = curdate();

-- clientes com o mesmo nome
select *
	from Cliente as C1
		join Cliente as C2 on C1.Nome = C2.Nome and C1.ID <> C2.ID;


select L.*
	from Livro as L
		inner join AutorLivro as AL on L.ID = AL.Livro
			inner join Autor as A on A.ID = AL.Autor
	where A.Nome = 'Conny Dippel';

-- livros que cujo autor possui um ou mais outros livros na base dados
select distinct T1.Título, T1.AutorNome
from (
    select L.*, A.Nome as AutorNome
    from Livro as L
		inner join AutorLivro as AL on L.ID = AL.Livro
		inner join Autor as A on A.ID = AL.Autor
) as T1
inner join (
    select L.*, A.Nome as AutorNome
    from Livro as L
		inner join AutorLivro as AL on L.ID = AL.Livro
			inner join Autor as A on A.ID = AL.Autor
) as T2 on T1.AutorNome = T2.AutorNome and T1.ID <> T2.ID;

select *
	from Encomenda as E
		left join EncomendaLivro as EL on EL.Encomenda = E.ID
	where EL.Encomenda is null
    order by E.ID;
    
-- clientes que gastaram mais do que 50$
select C.*, sum(E.Valor) as Total
	from Cliente as C
		inner join Encomenda as E on C.ID = E.Cliente
	group by C.ID
	having Total >= 50
	order by Total desc;
    
-- quantidade dos livros que ninguém encomendou
select L.ID, L.Título, L.Quantidade as Quantidade
	from Livro as L
		left join EncomendaLivro as EL on EL.Livro = L.ID
			left join Encomenda as E on E.ID = EL.Encomenda
	group by L.ID
    having sum(E.ID) is null;


create view LivrosBaixaQuantidade as 
	select * from Livro where Quantidade < 5;

select * from LivrosBaixaQuantidade;

-- clientes cuja morada de envio é igual à morada de faturação
select *
	from Cliente as C
		inner join ClienteMoradas as CM on CM.ClienteID = C.ID
	where CM.`Morada de envio` = CM.`Morada de faturação`;
use bookstore;
-- top 5 melhores códigos promocionais ativos
create view MelhoresCódigosAtivos as
	select Código
		from `Código promocional`
		where `Data de fim` < curdate()
		order by Valor;
        
select * from MelhoresCódigosAtivos;

drop view MelhoresCódigosAtivos; 
-- desc Encomenda; -- metadata
-- show index from EncomendaLivro;

select distinct table_name, index_name
	from information_schema.statistics
	where table_schema = 'bookstore';

use bookstore;
delete from Cliente;
delete from Autor;
delete from Editora;
delete from Encomenda;
delete from Género;
delete from Idioma;
delete from `Código promocional`;
delete from Encomenda;
delete from Livro;
delete from Review;
delete from Fornecedor;
delete from EncomendaLivro;
delete from FornecedorLivro;
delete from GéneroLivro;
delete from AutorLivro;
alter table Autor auto_increment = 1;
alter table Idioma auto_increment = 1;
alter table Cliente auto_increment = 1;
alter table Editora auto_increment = 1;
alter table Livro auto_increment = 1;
alter table Encomenda auto_increment = 1;
alter table Género auto_increment = 1;
alter table Fornecedor auto_increment = 1;
alter table Review auto_increment = 1;

INSERT INTO Livro (`Nº edição`, Sinopse, `Data de publicação`, Título, Preço, ISBN, Formato, Dimensões, `Nº de páginas`, IVA, Desconto, Quantidade, Idioma, Editora)
    VALUES (3, "Quaerat unde perferendis.", "2021-07-17", "The Tale", 9.3, "85-853914-9-9", "Hardcover", "2x2x1", 1506, 31, null, 32, 2, 1);

select * from Cliente;
select * from Autor;
select * from Editora;
select * from Género;
select * from Idioma;
select * from `Código promocional`;
select * from Encomenda;

select * from `Código promocional`;
-- show create table Encomenda;
-- show keys from EncomendaLivro;