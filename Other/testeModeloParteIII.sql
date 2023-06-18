create table Projeto (
	ID int not null,
    Designacao varchar(100) not null,
    Orcamento decimal(8,2) not null,
    Observacoes text,
    primary key (ID)
)
engine = InnoDB;

insert into Projeto values 
	(1, 'random', 100000, 'random'),
    (2, 'random', 200000, 'random'),
    (3, 'random', 300000, 'random'),
    (4, 'random', 400000, 'random');

create table Investigador (
	ID int not null,
    Nome varchar(45) not null,
    Habilitacoes varchar(1000) not null,
    Categoria char(1) not null,
    Projeto int,
    Observacoes text,
    index Projeto_idx (Projeto asc) visible,
    constraint InvestigadorProjeto
		foreign key (Projeto)
        references bookstore.Projeto (ID)
        on delete set null
        on update no action,
    primary key (ID)
)
engine = InnoDB;

insert into Investigador values
	(1, 'random', 'random', 'a', 4, 'random'),
    (2, 'random', 'random', 'b', 3, 'random'),
    (3, 'random', 'random', 'c', 2, 'random'),
    (4, 'random', 'random', 'd', 1, 'random');

create table Tarefa (
	ID int not null,
    Designacao varchar(45),
    Custo decimal(8,2),
    primary key (ID)
)
engine = InnoDB;

insert into Tarefa values
	(1, 'random', 1000),
    (2, 'random', 2000),
    (3, 'random', 3000),
    (4, 'random', 4000);

create table InvestigadorTarefa (
	Investigador int not null,
    Tarefa int not null,
    Duracao int not null,
    index Investigador_idx (Investigador asc) visible,
    index Tarefa_idx (Tarefa asc) visible,
    constraint ITInvestigador
		foreign key (Investigador)
        references bookstore.Investigador (ID)
        on delete cascade
        on update no action,
	constraint ITTarefa 
		foreign key (Tarefa)
        references bookstore.Tarefa (ID)
        on delete cascade
        on update no action
)
engine = InnoDB;

insert into InvestigadorTarefa values
	(1, 2, 3),
    (1, 3, 4),
    (2, 3, 5),
    (3, 1, 2),
    (4, 4, 6);

select P.*
	from Projeto as P
		inner join Investigador as I on P.ID = I.Projeto
	where I.Categoria = 'a' and P.Orcamento > 100000.0;

update Investigador
	set Categoria = 'a'
    where ID = 2;
    
create view Investigadores as
	select I.*
		from Investigador as I
			inner join Projeto as P where P.ID = I.Projeto
		order by P.Orcamento desc;
        
select * from Investigadores;
drop view Investigadores;

update Tarefa
	set Designacao = 'Limpeza de Microscópio'
    where ID = 1;

select * from Tarefa;    

-- sem safe mode
delete
	from Tarefa
    where Designacao = 'Limpeza de Microscópio';

-- com safe mode
delete T
	from Tarefa as T
		inner join (
			select ID
				from Tarefa
				where Designacao = 'Limpeza de Microscópio'
        ) as subQuery
		on T.ID = subQuery.ID;

DELIMITER $$
create procedure TempoTotalTarefasInvestigador
	(in ID INT)
begin
	select sum(IT.Duracao)
		from Investigador as I
			inner join InvestigadorTarefa as IT on I.ID = IT.Investigador
		group by I.ID
        having I.ID = ID;
end $$

create procedure dropAllThis ()
begin
	drop table InvestigadorTarefa;
end $$
DELIMITER ;

call TempoTotalTarefasInvestigador(1);
call dropAllThis();