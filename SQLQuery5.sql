create table tipo_producto(
id_tipo_producto numeric,
descripcion varchar(50)
primary key(id_tipo_producto)
);

create table producto(
id_producto numeric,
fk_id_producto numeric,
descripcion varchar(50),
valor_venta numeric,
valor_compra numeric,
primary key(id_producto),
FOREIGN KEY(fk_id_producto) references tipo_producto(id_tipo_producto)
);

create table inventario(
id_inventario numeric,
cantidad numeric
primary key(id_inventario)
);
alter table inventario 
add
FOREIGN KEY(fk_id_producto) references inventario(id_inventario);

create table vendedor(
id_vendedor numeric,
fk_id_sucursal numeric,
nombre varchar(50),
apellido varchar(50),
cedula numeric,
primary key(id_vendedor),
FOREIGN KEY(fk_id_sucursal) references sucursal(id_sucursal)
);

create table factura(
numero_factura numeric,
fk_id_producto numeric,
fk_id_vendedor numeric,
fk_id_cliente numeric,
cantidad numeric,
valor_venta numeric,
fecha_venta date,
primary key(numero_factura),
FOREIGN KEY(fk_id_producto) references producto(id_producto),
FOREIGN KEY(fk_id_vendedor) references vendedor(id_vendedor),
FOREIGN KEY(fk_id_cliente) references cliente(id_cliente)
);