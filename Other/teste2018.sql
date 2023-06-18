use bookstore;

create table if not exists Monitor (
	Nr int not null,
    Nome varchar(75) not null,
    Habilitações text not null,
    Observações text null,
    primary key (Nr)
)
engine = InnoDB;

create table if not exists Disciplina (
	Nr int not null,
    Designação varchar(75) not null,
    Ano int not null,
    Observações text null,
    primary key (Nr)
)
engine = InnoDB;

create table if not exists Estudante (
	Nr int not null,
    Nome varchar(75) not null,
    Escola varchar(75) not null,
    Ano int,
    Observações text null,
    primary key (Nr)
)
engine = InnoDB;

create table if not exists Explicações (
	Nr int not null,
    Data date not null,
    HoraInício time not null,
    HoraFim time not null,
    Disciplina int not null,
    Monitor int not null,
    Estudante int not null,
    Sumário varchar(150) not null,
    Observações text null,
    index Disciplina_idx  (Disciplina asc)  visible,
    index Monitor_idx (Monitor asc) visible,
    index Estudante_idx (Estudante asc) visible,
    constraint EdisciplinaNr
		foreign key (Disciplina) 
        references Disciplina (Nr)
        on delete cascade
        on update cascade,
	constraint EmonitorNr
		foreign key (Monitor) 
		references Monitor (Nr)
        on delete cascade
        on update cascade,
	constraint EestudanteNr
		foreign key (Estudante)
        references Estudante (Nr)
        on delete cascade
        on update cascade,
	primary key (Nr))
engine = InnoDB;

select Es.Nome
	from Explicações as Ex
		inner join Estudante as Es on Ex.Estudante = Es.Nr
			inner join Monitor as M on Ex.Monitor = M.Nr
	where year(Ex.Data) = 2018 
		and monthname(Ex.Data) = 'Dezembro'
        and (M.Nome = 'José Bracara Silva' 
			or M.Nome = 'Alberto Ramos Pinto');

DELIMITER $$
create procedure apagarAlunos 
	(in ano int, in escola varchar(75))
begin
	declare erroTransação bool default 0;
    declare continue handler for sqlexception set erroTransação = 1;
    
    start transaction;
	-- desnecessário por causa do "on delete cascade" mas it is what it is
	delete Ex
		from Explicações as Ex
			inner join Estudante as Es on Ex.Estudante = Es.Nr
		where Es.Ano = ano and Es.Escola = escola;
        
	delete from Estudante
		where Es.Ano = ano and Es.Escola = escola;
        
	if erroTransação then rollback;
	else commit;
    end if;
end $$
DELIMITER ;

DELIMITER $$
create procedure idk 
	(in NrAluno int, in NrDisciplina int)
begin
	select sum(Ex.HoraFim - Ex.HoraInício)
		from Explicações as Ex -- os inner join sao 
			inner join Estudante as Es on Ex.Estudante = Es.Nr
				inner join Disciplina as D on Ex.Disciplina = D.Nr
		where D.Nr = NrDisciplina and Es.Nr = NrAluno;
end $$
DELIMITER ;

drop procedure idk;

drop procedure apagarAlunos;
call apagarAlunos(4, 'Ases do Saber');