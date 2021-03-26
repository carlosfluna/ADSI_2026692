use clase10nov;

create table usuarios(
id_usr int IDENTITY, 
nombre varchar(50),
telefono int,
primary key(id_usr)
);

create table ventas(
id_ventas int IDENTITY,
fk_id_usr int, 
producto varchar(50),
precio float,
primary key(id_ventas),
foreign key(fk_id_usr) references usuarios(id_usr)
);