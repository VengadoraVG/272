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
