-- +++++++++++++++++++++++++ DATABASE CREATION +++++++++++++++++++++++++
create database dungeons;
use dungeons;

-- el personaje tiene atributos que determinan su comportamiento
-- en la batalla y los items que puede cargar.
-- los items equipables también tienen atributos, y determinan 
-- el comportamiento que tienen al ser equipados.
create table atributo (
       id int auto_increment not null,
       lvl int,
       ataque int,
       hp int,
       defenza int,
       cooldown_ataque int,
       primary key(id));

-- un personaje es una entidad (inteligente?) que puede atacar, y que al morir
-- deja cosas para lootear.
create table personaje (
       id int auto_increment not null,
       id_atributo int not null,
       nombre varchar(50),
       primary key(id),
       foreign key(id_atributo) references atributo(id));

-- un mob es un personaje agresivo controlado por la computadora
create table mob (
       id_personaje int not null,
       foreign key(id_personaje) references personaje(id));

-- un pc es un personaje controlado por una jugador humano (Person Controlled)
create table pc (
       id_personaje int not null,
       oro int,
       foreign key(id_personaje) references personaje(id));

-- son items que el pc puede llevar en su inventario un pc, y que pueden ser
-- looteados por un personaje al morir.
create table item (
       id int auto_increment not null,
       nombre varchar(50),
       valor_venta int,
       valor_compra int,
       primary key(id));

-- los items que un personaje está llevando. No hay límite de la cantidad que
-- puede llevar
create table inventario (
       id_personaje int not null,
       id_item int not null,
       cantidad int not null,
       foreign key(id_personaje) references personaje(id),
       foreign key(id_item) references item(id)
);

-- determina el comportamiento de lo que lootea un personaje al morir
create table loot (
       id_item int not null,
       id_personaje int not null,
       chance int not null,
       cantidad int not null,
       foreign key(id_item) references item(id),
       foreign key(id_personaje) references personaje(id)
);

-- si un item es equipable, entonces le va a dar atributos al personaje
create table equipable (
       id_item int not null,
       id_atributo int not null,
       foreign key(id_item) references item(id),
       foreign key(id_atributo) references atributo(id)
);


-- +++++++++++++++++++++++++ DATA +++++++++++++++++++++++++
-- mob
insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (10, 5, 100, 20, 1000);
insert into personaje(nombre, id_atributo)
values ('araña gigante', 1);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (30, 100, 1000, 25, 700);
insert into personaje(nombre, id_atributo)
values ('demonio', 2);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (80, 500, 155000, 300, 2000);
insert into personaje(nombre, id_atributo)
values ('dragón escamado', 3);

insert into mob(id_personaje)
values (1);

insert into mob(id_personaje)
values (2);

insert into mob(id_personaje)
values (3);

-- pc
insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (70, 500, 50000, 100, 500);
insert into personaje(nombre, id_atributo)
values ('vg', 4);
-- oro
insert into pc(id_personaje, oro)
values (4, 1000);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (70, 400, 100000, 500, 800);
insert into personaje(nombre, id_atributo)
values ('konata', 5);
-- oro
insert into pc(id_personaje, oro)
values (5, 1000);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (70, 800, 10000, 50, 1000);
insert into personaje(nombre, id_atributo)
values ('tanat', 6);
-- oro
insert into pc(id_personaje, oro)
values (6, 500000);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (70, 450, 90000, 150, 400);
insert into personaje(nombre, id_atributo)
values ('galomagno', 7);
-- oro
insert into pc(id_personaje, oro)
values (7, 900000);

insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (45, 100, 8100, 80, 1000);
insert into personaje(nombre, id_atributo)
values ('papirri', 8);
-- oro
insert into pc(id_personaje, oro)
values (8, 500);

-- item
insert into item(nombre, valor_venta, valor_compra)
values ('veneno', 1, 10);

insert into item(nombre, valor_venta, valor_compra)
values ('ojo de araña', 1, 15);

insert into item(nombre, valor_venta, valor_compra)
values ('runa maldita', 50, 150);

insert into item(nombre, valor_venta, valor_compra)
values ('alma oprimida', 100, 200);

-- -- [espada de fuego] es un item equipable
insert into item(nombre, valor_venta, valor_compra)
values ('espada de fuego', 1000, 250000);
-- atributos que modifica
insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (10, 10, -10, 10, 0);
-- es equipable
insert into equipable(id_item, id_atributo)
values (5, 9);

insert into item(nombre, valor_venta, valor_compra)
values ('escama arcana bendita', 500, 1500);

insert into item(nombre, valor_venta, valor_compra)
values ('garra arqueada arcana', 10000, 200000);

-- -- [espada heróica del último guerrero puro] es un item equipable
insert into item(nombre, valor_venta, valor_compra)
values ('espada heróica del último guerrero puro', 10000000, 2000000000);
-- atributos que modifica
insert into atributo(lvl, ataque, hp, defenza, cooldown_ataque)
values (70, 1000, 900, 10, 100);
-- es equipable
insert into equipable(id_item, id_atributo)
values (8, 10);

-- inventario
insert into inventario(id_personaje, id_item, cantidad)
values (4, 1, 20);

insert into inventario(id_personaje, id_item, cantidad)
values (4, 8, 2);

insert into inventario(id_personaje, id_item, cantidad)
values (5, 8, 3);

insert into inventario(id_personaje, id_item, cantidad)
values (5, 6, 10);

insert into inventario(id_personaje, id_item, cantidad)
values (6, 7, 5);

insert into inventario(id_personaje, id_item, cantidad)
values (7, 2, 100);

insert into inventario(id_personaje, id_item, cantidad)
values (8, 5, 1);


-- loot
-- -- de la araña
insert into loot(id_item, id_personaje, chance, cantidad)
values(1, 1, 80, 1);

insert into loot(id_item, id_personaje, chance, cantidad)
values(2, 1, 100, 8);

-- -- del demonio
insert into loot(id_item, id_personaje, chance, cantidad)
values(3, 2, 50, 2);

insert into loot(id_item, id_personaje, chance, cantidad)
values(4, 2, 20, 5);

insert into loot(id_item, id_personaje, chance, cantidad)
values(5, 2, 15, 1);

insert into loot(id_item, id_personaje, chance, cantidad)
values(6, 2, 5, 1);

insert into loot(id_item, id_personaje, chance, cantidad)
values(1, 2, 1, 5);

-- -- del dragón
insert into loot(id_item, id_personaje, chance, cantidad)
values(5, 3, 100, 10);

insert into loot(id_item, id_personaje, chance, cantidad)
values(6, 3, 80, 100);

insert into loot(id_item, id_personaje, chance, cantidad)
values(7, 3, 100, 20);

insert into loot(id_item, id_personaje, chance, cantidad)
values(8, 3, 10, 1);
          
