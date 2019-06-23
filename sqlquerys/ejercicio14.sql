create table Empresa(
	Id_Empresa int identity(1,1) primary key,
	Nombre varchar,

);

create table Disciplina (
	Id_Disciplina int identity(1,1) primary key,
	Nombre varchar,
	Naturaleza varchar,
	Finalidad varchar
);



create table Periodico(
	Id_Periodico int identity(1,1) primary key,
	Nombre varchar
);

create table Indice(
	Id_Indice int identity(1,1) primary key,
	Id_Empresa int foreign key references Empresa(Id_Empresa),
	Id_Periodico int foreign key references Periodico(Id_Periodico),
	Id_Disciplina int foreign key references Disciplina(Id_Disciplina)
);

create table Autor(
	Id_Autor int identity(1,1) primary key,
	Nombre varchar
);

create table Tema(
	Id_Tema int identity(1,1) primary key,
	Nombre varchar
);

create table Articulo(
	Id_Articulo int identity(1,1) primary key,
	Id_Periodico int foreign key references Periodico(Id_Periodico),
	Nombre varchar
);

create table Autor_Articulo(
	Id_Publicacion int identity(1,1) primary key,
	Id_Articulo int foreign key references Articulo(Id_Articulo),
	Id_Autor int foreign key references Autor(Id_Autor)
);

create table Tema_Articulo(
	Id_TemaArticulo int identity(1,1) primary key,
	Id_Articulo int foreign key references Articulo(Id_Articulo),
	Id_Tema int foreign key references Tema(Id_Tema)
);