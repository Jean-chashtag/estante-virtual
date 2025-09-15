create database if not exists estanteVirtual
default character set utf8mb4
default collate utf8mb4_unicode_ci;

use estanteVirtual;

create table if not exists usuarios(
id int primary key auto_increment not null,
nome varchar(150) not null,
email varchar(150) not null unique,
senha varchar(255) not null,
tipo enum('usuario','administrador') not null default 'usuario'
)default charset = utf8mb4;

create table if not exists exemplares(
id int primary key auto_increment not null,
titulo varchar(255) not null unique,
autor varchar(150) not null,
editora varchar(100) not null,
ano_publicacao year not null,
genero varchar(100) not null,
sinopse text not null,
capa_url varchar(255) not null
)default charset = utf8mb4;