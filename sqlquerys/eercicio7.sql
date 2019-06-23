create table Especialista(
	Id_Especialista int identity(1,1) primary key,
	nombre varchar
)
create table Empresa(
	Id_Empresa int identity(1,1) primary key,
	nombre varchar,
	Id_Especialista int foreign key references Especialista(Id_Especialista)

);

create table Producto(
	Id_Producto int identity(1,1) primary key,
	Id_Empresa int foreign key references Empresa(Id_Empresa),
	nombre varchar,
	descripcion varchar,

);

create table Distribuidor(
	Id_Distribuidor int identity(1,1) primary key,
	nombre varchar,

);

create table Ingrediente(
	Id_Ingrediente int identity(1,1) primary key,
	nombre varchar
);

create table compra_ingrediente(
	Id_Compra int identity(1,1) primary key,
	Id_Distribuidor int foreign key references Distribuidor(Id_Distribuidor),
	Id_Ingrediente int foreign key references Ingrediente(Id_Ingrediente),
	precio decimal(12,2)
);

create table Cliente(
	Id_Cliente int identity(1,1) primary key,
	tipo varchar,
	nombre varchar
);

create table Cliente_Pedido(
	Id_Pedido int identity(1,1) primary key,
	Id_Cliente int foreign key references Cliente(Id_Cliente),
	Id_Producto int foreign key references Producto(Id_Producto)
);

