create schema if not exists `bookstore`;
use `bookstore` ;

-- Cliente
create table if not exists `bookstore`.`Cliente` (
	`ID` int not null auto_increment,
    `Nome` varchar(45) not null,
	`Email` varchar(45) not null,
	`Telemóvel` char(9) not null,
    `NIF` char(9) null,
    primary key (`ID`))
engine = InnoDB;

-- Moradas do cliente
create table if not exists `bookstore`.`ClienteMoradas` (
    `ClienteID` int not null,
    `Morada de envio` varchar(45) not null,
    `Morada de faturação` varchar(45) not null,
    index `ClienteID_idx` (`ClienteID` asc) visible,
    constraint `ClienteMoradas`
        foreign key (`ClienteID`)
        references `bookstore`.`Cliente` (`ID`)
        on delete cascade
        on update cascade)
engine = InnoDB;

-- Idioma
create table if not exists `bookstore`.`Idioma` (
    `ID` int not null auto_increment,
    `Nome` varchar(45) not null,
    primary key (`ID`))
engine = InnoDB;

-- Editora
create table if not exists `bookstore`.`Editora` (
    `ID` int not null auto_increment,
    `Nome` varchar(75) not null,
    `Endereço` varchar(150) not null,
    `Descrição` varchar(350) null,
    `Email` varchar(100) not null,
    `Telefone` char(9) not null,
    `Website` varchar(100) null,
    primary key (`ID`))
engine = InnoDB;

create table if not exists `bookstore`.`Livro` (
    `ID` int not null auto_increment,
    `Nº edição` int unsigned not null,
    `Sinopse` varchar(400) not null,
    `Data de publicação` date not null,
    `Título` varchar(45) not null,
    `Preço` decimal(5,2) not null default 0.00,
    `ISBN` varchar(20) not null,
    `Formato` varchar(45) not null,
    `Dimensões` varchar(45) null,
    `Nº de páginas` int unsigned not null,
    `IVA` decimal(2,0) not null default 0,
    `Desconto` decimal(2,0) default 0,
    `Quantidade` int unsigned not null default 0,
    `Idioma` int null,
    `Editora` int null,
    constraint `CheckPreçoLivro`
        check(`Preço` >= 0.00),
    constraint `CheckDescontoLivro`
        check(`Desconto` >= 0 and `Desconto` <= 100),
    constraint `CheckIVALivro`
        check(`IVA` >= 0 and `IVA` <= 100),
    primary key (`ID`),
    index `IdiomaID_idx` (`Idioma` asc) visible,
    index `EditoraID_idx` (`Editora` asc) visible,
    index `LivroTítulo_idx` (`Título` asc) visible,
    constraint `IdiomaLivro`
        foreign key (`Idioma`)
        references `bookstore`.`Idioma` (`ID`)
        on delete set null
        on update cascade,
    constraint `EditoraLivro`
        foreign key (`Editora`)
        references `bookstore`.`Editora` (`ID`)
        on delete set null
        on update cascade
)
engine = innodb;

create table if not exists `bookstore`.`Código promocional` (
    `Código` varchar(50) not null,
    `Valor` int unsigned not null default 0,
    `Data de início` datetime not null,
    `Data de fim` datetime not null,
    constraint `CheckValor`
        check(`Valor` >= 0 and `Valor` <= 100),
    constraint `CheckDatasCodigo`
        check (`Data de início` < `Data de fim`),
    primary key (`Código`))
engine = InnoDB;

create table if not exists `bookstore`.`Encomenda` (
    `ID` int not null auto_increment,
    `Data de entrega` datetime null,
    `Data de envio` datetime null,
    `Data de pagamento` datetime null,
    `Método de pagamento` enum ('Cartão de Crédito', 'Transferência Bancária', 'PayPal') not null,
    `Estado` enum ('Finalizada', 'Enviada', 'Entregue') not null,
    `Valor` decimal(6,2) not null default 0.00,
    `Modo de envio` varchar(45) not null,
    `Cliente` int null,
    `Código` varchar(50) null, -- código promocional
    primary key (`ID`),
    index `CódigoID_idx` (`Código` asc) visible,
    index `ClienteID_idx` (`Cliente` asc) visible,
    constraint `ClienteEncomenda`
        foreign key (`Cliente`)
        references `bookstore`.`Cliente` (`ID`)
        on delete set null
        on update cascade,
    constraint `CódigoEncomenda`
        foreign key (`Código`)
        references `bookstore`.`Código promocional` (`Código`)
        on delete set null
        on update cascade)
engine = InnoDB;

create table if not exists `bookstore`.`EncomendaLivro` (
    `Encomenda` int not null,
    `Livro` int not null,
    `Quantidade` int unsigned not null,
    index `LivroID_idx` (`Livro` asc) visible,
    index `EncomendaID_idx` (`Encomenda` asc) visible,
    constraint `CheckQuantidadeEncomenda`
        check(`Quantidade` > 0 and `Quantidade` <= 50),
    constraint `ELEncomendaID`
        foreign key (`Encomenda`)
        references `bookstore`.`Encomenda` (`ID`)
        on delete cascade
        on update cascade,
    constraint `ELLivroID`
        foreign key (`Livro`)
        references `bookstore`.`Livro` (`ID`)
        on delete cascade
        on update cascade)
engine = InnoDB;

create table if not exists `bookstore`.`Review` (
    `ID` int not null auto_increment,
    `Cliente` int not null,
    `Livro` int null,
    `Visibilidade` enum ('Público', 'Privado') not null,
    `Conteúdo` varchar(200) not null,
    `Data` datetime not null,
    `Avaliação` enum ('1', '2', '3', '4', '5') not null,
    primary key (`ID`),
    index `ClienteID_idx` (`Cliente` asc) visible,
    index `LivroID_idx` (`Livro` asc) visible,
    constraint `ReviewClientID`
        foreign key (`Cliente`)
        references `bookstore`.`Cliente` (`ID`)
        on delete cascade
        on update cascade,
    constraint `ReviewLivroID`
        foreign key (`Livro`)
        references `bookstore`.`Livro` (`ID`)
        on delete set null
        on update cascade)
engine = InnoDB;

create table if not exists `bookstore`.`Género` (
    `ID` int not null auto_increment,
    `Nome` varchar(100) not null,
    `Descrição` varchar(350) not null,
    primary key (`ID`))
engine = InnoDB;

create table if not exists `bookstore`.`Autor` (
    `ID` int not null auto_increment,
    `Nome` varchar(45) not null,
    `Avaliação` decimal(3,2) not null default 0.00,
    `Biografia` varchar(500) null,
    `Data de nascimento` date not null,
    constraint `CheckAvaliação`
        check(`Avaliação` >= 0 and `Avaliação` <= 5),
    primary key (`ID`))
engine = InnoDB;

create table if not exists `bookstore`.`GéneroLivro` (
    `Livro` int not null,
    `Género` int not null,
    index `LivroID_idx` (`Livro` asc) visible,
    index `GéneroID_idx` (`Género` asc) visible,
    constraint `GéneroLivroLivroID`
        foreign key (`Livro`)
        references `bookstore`.`Livro` (`ID`)
        on delete cascade
        on update cascade,
    constraint `GéneroLivroGéneroID`
        foreign key(`Género`)
        references `bookstore`.`Género` (`ID`)
        on delete cascade
        on update cascade)
engine = InnoDB;

create table if not exists  `bookstore`.`AutorLivro` (
    `Autor` int not null,
    `Livro` int not null,
    index `LivroID_idx` (`Livro` asc) visible,
    index `AutorID_idx` (`Autor` asc) visible,
    constraint `LivroAutorID`
        foreign key (`Livro`)
        references `bookstore`.`Livro` (`ID`)
        on delete cascade
        on update cascade,
    constraint `AutorLivroID`
        foreign key (`Autor`)
        references `bookstore`.`Autor` (`ID`)
        on delete cascade
        on update cascade)
engine = InnoDB;

create table if not exists `bookstore`.`Fornecedor` (
    `ID` int not null auto_increment,
    `Nome` varchar(45) not null,
    `Descrição` varchar(45) null,
    `Email` varchar(45) not null,
    `Telefone` varchar(9) not null,
    `Endereço` varchar(45) not null,
    primary key (`ID`))
engine = InnoDB;

create table if not exists `bookstore`.`FornecedorLivro` (
	`ID` int not null auto_increment,
    `Livro` int null,
    `Fornecedor` int null,
    `Valor` decimal(6,2) not null default 0.00,
    `Data` date not null,
    `Quantidade` int unsigned not null default 0.00,
    index `FornecedorID_idx` (`Fornecedor` asc) visible,
    index `LivroID_idx` (`Livro` asc) visible,
    primary key (ID),
    constraint `CheckValorLivro`
        check(`Valor` >= 0),
    constraint `FLFornecedorID`
        foreign key (`Fornecedor`)
        references `bookstore`.`Fornecedor` (`ID`)
        on delete set null
        on update cascade,
    constraint `FLLivroID`
        foreign key (`Livro`)
        references `bookstore`.`Livro` (`ID`)
        on delete set null
        on update cascade)
engine = InnoDB;

create table if not exists `bookstore`.`Especialização` (
    `Género` int not null,
    `Fornecedor` int not null,
    index `GéneroID_idx` (`Género` asc) visible,
    index `FornecedorID_idx` (`Fornecedor` asc) visible,
    constraint `GéneroID`
        foreign key (`Género`)
        references `bookstore`.`Género` (`ID`)
        on delete cascade
        on update cascade,
    constraint `FornecedorID`
        foreign key (`Fornecedor`)
        references `bookstore`.`Fornecedor` (`ID`)
        on delete cascade
        on update cascade)
engine = InnoDB;