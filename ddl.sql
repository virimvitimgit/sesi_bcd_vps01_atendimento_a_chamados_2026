drop database if exists lista_de_atendimento;

create database lista_de_atendimento;

create table comentario(
    id int(11) primary key not null auto_increment,
    id_usuario int(11) primary key not null,
    id_chamada int(11) primary key not null,
    descricao varchar(200) not null,
    tipo varchar(20) not null,
    data_hora varchar(15) not null
);

create table usuario(
    id int(11) primary key not null auto_increment,
    nome varchar(40) not null,
    departamento varchar(20) not null,
    email varchar(15) not null,
    cargo varchar(15) not null,
    telefone decimal(15,2) not null,
    status varchar(20) not null
);

create table chamado(
    id int(11) primary key not null auto_increment,
    id_usuario int(11) primary key not null,
    id_tecnico int(11) primary key not null,
    id_categoria int(11) primary key not null,
    data_abertura date not null,
    data_fechamento date not null,
    descricao varchar(200) not null,
    prioridade varchar(20) not null,
    status varchar(20) not null,
    titulo varchar(20) not null
);

create table categoria(
    id int(11) primary key not null auto_increment,
    nome varchar(40) not null,
    descricao varchar(200)
);

create table tecnico(
    id int(11) primary key not null auto_increment,
    nome varchar(40) not null,
    especialidade varchar(15),
    email varchar(15) not null,
    status varchar(20) not null
);

alter table comentario add constraint fk_usuario foreign key (id_usuario) references usuario(id);
alter table comentario add constraint fk_chamado foreign key (id_chamado) references chamado(id);
alter table chamado add constraint fk_usuario foreign key (id_usuario) references usuario(id);
alter table chamado add constraint fk_tecnico foreign key (id_tecnico) references tecnico(id);
alter table chamado add constraint fk_categoria foreign key (id_categoria) references categoria(id);