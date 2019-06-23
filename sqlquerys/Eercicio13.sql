create table Cooperativa(
	Id_Cooperativa int identity(1,1) primary key,
	Nombre varchar
);

create table Productor(
	Id_Productor int identity(1,1) primary key,
	Id_Cooperativa int foreign key references Cooperativa(Id_Cooperativa),
	Nombre varchar
);

create table Vendedor(
	Id_Vendedor int identity(1,1) primary key,
	Id_Cooperativa int foreign key references Cooperativa(Id_Cooperativa),
	Nombre varchar
);

create table Producto(
	Id_Producto int identity(1,1) primary key,
	Nombre varchar,
	Descripcion varchar,
	Costo_Produccion decimal(12,2),
	Precio_Venta decimal(12,2)
);

create table Compra(
	Id_Compra int identity(1,1) primary key,
	Id_Vendedor int foreign key references Vendedor(Id_Vendedor),
	Id_Productor int foreign key references Productor(Id_Productor),
	Id_Producto int foreign key references Producto(Id_Producto)
);