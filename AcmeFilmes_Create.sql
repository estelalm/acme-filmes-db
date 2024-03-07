CREATE DATABASE db_acme_filmes_turma_ba;

USE db_acme_filmes_turma_ba;

CREATE TABLE tbl_filme(
	id int not null auto_increment primary key,
    nome varchar(80) not null,
    sinopse text not null,
    duracao time not null,
    data_lancamento date not null,
    data_relancamento date,
    foto_capa varchar(200) not null,
    valor_unitario float,
    
    /* garante que não pode se repetir e fazer com que seja indexado, 
    organizar a tabela a partir do id, para devolver mais rápido*/
    unique key (id),
    unique index(id)
);


