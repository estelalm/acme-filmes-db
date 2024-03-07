INSERT INTO tbl_filme (nome, sinopse, duracao, data_lancamento, foto_capa, valor_unitario) values
("Nimona", 
"Um cavaleiro é acusado de um crime que não cometeu, e a única pessoa que pode ajudá-lo a provar sua inocência é Nimona, uma adolescente que muda de forma e que também pode ser um monstro que ele jurou matar.", 
'01:41:00', 
'2023-06-23', 
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw2JRqzMTUMCFZBk-BQapOR3YgB2ww01EsVx_pZyFfSQ&s',
20.00
),
(
"Precure All Stars F",
"Em um mundo misterioso e separadas umas das outras, a equipe de 'Soaring Sky Precure' deve se unir às Cures de 'Delicious Party Precure' and 'Tropical Rouge Pretty Cure' para ajudar a encontrar seus amigos e explorar o mundo - além de encontrar uma nova Cure misteriosa que acaba sendo mais do que parece.",
'01:12:50',
'2023-09-15',
'https://images.justwatch.com/poster/306660449/s718/precure-all-stars-f.jpg',
26.00
);

-- verificar o banco
select * from tbl_filme;

-- verificar a tabela
desc tbl_filme;

-- retornar o id do mais recente insert (last_insert_id) e converter para decimal (cast)
select cast(last_insert_id() as DECIMAL) as id from tbl_filme limit 1;

-- teste da seleção por mais de um filtro
select * from tbl_filme where nome like "%all%" and valor_unitario like "%26%" and id like "%2%";



-- testes de update e delete
update tbl_filme set sinopse = "teste" where id = 2;
delete from tbl_filme where id > 2;

