create table Lugar_Nacimiento(
	Id_LugarNacimiento int identity(1,1) primary key,
	ciudad varchar,
	provincia varchar,
	pais varchar
);

create table Persona(
	Id_Persona int identity(1,1) primary key,
	Id_Padre int foreign key references Persona(Id_Persona),
	Id_Madre int foreign key references Persona(Id_Persona),
	Id_LugarNacimiento int foreign key references Lugar_Nacimiento(Id_LugarNacimiento),
	Nombre varchar,
	Primer_Apellido varchar,
	Segundo_Apellido varchar
);