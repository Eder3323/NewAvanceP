Use Master
Go
If(db_id('AvanceProgramatico')Is Not Null)
Drop DataBase AvanceProgramatico
Create DataBase AvanceProgramatico
Go

Use AvanceProgramatico
Go

create Table Tbl_Usuarios(
Matricula int primary key,
Clave varchar (30),
Nombre varchar(75),
Correo varchar(50),
Firma varchar(max),
Grupo varchar(30) null,
Tipo varchar(30),
fk_Rol int )

insert into Tbl_Usuarios values (111,'hola','edeer','zorr@gmail.com','de','f113','Alumno',1)
insert into Tbl_Usuarios values (222,'cordi','edeer','zorr@gmail.com','de','f113','Coordinador',2)

Go

create table Tbl_Años(
pk_Años int primary key )
Go
create table Tbl_Roles(
Roles varchar(50) primary key
)
GO

create table Tbl_PlanAcademico(
pk_PlanAcademico int primary key identity (1,1),
Semana varchar(5),
Tema varchar(550),
Ht varchar(50),
Hp varchar(50),
Bibl varchar(50),
Actividad varchar(550),
Fecha varchar(50),
id_tabla varchar(50),
id_grupo varchar(50),
id_matriculaProfe varchar(50)
)
go
alter proc GuardarCatalogo
@Semana varchar(5),
@Tema varchar(550),
@Ht varchar(50),
@Hp varchar(50),
@Bibl varchar(50),
@Actividad varchar(550),
@Fecha varchar(50),
@id_tabla varchar(50),
@id_grupo varchar(50),
@id_matriculaProfe varchar(50)
AS
begin
insert into Tbl_PlanAcademico(Semana,Tema,Ht,Hp,Bibl,Actividad,Fecha,id_tabla,id_grupo,id_matriculaProfe) 
values(@Semana,@Tema,@Ht,@Hp,@Bibl,@Actividad,@Fecha,@id_tabla,@id_grupo,@id_matriculaProfe)
end
--drop table Tbl_PlanAcademico
Go
select *from Tbl_PlanAcademico
select *from Tbl_Usuarios
Go
--tabla Grado
create table Tbl_Grado
(pk_Grado int,
Grado varchar(50) not null)
Go
insert into Tbl_Grado values(1,'1º - Primero')
insert into Tbl_Grado values(2,'2º - Segundo')
insert into Tbl_Grado values(3,'3º - Tercero')
insert into Tbl_Grado values(4,'4º - Cuarto')
insert into Tbl_Grado values(5,'5º - Quinto')
insert into Tbl_Grado values(6,'6º - Sexto')
insert into Tbl_Grado values(7,'7º - Séptimo')
insert into Tbl_Grado values(8,'8º - Octavo')
insert into Tbl_Grado values(9,'9º - Noveno')
select * from Tbl_Grado

---tabla grupos
go
create table Tbl_Grupo
(pk_Grupo int,
Grupo varchar(50) not null)
go
create table Tbl_Materpro(
fk_Matricula int FOREIGN KEY REFERENCES Tbl_Usuarios(Matricula),
Nombre varchar(50)
)
Go
insert into Tbl_Grupo values(1,'G11')
insert into Tbl_Grupo values(1,'G12')
insert into Tbl_Grupo values(1,'G13')
insert into Tbl_Grupo values(1,'G14')
insert into Tbl_Grupo values(1,'G15')
insert into Tbl_Grupo values(1,'G16')

insert into Tbl_Grupo values(2,'G21')
insert into Tbl_Grupo values(2,'G22')
insert into Tbl_Grupo values(2,'G23')
insert into Tbl_Grupo values(2,'G24')
insert into Tbl_Grupo values(2,'G25')
insert into Tbl_Grupo values(2,'G26')

insert into Tbl_Grupo values(3,'G31')
insert into Tbl_Grupo values(3,'G32')
insert into Tbl_Grupo values(3,'G33')
insert into Tbl_Grupo values(3,'G34')
insert into Tbl_Grupo values(3,'G35')
insert into Tbl_Grupo values(3,'G36')

insert into Tbl_Grupo values(4,'G41')
insert into Tbl_Grupo values(4,'G42')
insert into Tbl_Grupo values(4,'G43')
insert into Tbl_Grupo values(4,'G44')
insert into Tbl_Grupo values(4,'G45')
insert into Tbl_Grupo values(4,'G46')

insert into Tbl_Grupo values(5,'G51')
insert into Tbl_Grupo values(5,'G52')
insert into Tbl_Grupo values(5,'G53')
insert into Tbl_Grupo values(5,'G54')
insert into Tbl_Grupo values(5,'G55')
insert into Tbl_Grupo values(5,'G56')

insert into Tbl_Grupo values(6,'G61')
insert into Tbl_Grupo values(6,'G62')
insert into Tbl_Grupo values(6,'G63')
insert into Tbl_Grupo values(6,'G64')
insert into Tbl_Grupo values(6,'G65')
insert into Tbl_Grupo values(6,'G66')

insert into Tbl_Grupo values(7,'G71')
insert into Tbl_Grupo values(7,'G72')
insert into Tbl_Grupo values(7,'G73')
insert into Tbl_Grupo values(7,'G74')
insert into Tbl_Grupo values(7,'G75')
insert into Tbl_Grupo values(7,'G76')

insert into Tbl_Grupo values(8,'G81')
insert into Tbl_Grupo values(8,'G82')
insert into Tbl_Grupo values(8,'G83')
insert into Tbl_Grupo values(8,'G84')
insert into Tbl_Grupo values(8,'G85')
insert into Tbl_Grupo values(8,'G86')

insert into Tbl_Grupo values(9,'G91')
insert into Tbl_Grupo values(9,'G92')
insert into Tbl_Grupo values(9,'G93')
insert into Tbl_Grupo values(9,'G94')
insert into Tbl_Grupo values(9,'G95')
insert into Tbl_Grupo values(9,'G96')
select * from Tbl_Grupo

----tabla peridos
Go
Create table Tbl_Periodo(
pk_Periodo int, 
Periodo varchar(30) primary key,)
go
insert into Tbl_Periodo values(1,'Enero-Abril ')
insert into Tbl_Periodo values(2,'Mayo-Agosto')
insert into Tbl_Periodo values(3,'Septiembre-Diciembre')
go

Create table Tbl_Carreras(
pk_Carrera int primary key identity (1,1), 
Nombre varchar(70))
Go
insert into Tbl_Carreras values ('Ingenieria Civil')
insert into Tbl_Carreras values ('Ingenieria en Robotica')
insert into Tbl_Carreras values ('Ingenieria Industrial')
insert into Tbl_Carreras values ('Ingenieria en Sistemas Computacionales')
insert into Tbl_Carreras values ('Ingenieria en Tecnologias de manufactura')
insert into Tbl_Carreras values ('Ingenieria en Electronica y Telecomunicaciones')
insert into Tbl_Carreras values ('Licenciatura en Administracion y Gestion de PYMES')
insert into Tbl_Carreras values ('Licenciatura en Negocios Internacionales')
select * from Tbl_Carreras
--/////////materias
go
Create table Tbl_Materias( 
fk_Carrera int FOREIGN KEY REFERENCES Tbl_Carreras(pk_Carrera),
Nombre varchar(50),
numGrado int)
Go
insert into Tbl_Materias values(1,'Ingles 1',1)
insert into Tbl_Materias values(1,'Valores del ser',1)
insert into Tbl_Materias values(1,'Fundamentos de Física',1)
insert into Tbl_Materias values(1,'Materiales constructivos',1)
insert into Tbl_Materias values(1,'Dibujo Técnico',1)
insert into Tbl_Materias values(1,'Cálculo diferencial e integral',1)
insert into Tbl_Materias values(1,'Álgebra lineal',1)

insert into Tbl_Materias values(1,'Ingles 2',2)
insert into Tbl_Materias values(1,'Inteligencia emocional',2)
insert into Tbl_Materias values(1,'Estática',2)
insert into Tbl_Materias values(1,'Procesos deconstrucción ligera',2)
insert into Tbl_Materias values(1,'Dibujo constructivo',2)
insert into Tbl_Materias values(1,'Cálculo vectorial',2)
insert into Tbl_Materias values(1,'Topografía',2)

insert into Tbl_Materias values(1,'Ingles 3',3)
insert into Tbl_Materias values(1,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(1,'Estructuras Isostáticas',3)
insert into Tbl_Materias values(1,'Procesos de construcción pesada',3)
insert into Tbl_Materias values(1,'Dibujo en tres dimensiones',3)
insert into Tbl_Materias values(1,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(1,'Topografía avanzada',3)

insert into Tbl_Materias values(1,'Ingles 4',4)
insert into Tbl_Materias values(1,'Habilidades del pensamiento',4)
insert into Tbl_Materias values(1,'Hidráulica',4)
insert into Tbl_Materias values(1,'Comportamiento de suelos',4)
insert into Tbl_Materias values(1,'Dinámica',4)
insert into Tbl_Materias values(1,'Probabilidad y estadística',4)
insert into Tbl_Materias values(1,'Estancia I',4)

insert into Tbl_Materias values(1,'Ingles 5',5)
insert into Tbl_Materias values(1,'Habilidades organizacionales',5)
insert into Tbl_Materias values(1,'Redes de conducción hidráulica',5)
insert into Tbl_Materias values(1,'Mecánica de suelos',5)
insert into Tbl_Materias values(1,'Mecánica de materiales',5)
insert into Tbl_Materias values(1,'Cuantificación y volumetría de obra',5)
insert into Tbl_Materias values(1,'Control de calidad obra',5)

insert into Tbl_Materias values(1,'Ingles 6',6)
insert into Tbl_Materias values(1,'Ética profesional',6)
insert into Tbl_Materias values(1,'Hidráulica de canales abiertos',6)
insert into Tbl_Materias values(1,'Geotecnia',6)
insert into Tbl_Materias values(1,'Comportamiento de elementos estructurales',6)
insert into Tbl_Materias values(1,'Costos y presupuestos de obra',6)
insert into Tbl_Materias values(1,'Supervisión de obra',6)

insert into Tbl_Materias values(1,'Ingles 7',7)
insert into Tbl_Materias values(1,'Ingeniería de tránsito ',7)
insert into Tbl_Materias values(1,'Hidrología',7)
insert into Tbl_Materias values(1,'Diseño de pavimentos',7)
insert into Tbl_Materias values(1,'Estructuras hiperestáticas',7)
insert into Tbl_Materias values(1,'Geomática',7)
insert into Tbl_Materias values(1,'Estancia II',7)

insert into Tbl_Materias values(1,'Ingles 8',8)
insert into Tbl_Materias values(1,'Sistemas de transporte',8)
insert into Tbl_Materias values(1,'Redes de agua potable y alcantarillado',8)
insert into Tbl_Materias values(1,'Cimentaciones superficiales',8)
insert into Tbl_Materias values(1,'Análisis estructural matricial',8)
insert into Tbl_Materias values(1,'Estructuras mampostería',8)
insert into Tbl_Materias values(1,'Administración proyectos',8)

insert into Tbl_Materias values(1,'Ingles 9',9)
insert into Tbl_Materias values(1,'Vías de comunicación',9)
insert into Tbl_Materias values(1,'Obras Hidráulicas',9)
insert into Tbl_Materias values(1,'Cimentaciones profundas',9)
insert into Tbl_Materias values(1,'Estructuras de concreto',9)
insert into Tbl_Materias values(1,'Estructuras de acero',9)
insert into Tbl_Materias values(1,'Planeación y de proyectos',9)

-------------------------------------------------------------
insert into Tbl_Materias values(2,'Ingles 1',1)
insert into Tbl_Materias values(2,'Valores del ser',1)
insert into Tbl_Materias values(2,'Cálculo diferencial e integral',1)
insert into Tbl_Materias values(2,'Álgebra lineal',1)
insert into Tbl_Materias values(2,'Probabilidad y estadística',1)
insert into Tbl_Materias values(2,'Lógica de programación',1)
insert into Tbl_Materias values(2,'Introducción ala ingeniería robotica',1)

insert into Tbl_Materias values(2,'Ingles 2',2)
insert into Tbl_Materias values(2,'Inteligencia emocional',2)
insert into Tbl_Materias values(2,'Cálculo vectorial',2)
insert into Tbl_Materias values(2,'Diseño asitido por computadora',2)
insert into Tbl_Materias values(2,'Fundamentos de electricidad',2)
insert into Tbl_Materias values(2,'Programación estructurada',2)
insert into Tbl_Materias values(2,'Metrología',2)

insert into Tbl_Materias values(2,'Ingles 3',3)
insert into Tbl_Materias values(2,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(2,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(2,'Estática',3)
insert into Tbl_Materias values(2,'Análisis de circuitos eléctricos',3)
insert into Tbl_Materias values(2,'Programación avanzada',3)
insert into Tbl_Materias values(2,'Ingeniería de materiales',3)

insert into Tbl_Materias values(2,'Ingles 4',4)
insert into Tbl_Materias values(2,'Matemáticas avanzadas',4)
insert into Tbl_Materias values(2,'Habilidades del pensamiento',4)
insert into Tbl_Materias values(2,'Diseño y selección de elementos mecánicos',4)
insert into Tbl_Materias values(2,'Electrónica análogica',4)
insert into Tbl_Materias values(2,'Dinámica',4)
insert into Tbl_Materias values(2,'Estancia I',4)

insert into Tbl_Materias values(2,'Ingles 5',5)
insert into Tbl_Materias values(2,'Habilidades organizacionales',5)
insert into Tbl_Materias values(2,'Señales y sistemas',5)
insert into Tbl_Materias values(2,'Sistemas hidráulicos y neumáticos',5)
insert into Tbl_Materias values(2,'Electrónica digital',5)
insert into Tbl_Materias values(2,'Mecanismos y máquinas',5)
insert into Tbl_Materias values(2,'Procesos de manufactura',5)

insert into Tbl_Materias values(2,'Ingles 6',6)
insert into Tbl_Materias values(2,'Ética profesional',6)
insert into Tbl_Materias values(2,'Diseño de sistemas de control',6)
insert into Tbl_Materias values(2,'Sistemas avanzados de manufactura',6)
insert into Tbl_Materias values(2,'Controladores lógicos programables',6)
insert into Tbl_Materias values(2,'Fundamentos de robótica',6)
insert into Tbl_Materias values(2,'Mantenimiento y seguridad industrial',6)

insert into Tbl_Materias values(2,'Ingles 7',7)
insert into Tbl_Materias values(2,'Ingeniería económica',7)
insert into Tbl_Materias values(2,'Control digital',7)
insert into Tbl_Materias values(2,'Mecánica de fluidos',7)
insert into Tbl_Materias values(2,'Microcontroladores',7)
insert into Tbl_Materias values(2,'Programación de trayectoria de robots',7)
insert into Tbl_Materias values(2,'Estancia II',7)

insert into Tbl_Materias values(2,'Ingles 8',8)
insert into Tbl_Materias values(2,'Ingeniería de proyectos',8)
insert into Tbl_Materias values(2,'Control de ma´quinas eléctricas',8)
insert into Tbl_Materias values(2,'Sistemas de visión',8)
insert into Tbl_Materias values(2,'Redes industriales',8)
insert into Tbl_Materias values(2,'Robótica',8)
insert into Tbl_Materias values(2,'Instrumenta-ción industrial',8)

insert into Tbl_Materias values(2,'Ingles 9',9)
insert into Tbl_Materias values(2,'Administración de la calidad',9)
insert into Tbl_Materias values(2,'Manufactura asistida por computadora',9)
insert into Tbl_Materias values(2,'Desarrollo de emprendedores',9)
insert into Tbl_Materias values(2,'Automatización industrial',9)
insert into Tbl_Materias values(2,'Tópicos de robótica',9)
insert into Tbl_Materias values(2,'Seminarios de investigación',9)

------------------------------------------------------------------------

insert into Tbl_Materias values(3,'Ingles 1',1)
insert into Tbl_Materias values(3,'Valores del ser',1)
insert into Tbl_Materias values(3,'Álgebra lineal',1)
insert into Tbl_Materias values(3,'Cálculo diferencial e integral',1)
insert into Tbl_Materias values(3,'Introducción ala ingeniería industrial',1)
insert into Tbl_Materias values(3,'Fundamentos de química',1)
insert into Tbl_Materias values(3,'Fundamentos de Física',1)

insert into Tbl_Materias values(3,'Ingles 2',2)
insert into Tbl_Materias values(3,'Inteligencia emocional',2)
insert into Tbl_Materias values(3,'Probabilidad y estadística',2)
insert into Tbl_Materias values(3,'Termodinámica',2)
insert into Tbl_Materias values(3,'Electricdad y magnetismo',2)
insert into Tbl_Materias values(3,'Dibujo para ingeniería',2)
insert into Tbl_Materias values(3,'Tecnología de los materiales',2)

insert into Tbl_Materias values(3,'Ingles 3',3)
insert into Tbl_Materias values(3,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(3,'Procesos de fabricación',3)
insert into Tbl_Materias values(3,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(3,'Seguridad e higiene industrial',3)
insert into Tbl_Materias values(3,'Metrología',3)
insert into Tbl_Materias values(3,'Control estadístico de la calidad',3)

insert into Tbl_Materias values(3,'Ingles 4',4)
insert into Tbl_Materias values(3,'Habilidades del pensamiento',4)
insert into Tbl_Materias values(3,'Lógica de programación',4)
insert into Tbl_Materias values(3,'Estadística industrial',4)
insert into Tbl_Materias values(3,'Gestión empresarial',4)
insert into Tbl_Materias values(3,'Análisis y enfoque de sistemas',4)
insert into Tbl_Materias values(3,'Estancia I',4)

insert into Tbl_Materias values(3,'Ingles 5',5)
insert into Tbl_Materias values(3,'Habilidades organizacionales',5)
insert into Tbl_Materias values(3,'Administración de la produccón',5)
insert into Tbl_Materias values(3,'Investigación de operciones',5)
insert into Tbl_Materias values(3,'Ingeniería de planta',5)
insert into Tbl_Materias values(3,'Ingeniería de metódos',5)
insert into Tbl_Materias values(3,'Fundamentos de ingeniería electrónica',5)


insert into Tbl_Materias values(3,'Ingles 6',6)
insert into Tbl_Materias values(3,'Ética profesional',6)
insert into Tbl_Materias values(3,'Planeación de la producción',6)
insert into Tbl_Materias values(3,'Análisis de deciciones',6)
insert into Tbl_Materias values(3,'Automatización y control',6)
insert into Tbl_Materias values(3,'Estudio del trabajo',6)
insert into Tbl_Materias values(3,'Diseño del experimentos',6)

insert into Tbl_Materias values(3,'Ingles 7',7)
insert into Tbl_Materias values(3,'Ingeniería económica',7)
insert into Tbl_Materias values(3,'Sistemas de manufactura',7)
insert into Tbl_Materias values(3,'Planeación estratégica',7)
insert into Tbl_Materias values(3,'Contabilidad industrial',7)
insert into Tbl_Materias values(3,'Investigación de operciones II',7)
insert into Tbl_Materias values(3,'Estancia II',7)

insert into Tbl_Materias values(3,'Ingles 8',8)
insert into Tbl_Materias values(3,'Administración de la calidad total',8)
insert into Tbl_Materias values(3,'Optimización y mejora de procesos',8)
insert into Tbl_Materias values(3,'Simulación de procesos productivos',8)
insert into Tbl_Materias values(3,'Manufactura virtual',8)
insert into Tbl_Materias values(3,'Logistica',8)
insert into Tbl_Materias values(3,'Análisis financiero',8)

insert into Tbl_Materias values(3,'Ingles 9',9)
insert into Tbl_Materias values(3,'Sistemas de gestión de calidad',9)
insert into Tbl_Materias values(3,'Administración de proyectos',9)
insert into Tbl_Materias values(3,'Desarrollo sustentable',9)
insert into Tbl_Materias values(3,'Sistemas integrados de manufactura',9)
insert into Tbl_Materias values(3,'Administración de recursos humanos',9)
insert into Tbl_Materias values(3,'Manufactura de clase mundial',9)

-----------------------------------------------------------------------------------

insert into Tbl_Materias values(4,'Ingles 1',1)
insert into Tbl_Materias values(4,'Valores del ser',1)
insert into Tbl_Materias values(4,'Herramientas ofimáticas',1)
insert into Tbl_Materias values(4,'Arquitecura de computadoras',1)
insert into Tbl_Materias values(4,'Introducción ala ingeniería en sistemas computacionales',1)
insert into Tbl_Materias values(4,'Álgebra lineal',1)
insert into Tbl_Materias values(4,'Fundamenos de Programacion',1)

insert into Tbl_Materias values(4,'Ingles 2',2)
insert into Tbl_Materias values(4,'Inteligencia emocional',2)
insert into Tbl_Materias values(4,'Auditoría y legislación informatica',2)
insert into Tbl_Materias values(4,'Mantenimiento a euqipo de computo',2)
insert into Tbl_Materias values(4,'Fundamentos físicos de ISC',2)
insert into Tbl_Materias values(4,'Cálculo diferencial e integral',2)
insert into Tbl_Materias values(4,'Análisis y diseño orientado a objetos',2)

insert into Tbl_Materias values(4,'Ingles 3',3)
insert into Tbl_Materias values(4,'Fundamentos físicos de redes',3)
insert into Tbl_Materias values(4,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(4,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(4,'Probabilidad y estadística',3)
insert into Tbl_Materias values(4,'Tópicos de eléctronica y comunicaciones',3)
insert into Tbl_Materias values(4,'Estructura de datos orientada a objetos',3)

insert into Tbl_Materias values(4,'Ingles 4',4)
insert into Tbl_Materias values(4,'Habilidades del pensamiento',4)
insert into Tbl_Materias values(4,'Redes enrutadas',4)
insert into Tbl_Materias values(4,'Diseño de base de datos',4)
insert into Tbl_Materias values(4,'Métodos numéricos',4)
insert into Tbl_Materias values(4,'Programacion orientada a objetos',4)
insert into Tbl_Materias values(4,'Estancia I',4)

insert into Tbl_Materias values(4,'Ingles 5',5)
insert into Tbl_Materias values(4,'Habilidades organizacionales',5)
insert into Tbl_Materias values(4,'Diseño de redes',5)
insert into Tbl_Materias values(4,'Administración de base de datos',5)
insert into Tbl_Materias values(4,'Matemáticas discretas',5)
insert into Tbl_Materias values(4,'Tópicos de programación orientada a objetos',5)
insert into Tbl_Materias values(4,'Principios de Ingeniería de software',5)

insert into Tbl_Materias values(4,'Ingles 6',6)
insert into Tbl_Materias values(4,'Ética profesional',6)
insert into Tbl_Materias values(4,'Administración de redes',6)
insert into Tbl_Materias values(4,'Base de datos distribuidas',6)
insert into Tbl_Materias values(4,'Lenguajes y autómatas',6)
insert into Tbl_Materias values(4,'Sistemas operativos multiusuario',6)
insert into Tbl_Materias values(4,'Métodos y herramientas para la ingeniería de software',6)

insert into Tbl_Materias values(4,'Ingles 7',7)
insert into Tbl_Materias values(4,'Formulación de proyectos de inversión',7)
insert into Tbl_Materias values(4,'Seguriadad en redes',7)
insert into Tbl_Materias values(4,'Programación de aplicaciones web',7)
insert into Tbl_Materias values(4,'Sistemas operativos distribuidos',7)
insert into Tbl_Materias values(4,'Desarrollo de aplicaciones móviles',7)
insert into Tbl_Materias values(1,'Estancia II',7)

insert into Tbl_Materias values(4,'Ingles 8',8)
insert into Tbl_Materias values(4,'Ingeniería económica',8)
insert into Tbl_Materias values(4,'Investigación de operaciones',8)
insert into Tbl_Materias values(4,'Arquitectura de software',8)
insert into Tbl_Materias values(4,'Sistemas integrales de información',8)
insert into Tbl_Materias values(4,'Centro de datos',8)
insert into Tbl_Materias values(4,'Inteligencia artificial',8)

insert into Tbl_Materias values(4,'Ingles 9',9)
insert into Tbl_Materias values(4,'Administración de proyecos de tecnología',9)
insert into Tbl_Materias values(4,'Visión empresarial',9)
insert into Tbl_Materias values(4,'Administración de Servidores',9)
insert into Tbl_Materias values(4,'Procesamiento Digital de Imágenes',9)
insert into Tbl_Materias values(4,'Laboratorio de visión por Computadora',9)
insert into Tbl_Materias values(4,'Aplicaciones de inteligencia Artificial',9)

--------------------------------------------------------------------------------------
insert into Tbl_Materias values(5,'Ingles 1',1)
insert into Tbl_Materias values(5,'Valores del ser',1)
insert into Tbl_Materias values(5,'Álgebra lineal',1)
insert into Tbl_Materias values(5,'Cálculo diferencial e integral',1)
insert into Tbl_Materias values(5,'Introducción ala ingeniería en manufactura',1)
insert into Tbl_Materias values(5,'Seguridad e higiene industrial',1)
insert into Tbl_Materias values(5,'Herramientas ofimáticas',1)

insert into Tbl_Materias values(5,'Ingles 2',2)
insert into Tbl_Materias values(5,'Inteligencia emocional',2)
insert into Tbl_Materias values(5,'Fundamentos de química',2)
insert into Tbl_Materias values(5,'Cálculo vectorial ',2)
insert into Tbl_Materias values(5,'Dibujo para ingeniería',2)
insert into Tbl_Materias values(5,'Probabilidad y estadística inferencial',2)
insert into Tbl_Materias values(5,'Metrología',2)

insert into Tbl_Materias values(5,'Ingles 3',3)
insert into Tbl_Materias values(5,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(5,'Ciencia e ingeniería de los materiales',3)
insert into Tbl_Materias values(5,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(5,'Termodinámica',3)
insert into Tbl_Materias values(5,'Ecuaciones diferenciales',3)
insert into Tbl_Materias values(5,'Lógica de programación númerica',3)

insert into Tbl_Materias values(5,'Ingles 4',4)
insert into Tbl_Materias values(5,'Habilidades del pensamiento',4)
insert into Tbl_Materias values(5,'Mecánica',4)
insert into Tbl_Materias values(5,'Pronósticos e inventarios',4)
insert into Tbl_Materias values(5,'Ingeniería en métodos',4)
insert into Tbl_Materias values(5,'Herramientas de mejora',4)
insert into Tbl_Materias values(5,'Estancia I',4)

insert into Tbl_Materias values(5,'Ingles 5',5)
insert into Tbl_Materias values(5,'Habilidades organizacionales',5)
insert into Tbl_Materias values(5,'Fundamentos de electricidad',5)
insert into Tbl_Materias values(5,'Planeación y control de la producción',5)
insert into Tbl_Materias values(5,'Procesos primarios de manufactura',5)
insert into Tbl_Materias values(5,'Gestión de la calidad',5)
insert into Tbl_Materias values(5,'Mecánica fluidos',5)

insert into Tbl_Materias values(5,'Ingles 6',6)
insert into Tbl_Materias values(5,'Ética profesional',6)
insert into Tbl_Materias values(5,'Fundamentos de electrónica',6)
insert into Tbl_Materias values(5,'Ingeniería de planta',6)
insert into Tbl_Materias values(5,'Procesos secundarios de manufactura',6)
insert into Tbl_Materias values(5,'Administración',6)
insert into Tbl_Materias values(5,'Gestión del mantenimiento',6)

insert into Tbl_Materias values(5,'Ingles 7',7)
insert into Tbl_Materias values(5,'Manufactura esbelta',7)
insert into Tbl_Materias values(5,'Sistemas neumáticos e hidráulicos',7)
insert into Tbl_Materias values(5,'Resistencia de materiales',7)
insert into Tbl_Materias values(5,'Metodologías de la investigación',7)
insert into Tbl_Materias values(5,'Núcleo regional I',7)
insert into Tbl_Materias values(5,'Estancia II',7)

insert into Tbl_Materias values(5,'Ingles 8',8)
insert into Tbl_Materias values(5,'Contabilidad y costos de la producción',8)
insert into Tbl_Materias values(5,'Automatización',8)
insert into Tbl_Materias values(5,'Metodologías de diseño',8)
insert into Tbl_Materias values(5,'Formulación y evaluación de proyectos',8)
insert into Tbl_Materias values(5,'Núcleo regional II',8)
insert into Tbl_Materias values(5,'Tecnologías de soporte y diseño en manufactura',8)

insert into Tbl_Materias values(5,'Ingles 9',9)
insert into Tbl_Materias values(5,'Diseño para manufactura y ensamble',9)
insert into Tbl_Materias values(5,'Mecatrónica',9)
insert into Tbl_Materias values(5,'Investigación de operaciones',9)
insert into Tbl_Materias values(5,'Administración de proyectos',9)
insert into Tbl_Materias values(5,'Núcleo regional III',9)
insert into Tbl_Materias values(5,'Simulación de procesos discretos',9)

-----------------------------------------------------------------------------------------

insert into Tbl_Materias values(6,'Ingles 1',1)
insert into Tbl_Materias values(6,'Valores del ser',1)
insert into Tbl_Materias values(6,'Topicos de Ingeniería en Electrónica y Telecomunicaciones',1)
insert into Tbl_Materias values(6,'Algebra Lineal',1)
insert into Tbl_Materias values(6,'Cálculo Diferencial e Integral',1)
insert into Tbl_Materias values(6,'Lógica de Programación',1)
insert into Tbl_Materias values(6,'Probabilidad y Estadistica',1)

insert into Tbl_Materias values(6,'Ingles 2',2)
insert into Tbl_Materias values(6,'Inteligencia emocional',2)
insert into Tbl_Materias values(6,'Mantenimiento Electrónico',2)
insert into Tbl_Materias values(6,'Fundamentod de Física',2)
insert into Tbl_Materias values(6,'Cálculo Vectorial',2)
insert into Tbl_Materias values(6,'Programación Estructurada',2)
insert into Tbl_Materias values(6,'Fundamentos de Química',2)

insert into Tbl_Materias values(6,'Ingles 3',3)
insert into Tbl_Materias values(6,'Desarrollo interpersonal',3)
insert into Tbl_Materias values(6,'Circuitos en Corriente Directa',3)
insert into Tbl_Materias values(6,'Circuitos Lógicos',3)
insert into Tbl_Materias values(6,'Ecuaciones Diferenciales',3)
insert into Tbl_Materias values(6,'Programación de Periféricos',3)
insert into Tbl_Materias values(6,'Electricidad y Magnetismo',3)

insert into Tbl_Materias values(6,'Ingles 4',4)
insert into Tbl_Materias values(6,'Habilidades del Pensamiento',4)
insert into Tbl_Materias values(6,'Circuitos en Corriente Alterna',4)
insert into Tbl_Materias values(6,'Sistemas Digitales',4)
insert into Tbl_Materias values(6,'Métodos Matemáticos',4)
insert into Tbl_Materias values(6,'Análisis de Dispositivos Electrónicos',4)
insert into Tbl_Materias values(6,'Estancia I',4)

insert into Tbl_Materias values(6,'Ingles 5',5)
insert into Tbl_Materias values(6,'Habilidades Organizacionales',5)
insert into Tbl_Materias values(6,'Teoría Electromagnética',5)
insert into Tbl_Materias values(6,'Diseño Digital',5)
insert into Tbl_Materias values(6,'Métodos Numéricos',5)
insert into Tbl_Materias values(6,'Sistemas de Amplificación',5)
insert into Tbl_Materias values(6,'Procesos Estocásticos',5)

insert into Tbl_Materias values(6,'Ingles 6',6)
insert into Tbl_Materias values(6,'Ética Profesional',6)
insert into Tbl_Materias values(6,'Microcontroladores',6)
insert into Tbl_Materias values(6,'Ingeniería de Control ',6)
insert into Tbl_Materias values(6,'Modulaciones Analógicas',6)
insert into Tbl_Materias values(6,'Filtros Analógos',6)
insert into Tbl_Materias values(6,'Redes de Comunicaciones',6)

insert into Tbl_Materias values(6,'Ingles 7',7)
insert into Tbl_Materias values(6,'Instrumentación Electrónica',7)
insert into Tbl_Materias values(6,'Gestión Administrativa',7)
insert into Tbl_Materias values(6,'Control Industrial',7)
insert into Tbl_Materias values(6,'Modulaciones Digitales',7)
insert into Tbl_Materias values(6,'PLC´s',7)
insert into Tbl_Materias values(6,'Estancia II',7)

insert into Tbl_Materias values(6,'Ingles 8',8)
insert into Tbl_Materias values(6,'Sistemas de Telefonía',8)
insert into Tbl_Materias values(6,'Antenas y Líneas de Transmisión',8)
insert into Tbl_Materias values(6,'Control Digital',8)
insert into Tbl_Materias values(6,'Procesamiento Digital de Señales',8)
insert into Tbl_Materias values(6,'Control de Calidad',8)
insert into Tbl_Materias values(6,'Comunicaciones Digitales',8)

insert into Tbl_Materias values(6,'Ingles 9',9)
insert into Tbl_Materias values(6,'Electrónica de Potencia',9)
insert into Tbl_Materias values(6,'Control de Máquinas Eléctricas',9)
insert into Tbl_Materias values(6,'Energías Alternas',9)
insert into Tbl_Materias values(6,'Automatización y Robótica',9)
insert into Tbl_Materias values(6,'Sistemas de Comunicaciones Inalámbricas',9)
insert into Tbl_Materias values(6,'Seminario de Proyectos',9)

------------------------------------------------------------------------------

insert into Tbl_Materias values(7,'Ingles 1',1)
insert into Tbl_Materias values(7,'Valores de Ser',1)
insert into Tbl_Materias values(7,'Introducción a las Matemáticas',1)
insert into Tbl_Materias values(7,'Introducción a las Administración',1)
insert into Tbl_Materias values(7,'Fundamentos de Contabilidad',1)
insert into Tbl_Materias values(7,'Herramientas de Ofimatica',1)
insert into Tbl_Materias values(7,'Expresión Oral y Escrita',1)

insert into Tbl_Materias values(7,'Ingles 2',2)
insert into Tbl_Materias values(7,'Inteligencia Emocional',2)
insert into Tbl_Materias values(7,'Matemáticas Aplicadas a la Administración',2)
insert into Tbl_Materias values(7,'Proceso Administrativo',2)
insert into Tbl_Materias values(7,'Contabilidad Financiera',2)
insert into Tbl_Materias values(7,'Aspectos Legales de la Organización',2)
insert into Tbl_Materias values(7,'Administración de Sistemas de Información',2)

insert into Tbl_Materias values(7,'Ingles 3',3)
insert into Tbl_Materias values(7,'Desarrollo Interpersonal',3)
insert into Tbl_Materias values(7,'Probabilidad y Estadística',3)
insert into Tbl_Materias values(7,'Planeación Estratégicas',3)
insert into Tbl_Materias values(7,'Contabilidad de Costos',3)
insert into Tbl_Materias values(7,'Microeconomía',3)
insert into Tbl_Materias values(7,'Metodología de la Investigación',3)

insert into Tbl_Materias values(7,'Ingles 4',4)
insert into Tbl_Materias values(7,'Habilidades del Pensamiento',4)
insert into Tbl_Materias values(7,'Macroeconomía',4)
insert into Tbl_Materias values(7,'Administración del Capital Humano',4)
insert into Tbl_Materias values(7,'Contabilidad Administrativa',4)
insert into Tbl_Materias values(7,'Fundamentos de Mercadotecnia',4)
insert into Tbl_Materias values(7,'Estancia I',4)

insert into Tbl_Materias values(7,'Ingles 5',5)
insert into Tbl_Materias values(7,'Habilidades Organizacionales',5)
insert into Tbl_Materias values(7,'Matemáticas Financieras',5)
insert into Tbl_Materias values(7,'Comportamiento y Desarrollo Organizacional',5)
insert into Tbl_Materias values(7,'Negociación Empresarial',5)
insert into Tbl_Materias values(7,'Investigación de Mercados',5)
insert into Tbl_Materias values(7,'Derecho Laboral',5)

insert into Tbl_Materias values(7,'Ingles 6',6)
insert into Tbl_Materias values(7,'Ética Profesional',6)
insert into Tbl_Materias values(7,'Métodos Cuantitativos y Pronósticos',6)
insert into Tbl_Materias values(7,'Administración de Sueldos y Salarios',6)
insert into Tbl_Materias values(7,'Análisis Financiero',6)
insert into Tbl_Materias values(7,'Mercadotecnia Estratégica',6)
insert into Tbl_Materias values(7,'Tecnologias de Información Aplicada a los Negocios',6)

insert into Tbl_Materias values(7,'Ingles 7',7)
insert into Tbl_Materias values(7,'Administración de la Produccion',7)
insert into Tbl_Materias values(7,'Comercio Internacional',7)
insert into Tbl_Materias values(7,'Auditoria Administrativa',7)
insert into Tbl_Materias values(7,'Administración Financiera',7)
insert into Tbl_Materias values(7,'Comercio Electrónico',7)
insert into Tbl_Materias values(7,'Estancia II',7)

insert into Tbl_Materias values(7,'Ingles 8',8)
insert into Tbl_Materias values(7,'Calidad',8)
insert into Tbl_Materias values(7,'Contribuciones Fiscales',8)
insert into Tbl_Materias values(7,'Seminario de Habilidades Gerenciales',8)
insert into Tbl_Materias values(7,'Formulación y Evaluación de Proyectos de Inversión',8)
insert into Tbl_Materias values(7,'Desarrollo Emprendedor',8)
insert into Tbl_Materias values(7,'Lógistica Administrativa',8)

insert into Tbl_Materias values(7,'Ingles 9',9)
insert into Tbl_Materias values(7,'Desarrollo Sustentable',9)
insert into Tbl_Materias values(7,'Consultoría',9)
insert into Tbl_Materias values(7,'Admón. de Empresas Textiles',9)
insert into Tbl_Materias values(7,'Administración de Ventas',9)
insert into Tbl_Materias values(7,'Admón.de Empresas de Servicios',9)
insert into Tbl_Materias values(7,'Oportunidades de Negocios',9)

--------------------------------------------------------------------------------------------

insert into Tbl_Materias values(8,'Ingles 1',1)
insert into Tbl_Materias values(8,'Valores del Ser',1)
insert into Tbl_Materias values(8,'Contabilidad',1)
insert into Tbl_Materias values(8,'Planeación y Organización',1)
insert into Tbl_Materias values(8,'Introducción a la Matemáticas',1)
insert into Tbl_Materias values(8,'Herramientas Ofimáticas',1)
insert into Tbl_Materias values(8,'Fundamentos de Negocios Internacionales',1)

insert into Tbl_Materias values(8,'Ingles 2',2)
insert into Tbl_Materias values(8,'Inteligencia Emocional',2)
insert into Tbl_Materias values(8,'Contabilidad de Costos',2)
insert into Tbl_Materias values(8,'Dirección y Control',2)
insert into Tbl_Materias values(8,'Cálculo Diferencial e Integral',2)
insert into Tbl_Materias values(8,'Economía',2)
insert into Tbl_Materias values(8,'Geografía Económica Internacional',2)

insert into Tbl_Materias values(8,'Ingles 3',3)
insert into Tbl_Materias values(8,'Desarrollo Interpersonal',3)
insert into Tbl_Materias values(8,'Matemáticas Financieras',3)
insert into Tbl_Materias values(8,'Administración del Capital Humano',3)
insert into Tbl_Materias values(8,'Metodología de la Investigación',3)
insert into Tbl_Materias values(8,'Legislación Aplicada a los Negocios',3)
insert into Tbl_Materias values(8,'Mercadotencia Internacional',3)

insert into Tbl_Materias values(8,'Ingles 4',4)
insert into Tbl_Materias values(8,'Habilidades del Pensamiento',4)
insert into Tbl_Materias values(8,'Finanzas Corporativas',4)
insert into Tbl_Materias values(8,'Administración de la Producción',4)
insert into Tbl_Materias values(8,'Probabilidad y Estadística',4)
insert into Tbl_Materias values(8,'Derecho Fiscal y Financiero',4)
insert into Tbl_Materias values(8,'Estancia I',4)

insert into Tbl_Materias values(8,'Ingles 5',5)
insert into Tbl_Materias values(8,'Habilidades Organizacionales',5)
insert into Tbl_Materias values(8,'Comercio Exterior',5)
insert into Tbl_Materias values(8,'Gestión de la Calidad',5)
insert into Tbl_Materias values(8,'Métodos Cuantitativos para la Toma de Decisiones',5)
insert into Tbl_Materias values(8,'Tratados y Organismos para los Negocios Internacionales',5)
insert into Tbl_Materias values(8,'Crédito y Cobranza Internacional',5)

insert into Tbl_Materias values(8,'Ingles 6',6)
insert into Tbl_Materias values(8,'Ética Profesional',6)
insert into Tbl_Materias values(8,'Economía Internacional',6)
insert into Tbl_Materias values(8,'Gestión de la Cadena de Suministro',6)
insert into Tbl_Materias values(8,'Investigación de Mercados Internacionales',6)
insert into Tbl_Materias values(8,'Derecho Aduanero',6)
insert into Tbl_Materias values(8,'Tecnologías de Información Aplicadas a los Negocios',6)

insert into Tbl_Materias values(8,'Ingles 7',7)
insert into Tbl_Materias values(8,'Oportunidades de Negocios',7)
insert into Tbl_Materias values(8,'Diseño de Pronósticos y Prospectiva',7)
insert into Tbl_Materias values(8,'Logística Internacional',7)
insert into Tbl_Materias values(8,'Plan de Negocios de Exportación',7)
insert into Tbl_Materias values(8,'Derecho Internacional',7)
insert into Tbl_Materias values(8,'Estancia II',7)

insert into Tbl_Materias values(8,'Ingles 8',8)
insert into Tbl_Materias values(8,'Multiculturalidad y Protocolo de Negocios',8)
insert into Tbl_Materias values(8,'Mercados Financieros y Bursátiles',8)
insert into Tbl_Materias values(8,'Desarrollo Emprendedor',8)
insert into Tbl_Materias values(8,'Ventas Internacionales',8)
insert into Tbl_Materias values(8,'Aduanas',8)
insert into Tbl_Materias values(8,'Topicos Selectos de Negocios Internacionales',8)

insert into Tbl_Materias values(8,'Ingles 9',9)
insert into Tbl_Materias values(8,'Evaluación de Proyectos',9)
insert into Tbl_Materias values(8,'Consultoría',9)
insert into Tbl_Materias values(8,'Seminario de Habilidades Gerenciales',9)
insert into Tbl_Materias values(8,'Compras Internacionales',9)
insert into Tbl_Materias values(8,'Negocios Electronicos',9)
insert into Tbl_Materias values(8,'Servicios',9)




select * from Tbl_Materias where fk_Carrera='1'
select * from Tbl_Carreras
---delete  from Tbl_Materias where fk_Carrera='1'
select * from Tbl_Carreras


---drop table Tbl_Materias
