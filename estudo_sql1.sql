use carros;

create table marcas(
    marcas_id int auto_increment primary key,
    nome_marcas varchar(255) not null
);

alter table marcas add origem varchar(255);
insert into marcas(nome_marcas,origem)
values('Fiat','Itália'),
      ('BMW','Alemanha'),
      ('Renaut','França'),
      ('Jaguar','Inglaterra')
;
select * from marcas;

where marcas_id =2

create table inventario(
    inventario_id int auto_increment primary key,
    modelo varchar(255) not null,
    transmissao varchar(255) not null,
    motor varchar(255) not null,
    combustivel varchar(255) not null,
    marcas_id int not null,
    foreign key (marcas_id) references marcas(marcas_id)
);

INSERT INTO inventario
(modelo, transmissao, motor, combustivel, marcas_id)
VALUES
('Celta', 'Manual', '2.0', 'Flex', 1);

select * from inventario;

CREATE TABLE clientes(
    clientes_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereço VARCHAR(255) NOT NULL
);
INSERT INTO clientes(nome, sobrenome, endereço)
VALUES ('Giovana', 'Soldan Oliver', 'Rua 1'),
        ('Mateus','Sedenho','Rua 2'),
        ('Guilherme',"Soldan Oliver",'Rua 123')
;

where clientes_id =1;

select * from clientes;