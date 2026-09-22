use dados_teste_em;

-- insert into comentario (id, id_usuario, id_chamada, descricao, tipo, data_hora);
-- values(null, null, null, 'a chamada durou 45 minutos e um especialista foi enviado presencialmente', 'acidente', '14:56:12');
-- values(null, null, null, 'a chamada durou 2 horas e um especialista foi enviado presencialmente', 'arrumar software', '07:36:01');
-- values(null, null, null, 'a chamada durou 5 minutos e a especialista resolveu o problema a distancia', 'desatencao', '09:59:59');

-- insert into comentario;


-- insert into comentario;


-- insert into categoria ();
-- values();

-- insert into comentario;

load data local infile "C:\Users\Vitor Parisato\Desktop\vpf_01_bd\dados_teste_em.csv\Comentario";
into table comentario;
fields terminated by ';';
lines terminated by '\n';

load data local infile "C:\Users\Vitor Parisato\Desktop\vpf_01_bd\dados_teste_em.csv\Usuario";
into table usuario;
fields terminated by ';';
lines terminated by '\n';

load data local infile "C:\Users\Vitor Parisato\Desktop\vpf_01_bd\dados_teste_em.csv\Chamado";
into table chamado;
fields terminated by ';';
lines terminated by '\n';

load data local infile "C:\Users\Vitor Parisato\Desktop\vpf_01_bd\dados_teste_em.csv\Categoria";
into table categoria;
fields terminated by ';';
lines terminated by '\n';

load data local infile "C:\Users\Vitor Parisato\Desktop\vpf_01_bd\dados_teste_em.csv\Tecnico";
into table tecnico;
fields terminated by ';';
lines terminated by '\n';