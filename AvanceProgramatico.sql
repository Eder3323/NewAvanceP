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
fk_Rol int 
)
Go
Create table Tbl_Carreras(
pk_Carrera int primary key identity (1,1), 
Nombre varchar(70)

)
Go
Create table Tbl_Materias( 
fk_Carrera int FOREIGN KEY REFERENCES Tbl_Carreras(pk_Carrera),
Nombre varchar(50)
)
Go

Create table Tbl_Grupo
(
pk_Grupo varchar(50) not null

)
Go
Create table Tbl_Periodo(
pk_Periodo varchar(30) primary key,

   
)
Go
create table Tbl_Años(
pk_Años int primary key )
Go
create table Tbl_Roles(
Roles varchar(50) primary key
)
Go
create table Tbl_PlanAcademico(
pk_PlanAcademico int primary key identity (1,1),
Semana varchar(5),
Tema varchar(550),
Ht varchar(50),
Hp varchar(50),
Bibl varchar(50),
Actividad varchar(550),
Fecha varchar(50),
id_registro varchar(50)
)
go
create proc GuardarCatalogo
@Semana varchar(5),
@Tema varchar(550),
@Ht varchar(50),
@Hp varchar(50),
@Bibl varchar(50),
@Actividad varchar(550),
@Fecha varchar(50),
@id_registro varchar(50)
AS
begin
insert into Tbl_PlanAcademico(Semana,Tema,Ht,Hp,Bibl,Actividad,Fecha,id_registro) values(@Semana,@Tema,@Ht,@Hp,@Bibl,@Actividad,@Fecha,@id_registro)
end
--drop table Tbl_PlanAcademico
Go
select *from Tbl_PlanAcademico
select *from Tbl_Usuarios

Go



---tabla grupos
insert into Tbl_Grupo values('F1')
insert into Tbl_Grupo values('F2')
insert into Tbl_Grupo values('F21')
insert into Tbl_Grupo values('F12')
insert into Tbl_Grupo values('F31')
insert into Tbl_Grupo values('F41')
insert into Tbl_Grupo values('F42')
insert into Tbl_Grupo values('F51')
insert into Tbl_Grupo values('F52')
insert into Tbl_Grupo values('F61')
insert into Tbl_Grupo values('F62')
insert into Tbl_Grupo values('F71')
insert into Tbl_Grupo values('F72')
insert into Tbl_Grupo values('F81')
insert into Tbl_Grupo values('F82')
insert into Tbl_Grupo values('F91')
insert into Tbl_Grupo values('F92')
----tabla peridos
insert into Tbl_Periodo values('Enero-Abril ')
insert into Tbl_Periodo values('Mayo-Agosto')
insert into Tbl_Periodo values('Septiembre-Diciembre')

insert into Tbl_Usuarios values (111,'hola','edeer','zorr@gmail.com','de','f113','Alumno',1)
insert into Tbl_Usuarios values (222,'cordi','edeer','zorr@gmail.com','de','f113','Coordinador',2)

--correr despues de aki
insert into Tbl_Carreras values ('Ingenieria Civil')
insert into Tbl_Carreras values ('Ingenieria en Robotica')
insert into Tbl_Carreras values ('Ingenieria Industrial')
insert into Tbl_Carreras values ('Ingenieria en Sistemas Computacionales')
insert into Tbl_Carreras values ('Ingenieria en Tecnologias de manufactura')
insert into Tbl_Carreras values ('Ingenieria en Electronica y Telecomunicaciones')
insert into Tbl_Carreras values ('Licenciatura en Administracion y Gestion de PYMES')
insert into Tbl_Carreras values ('Licenciatura en Negocios Internacionales')

--/////////materias



insert into Tbl_Materias values(1,'Ingles 1')
insert into Tbl_Materias values(1,'Valores del ser')
insert into Tbl_Materias values(1,'Fundamentos de Física')
insert into Tbl_Materias values(1,'Materiales constructivos')
insert into Tbl_Materias values(1,'Dibujo Técnico')
insert into Tbl_Materias values(1,'Cálculo diferencial e integral ')
insert into Tbl_Materias values(1,'Álgebra lineal')

insert into Tbl_Materias values(1,'Ingles 2')
insert into Tbl_Materias values(1,'Inteligencia emocional')
insert into Tbl_Materias values(1,'Estática')
insert into Tbl_Materias values(1,'Procesos deconstrucción ligera')
insert into Tbl_Materias values(1,'Dibujo constructivo')
insert into Tbl_Materias values(1,'Cálculo vectorial ')
insert into Tbl_Materias values(1,'Topografía')

insert into Tbl_Materias values(1,'Ingles 3')
insert into Tbl_Materias values(1,'Desarrollo interpersonal')
insert into Tbl_Materias values(1,'Estructuras Isostáticas')
insert into Tbl_Materias values(1,'Procesos de construcción pesada')
insert into Tbl_Materias values(1,'Dibujo en tres dimensiones')
insert into Tbl_Materias values(1,'Ecuaciones diferenciales')
insert into Tbl_Materias values(1,'Topografía avanzada')


insert into Tbl_Materias values(1,'Ingles 4')
insert into Tbl_Materias values(1,'Habilidades del pensamiento')
insert into Tbl_Materias values(1,'Hidráulica')
insert into Tbl_Materias values(1,'Comportamiento de suelos')
insert into Tbl_Materias values(1,'Dinámica')
insert into Tbl_Materias values(1,'Probabilidad y estadística')
insert into Tbl_Materias values(1,'Estancia I')


insert into Tbl_Materias values(1,'Ingles 5')
insert into Tbl_Materias values(1,'Habilidades organizacionales')
insert into Tbl_Materias values(1,'Redes de conducción hidráulica')
insert into Tbl_Materias values(1,'Mecánica de suelos')
insert into Tbl_Materias values(1,'Mecánica de materiales')
insert into Tbl_Materias values(1,'Cuantificación y volumetría de obra')
insert into Tbl_Materias values(1,'Control de calidad obra')

insert into Tbl_Materias values(1,'Ingles 6')
insert into Tbl_Materias values(1,'Ética profesional')
insert into Tbl_Materias values(1,'Hidráulica de canales abiertos')
insert into Tbl_Materias values(1,'Geotecnia')
insert into Tbl_Materias values(1,'Comportamiento de elementos estructurales')
insert into Tbl_Materias values(1,'Costos y presupuestos de obra ')
insert into Tbl_Materias values(1,'Supervisión de obra')


insert into Tbl_Materias values(1,'Ingles 7')
insert into Tbl_Materias values(1,'Ingeniería de tránsito ')
insert into Tbl_Materias values(1,'Hidrología')
insert into Tbl_Materias values(1,'Diseño de pavimentos ')
insert into Tbl_Materias values(1,'Estructuras hiperestáticas')
insert into Tbl_Materias values(1,'Geomática')
insert into Tbl_Materias values(1,'Estancia II')


insert into Tbl_Materias values(1,'Ingles 8')
insert into Tbl_Materias values(1,'Sistemas de transporte')
insert into Tbl_Materias values(1,'Redes de agua potable y alcantarillado')
insert into Tbl_Materias values(1,'Cimentaciones superficiales')
insert into Tbl_Materias values(1,'Análisis estructural matricial')
insert into Tbl_Materias values(1,'Estructuras mampostería')
insert into Tbl_Materias values(1,'Administración proyectos')


insert into Tbl_Materias values(1,'Ingles 9')
insert into Tbl_Materias values(1,'Vías de comunicación')
insert into Tbl_Materias values(1,'Obras Hidráulicas')
insert into Tbl_Materias values(1,'Cimentaciones profundas')
insert into Tbl_Materias values(1,'Estructuras de concreto')
insert into Tbl_Materias values(1,'Estructuras de acero')
insert into Tbl_Materias values(1,'Planeación y de proyectos')


insert into Tbl_Materias values(2,'Ingles 1')
insert into Tbl_Materias values(2,'Valores del ser')
insert into Tbl_Materias values(2,'Cálculo diferencial e integral ')
insert into Tbl_Materias values(2,'Álgebra lineal')
insert into Tbl_Materias values(2,'Probabilidad y estadística')
insert into Tbl_Materias values(2,'Lógica de programación')
insert into Tbl_Materias values(2,'Introducción ala ingeniería robotica')




insert into Tbl_Materias values(2,'Ingles 2')
insert into Tbl_Materias values(2,'Inteligencia emocional')
insert into Tbl_Materias values(2,'Cálculo vectorial')
insert into Tbl_Materias values(2,'Diseño asitido por computadora')
insert into Tbl_Materias values(2,'Fundamentos de electricidad')
insert into Tbl_Materias values(2,'Programación estructurada')
insert into Tbl_Materias values(2,'Metrología')


insert into Tbl_Materias values(2,'Ingles 3')
insert into Tbl_Materias values(2,'Desarrollo interpersonal')
insert into Tbl_Materias values(2,'Ecuaciones diferenciales')
insert into Tbl_Materias values(2,'Estática')
insert into Tbl_Materias values(2,'Análisis de circuitos eléctricos')
insert into Tbl_Materias values(2,'Programación avanzada')
insert into Tbl_Materias values(2,'Ingeniería de materiales')



insert into Tbl_Materias values(2,'Ingles 4')
insert into Tbl_Materias values(2,'Matemáticas avanzadas')
insert into Tbl_Materias values(2,'Habilidades del pensamiento')
insert into Tbl_Materias values(2,'Diseño y selección de elementos mecánicos')
insert into Tbl_Materias values(2,'Electrónica análogica')
insert into Tbl_Materias values(2,'Dinámica')
insert into Tbl_Materias values(2,'Estancia I')


insert into Tbl_Materias values(2,'Ingles 5')
insert into Tbl_Materias values(2,'Habilidades organizacionales')
insert into Tbl_Materias values(2,'Señales y sistemas')
insert into Tbl_Materias values(2,'Sistemas hidráulicos y neumáticos')
insert into Tbl_Materias values(2,'Electrónica digital')
insert into Tbl_Materias values(2,'Mecanismos y máquinas')
insert into Tbl_Materias values(2,'Procesos de manufactura')



insert into Tbl_Materias values(2,'Ingles 6')
insert into Tbl_Materias values(2,'Ética profesional')
insert into Tbl_Materias values(2,'Diseño de sistemas de control')
insert into Tbl_Materias values(2,'Sistemas avanzados de manufactura')
insert into Tbl_Materias values(2,'Controladores lógicos programables')
insert into Tbl_Materias values(2,'Fundamentos de robótica')
insert into Tbl_Materias values(2,'Mantenimiento y seguridad industrial')


insert into Tbl_Materias values(2,'Ingles 7')
insert into Tbl_Materias values(2,'Ingeniería económica')
insert into Tbl_Materias values(2,'Control digital')
insert into Tbl_Materias values(2,'Mecánica de fluidos')
insert into Tbl_Materias values(2,'Microcontroladores')
insert into Tbl_Materias values(2,'Programación de trayectoria de robots')
insert into Tbl_Materias values(2,'Estancia II')


insert into Tbl_Materias values(2,'Ingles 8')
insert into Tbl_Materias values(2,'Ingeniería de proyectos')
insert into Tbl_Materias values(2,'Control de ma´quinas eléctricas')
insert into Tbl_Materias values(2,'Sistemas de visión')
insert into Tbl_Materias values(2,'Redes industriales')
insert into Tbl_Materias values(2,'Robótica')
insert into Tbl_Materias values(2,'Instrumenta-ción industrial')



insert into Tbl_Materias values(2,'Ingles 9')
insert into Tbl_Materias values(2,'Administración de la calidad')
insert into Tbl_Materias values(2,'Manufactura asistida por computadora')
insert into Tbl_Materias values(2,'Desarrollo de emprendedores')
insert into Tbl_Materias values(2,'Automatización industrial')
insert into Tbl_Materias values(2,'Tópicos de robótica')
insert into Tbl_Materias values(2,'Seminarios de investigación')



insert into Tbl_Materias values(3,'Ingles 1')
insert into Tbl_Materias values(3,'Valores del ser')
insert into Tbl_Materias values(3,'Álgebra lineal')
insert into Tbl_Materias values(3,'Cálculo diferencial e integral')
insert into Tbl_Materias values(3,'Introducción ala ingeniería industrial')
insert into Tbl_Materias values(3,'Fundamentos de química')
insert into Tbl_Materias values(3,'Fundamentos de Física')



insert into Tbl_Materias values(3,'Ingles 2')
insert into Tbl_Materias values(3,'Inteligencia emocional')
insert into Tbl_Materias values(3,'Probabilidad y estadística')
insert into Tbl_Materias values(3,'Termodinámica')
insert into Tbl_Materias values(3,'Electricdad y magnetismo')
insert into Tbl_Materias values(3,'Dibujo para ingeniería')
insert into Tbl_Materias values(3,'Tecnología de los materiales')


insert into Tbl_Materias values(3,'Ingles 3')
insert into Tbl_Materias values(3,'Desarrollo interpersonal')
insert into Tbl_Materias values(3,'Procesos de fabricación')
insert into Tbl_Materias values(3,'Ecuaciones diferenciales')
insert into Tbl_Materias values(3,'Seguridad e higiene industrial')
insert into Tbl_Materias values(3,'Metrología')
insert into Tbl_Materias values(3,'Control estadístico de la calidad')




insert into Tbl_Materias values(3,'Ingles 4')
insert into Tbl_Materias values(3,'Habilidades del pensamiento')
insert into Tbl_Materias values(3,'Lógica de programación')
insert into Tbl_Materias values(3,'Estadística industrial')
insert into Tbl_Materias values(3,'Gestión empresarial')
insert into Tbl_Materias values(3,'Análisis y enfoque de sistemas')
insert into Tbl_Materias values(3,'Estancia I')




insert into Tbl_Materias values(2,'Ingles 5')
insert into Tbl_Materias values(2,'Habilidades organizacionales')
insert into Tbl_Materias values(3,'Administración de la produccón')
insert into Tbl_Materias values(3,'Investigación de operciones')
insert into Tbl_Materias values(3,'Ingeniería de planta')
insert into Tbl_Materias values(3,'Ingeniería de metódos')
insert into Tbl_Materias values(3,'Fundamentos de ingeniería electrónica')


insert into Tbl_Materias values(3,'Ingles 6')
insert into Tbl_Materias values(3,'Ética profesional')
insert into Tbl_Materias values(3,'Planeación de la producción')
insert into Tbl_Materias values(3,'Análisis de deciciones')
insert into Tbl_Materias values(3,'Automatización y control')
insert into Tbl_Materias values(3,'Estudio del trabajo')
insert into Tbl_Materias values(3,'Diseño del experimentos')



insert into Tbl_Materias values(3,'Ingles 7')
insert into Tbl_Materias values(3,'Ingeniería económica')
insert into Tbl_Materias values(3,'Sistemas de manufactura')
insert into Tbl_Materias values(3,'Planeación estratégica')
insert into Tbl_Materias values(3,'Contabilidad industrial')
insert into Tbl_Materias values(3,'Investigación de operciones II')
insert into Tbl_Materias values(3,'Estancia II')




insert into Tbl_Materias values(3,'Ingles 8')
insert into Tbl_Materias values(3,'Administración de la calidad total')
insert into Tbl_Materias values(3,'Optimización y mejora de procesos')
insert into Tbl_Materias values(3,'Simulación de procesos productivos')
insert into Tbl_Materias values(3,'Manufactura virtual')
insert into Tbl_Materias values(3,'Logistica')
insert into Tbl_Materias values(3,'Análisis financiero')


insert into Tbl_Materias values(3,'Ingles 9')
insert into Tbl_Materias values(3,'Sistemas de gestión de calidad')
insert into Tbl_Materias values(3,'Administración de proyectos')
insert into Tbl_Materias values(3,'Desarrollo sustentable')
insert into Tbl_Materias values(3,'Sistemas integrados de manufactura')
insert into Tbl_Materias values(3,'Administración de recursos humanos')
insert into Tbl_Materias values(3,'Manufactura de clase mundial')


insert into Tbl_Materias values(4,'Ingles 1')
insert into Tbl_Materias values(4,'Valores del ser')
insert into Tbl_Materias values(4,'Herramientas ofimáticas')
insert into Tbl_Materias values(4,'Arquitecura de computadoras')
insert into Tbl_Materias values(4,'Introducción ala ingeniería en sistemas computacionales')
insert into Tbl_Materias values(4,'Álgebra lineal')
insert into Tbl_Materias values(4,'Fundamenos de Programacion')



insert into Tbl_Materias values(4,'Ingles 2')
insert into Tbl_Materias values(4,'Inteligencia emocional')
insert into Tbl_Materias values(4,'Auditoría y legislación informatica')
insert into Tbl_Materias values(4,'Mantenimiento a euqipo de computo')
insert into Tbl_Materias values(4,'Fundamentos físicos de ISC')
insert into Tbl_Materias values(4,'Cálculo diferencial e integral ')
insert into Tbl_Materias values(4,'Análisis y diseño orientado a objetos')



insert into Tbl_Materias values(4,'Ingles 3')
insert into Tbl_Materias values(4,'Fundamentos físicos de redes')
insert into Tbl_Materias values(4,'Desarrollo interpersonal')
insert into Tbl_Materias values(4,'Ecuaciones diferenciales')
insert into Tbl_Materias values(4,'Probabilidad y estadística')
insert into Tbl_Materias values(4,'Tópicos de eléctronica y comunicaciones')
insert into Tbl_Materias values(4,'Estructura de datos orientada a objetos')


insert into Tbl_Materias values(4,'Ingles 4')
insert into Tbl_Materias values(4,'Habilidades del pensamiento')
insert into Tbl_Materias values(4,'Redes enrutadas')
insert into Tbl_Materias values(4,'Diseño de base de datos')
insert into Tbl_Materias values(4,'Métodos numéricos')
insert into Tbl_Materias values(4,'Programacion orientada a objetos')
insert into Tbl_Materias values(4,'Estancia I')


insert into Tbl_Materias values(4,'Ingles 5')
insert into Tbl_Materias values(4,'Habilidades organizacionales')
insert into Tbl_Materias values(4,'Diseño de redes')
insert into Tbl_Materias values(4,'Administración de base de datos')
insert into Tbl_Materias values(4,'Matemáticas discretas')
insert into Tbl_Materias values(4,'Tópicos de programación orientada a objetos')
insert into Tbl_Materias values(4,'Principios de Ingeniería de software')



insert into Tbl_Materias values(4,'Ingles 6')
insert into Tbl_Materias values(4,'Ética profesional')
insert into Tbl_Materias values(4,'Administración de redes')
insert into Tbl_Materias values(4,'Base de datos distribuidas')
insert into Tbl_Materias values(4,'Lenguajes y autómatas')
insert into Tbl_Materias values(4,'Sistemas operativos multiusuario')
insert into Tbl_Materias values(4,'Métodos y herramientas para la ingeniería de software')


insert into Tbl_Materias values(4,'Ingles 7')
insert into Tbl_Materias values(4,'Formulación de proyectos de inversión')
insert into Tbl_Materias values(4,'Seguriadad en redes')
insert into Tbl_Materias values(4,'Programación de aplicaciones web')
insert into Tbl_Materias values(4,'Sistemas operativos distribuidos')
insert into Tbl_Materias values(4,'Desarrollo de aplicaciones móviles')
insert into Tbl_Materias values(1,'Estancia II')



insert into Tbl_Materias values(4,'Ingles 8')
insert into Tbl_Materias values(4,'Ingeniería ecoómica')
insert into Tbl_Materias values(4,'Investigación de operaciones')
insert into Tbl_Materias values(4,'Arquitectura de software')
insert into Tbl_Materias values(4,'Sistemas integrales de información')
insert into Tbl_Materias values(4,'Centro de datos')
insert into Tbl_Materias values(4,'Inteligencia artificial')


insert into Tbl_Materias values(4,'Ingles 9')
insert into Tbl_Materias values(4,'Administración de proyecos de tecnología')
insert into Tbl_Materias values(4,'Visión empresarial')
insert into Tbl_Materias values(4,'Administración de servidores')
insert into Tbl_Materias values(4,'Procesamiento digital de imágenes')
insert into Tbl_Materias values(4,'Laboratorio de visión por computadora')
insert into Tbl_Materias values(4,'Aplicaciones de inteligencia artificial')


insert into Tbl_Materias values(5,'Ingles 1')
insert into Tbl_Materias values(5,'Valores del ser')
insert into Tbl_Materias values(5,'Álgebra lineal')
insert into Tbl_Materias values(5,'Cálculo diferencial e integral ')
insert into Tbl_Materias values(5,'Introducción ala ingeniería en manufactura')
insert into Tbl_Materias values(5,'Seguridad e higiene industrial')
insert into Tbl_Materias values(5,'Herramientas ofimáticas')



insert into Tbl_Materias values(5,'Ingles 2')
insert into Tbl_Materias values(5,'Inteligencia emocional')
insert into Tbl_Materias values(5,'Fundamentos de química')
insert into Tbl_Materias values(5,'Cálculo vectorial ')
insert into Tbl_Materias values(5,'Dibujo para ingeniería')
insert into Tbl_Materias values(5,'Probabilidad y estadística inferencial')
insert into Tbl_Materias values(5,'Metrología')


insert into Tbl_Materias values(5,'Ingles 3')
insert into Tbl_Materias values(5,'Desarrollo interpersonal')
insert into Tbl_Materias values(5,'Ciencia e ingeniería de los materiales')
insert into Tbl_Materias values(5,'Ecuaciones diferenciales')
insert into Tbl_Materias values(5,'Termodinámica')
insert into Tbl_Materias values(5,'Ecuaciones diferenciales')
insert into Tbl_Materias values(5,'Lógica de programación númerica')


insert into Tbl_Materias values(5,'Ingles 4')
insert into Tbl_Materias values(5,'Habilidades del pensamiento')
insert into Tbl_Materias values(5,'Mecánica ')
insert into Tbl_Materias values(5,'Pronósticos e inventarios')
insert into Tbl_Materias values(5,'Ingeniería en métodos')
insert into Tbl_Materias values(5,'Herramientas de mejora')
insert into Tbl_Materias values(5,'Estancia I')


insert into Tbl_Materias values(5,'Ingles 5')
insert into Tbl_Materias values(5,'Habilidades organizacionales')
insert into Tbl_Materias values(5,'Fundamentos de electricidad')
insert into Tbl_Materias values(5,'Planeación y control de la producción')
insert into Tbl_Materias values(5,'Procesos primarios de manufactura')
insert into Tbl_Materias values(5,'Gestión de la calidad')
insert into Tbl_Materias values(5,'Mecánica fluidos')



insert into Tbl_Materias values(5,'Ingles 6')
insert into Tbl_Materias values(5,'Ética profesional')
insert into Tbl_Materias values(5,'Fundamentos de electrónica')
insert into Tbl_Materias values(5,'Ingeniería de planta')
insert into Tbl_Materias values(5,'Procesos secundarios de manufactura')
insert into Tbl_Materias values(5,'Administración')
insert into Tbl_Materias values(5,'Gestión del mantenimiento')

insert into Tbl_Materias values(5,'Ingles 7')
insert into Tbl_Materias values(5,'Manufactura esbelta')
insert into Tbl_Materias values(5,'Sistemas neumáticos e hidráulicos')
insert into Tbl_Materias values(5,'Resistencia de materiales')
insert into Tbl_Materias values(5,'Metodologías de la investigación')
insert into Tbl_Materias values(5,'Núcleo regional I')
insert into Tbl_Materias values(5,'Estancia II')

insert into Tbl_Materias values(5,'Ingles 8')
insert into Tbl_Materias values(5,'Contabilidad y costos de la producción')
insert into Tbl_Materias values(5,'Automatización')
insert into Tbl_Materias values(5,'Metodologías de diseño')
insert into Tbl_Materias values(5,'Formulación y evaluación de proyectos')
insert into Tbl_Materias values(5,'Núcleo regional II')
insert into Tbl_Materias values(5,'Tecnologías de soporte y diseño en manufactura')


insert into Tbl_Materias values(5,'Ingles 9')
insert into Tbl_Materias values(5,'Diseño para manufactura y ensamble')
insert into Tbl_Materias values(5,'Mecatrónica')
insert into Tbl_Materias values(5,'Investigación de operaciones')
insert into Tbl_Materias values(5,'Administración de proyectos')
insert into Tbl_Materias values(5,'Núcleo regional III')
insert into Tbl_Materias values(5,'Simulación de procesos discretos')


insert into Tbl_Materias values(6,'Ingles 1')
insert into Tbl_Materias values(6,'Valores del ser')
insert into Tbl_Materias values(6,'Topicos de Ingeniería en Electrónica y Telecomunicaciones')
insert into Tbl_Materias values(6,'Algebra Lineal')
insert into Tbl_Materias values(6,'Cálculo Diferencial e Integral')
insert into Tbl_Materias values(6,'Lógica de Programación')
insert into Tbl_Materias values(6,'Probabilidad y Estadistica')

insert into Tbl_Materias values(6,'Ingles 2')
insert into Tbl_Materias values(6,'Inteligencia emocional')
insert into Tbl_Materias values(6,'Mantenimiento Electrónico')
insert into Tbl_Materias values(6,'Fundamentod de Física')
insert into Tbl_Materias values(6,'Cálculo Vectorial')
insert into Tbl_Materias values(6,'Programación Estructurada')
insert into Tbl_Materias values(6,'Fundamentos de Química')

insert into Tbl_Materias values(6,'Ingles 3')
insert into Tbl_Materias values(6,'Desarrollo interpersonal')
insert into Tbl_Materias values(6,'Circuitos en Corriente Directa')
insert into Tbl_Materias values(6,'Circuitos Lógicos')
insert into Tbl_Materias values(6,'Ecuaciones Diferenciales')
insert into Tbl_Materias values(6,'Programación de Periféricos')
insert into Tbl_Materias values(6,'Electricidad y Magnetismo')

insert into Tbl_Materias values(6,'Ingles 4')
insert into Tbl_Materias values(6,'Habilidades del Pensamiento')
insert into Tbl_Materias values(6,'Circuitos en Corriente Alterna')
insert into Tbl_Materias values(6,'Sistemas Digitales')
insert into Tbl_Materias values(6,'Métodos Matemáticos')
insert into Tbl_Materias values(6,'Análisis de Dispositivos Electrónicos')
insert into Tbl_Materias values(6,'Estancia I')

insert into Tbl_Materias values(6,'Ingles 5')
insert into Tbl_Materias values(6,'Habilidades Organizacionales')
insert into Tbl_Materias values(6,'Teoría Electromagnética')
insert into Tbl_Materias values(6,'Diseño Digital')
insert into Tbl_Materias values(6,'Métodos Numéricos')
insert into Tbl_Materias values(6,'Sistemas de Amplificación')
insert into Tbl_Materias values(6,'Procesos Estocásticos')

insert into Tbl_Materias values(6,'Ingles 6')
insert into Tbl_Materias values(6,'Ética Profesional')
insert into Tbl_Materias values(6,'Microcontroladores')
insert into Tbl_Materias values(6,'Ingeniería de Control ')
insert into Tbl_Materias values(6,'Modulaciones Analógicas')
insert into Tbl_Materias values(6,'Filtros Analógos')
insert into Tbl_Materias values(6,'Redes de Comunicaciones')

insert into Tbl_Materias values(6,'Ingles 7')
insert into Tbl_Materias values(6,'Instrumentación Electrónica')
insert into Tbl_Materias values(6,'Gestión Administrativa')
insert into Tbl_Materias values(6,'Control Industrial')
insert into Tbl_Materias values(6,'Modulaciones Digitales')
insert into Tbl_Materias values(6,'PLC´s')
insert into Tbl_Materias values(6,'Estancia II')

insert into Tbl_Materias values(6,'Ingles 8')
insert into Tbl_Materias values(6,'Sistemas de Telefonía')
insert into Tbl_Materias values(6,'Antenas y Líneas de Transmisión')
insert into Tbl_Materias values(6,'Control Digital')
insert into Tbl_Materias values(6,'Procesamiento Digital de Señales')
insert into Tbl_Materias values(6,'Control de Calidad')
insert into Tbl_Materias values(6,'Comunicaciones Digitales')

insert into Tbl_Materias values(6,'Ingles 9')
insert into Tbl_Materias values(6,'Electrónica de Potencia')
insert into Tbl_Materias values(6,'Control de Máquinas Eléctricas')
insert into Tbl_Materias values(6,'Energías Alternas')
insert into Tbl_Materias values(6,'Automatización y Robótica')
insert into Tbl_Materias values(6,'Sistemas de Comunicaciones Inalámbricas')
insert into Tbl_Materias values(6,'Seminario de Proyectos')


insert into Tbl_Materias values(7,'Ingles 1')
insert into Tbl_Materias values(7,'Valores de Ser')
insert into Tbl_Materias values(7,'Introducción a las Matemáticas')
insert into Tbl_Materias values(7,'Introducción a las Administración')
insert into Tbl_Materias values(7,'Fundamentos de Contabilidad')
insert into Tbl_Materias values(7,'Herramientas de Ofimatica')
insert into Tbl_Materias values(7,'Expresión Oral y Escrita')

insert into Tbl_Materias values(7,'Ingles 2')
insert into Tbl_Materias values(7,'Inteligencia Emocional')
insert into Tbl_Materias values(7,'Matemáticas Aplicadas a la Administración ')
insert into Tbl_Materias values(7,'Proceso Administrativo')
insert into Tbl_Materias values(7,'Contabilidad Financiera')
insert into Tbl_Materias values(7,'Aspectos Legales de la Organización')
insert into Tbl_Materias values(7,'Administración de Sistemas de Información')

insert into Tbl_Materias values(7,'Ingles 3')
insert into Tbl_Materias values(7,'Desarrollo Interpersonal')
insert into Tbl_Materias values(7,'Probabilidad y Estadística')
insert into Tbl_Materias values(7,'Planeación Estratégicas')
insert into Tbl_Materias values(7,'Contabilidad de Costos')
insert into Tbl_Materias values(7,'Microeconomía')
insert into Tbl_Materias values(7,'Metodología de la Investigación ')


insert into Tbl_Materias values(7,'Ingles 4')
insert into Tbl_Materias values(7,'Habilidades del Pensamiento')
insert into Tbl_Materias values(7,'Macroeconomía')
insert into Tbl_Materias values(7,'Administración del Capital Humano')
insert into Tbl_Materias values(7,'Contabilidad Administrativa')
insert into Tbl_Materias values(7,'Fundamentos de Mercadotecnia')
insert into Tbl_Materias values(7,'Estancia I')


insert into Tbl_Materias values(7,'Ingles 5')
insert into Tbl_Materias values(7,'Habilidades Organizacionales')
insert into Tbl_Materias values(7,'Matemáticas Financieras')
insert into Tbl_Materias values(7,'Comportamiento y Desarrollo Organizacional')
insert into Tbl_Materias values(7,'Negociación Empresarial')
insert into Tbl_Materias values(7,'Investigación de Mercados')
insert into Tbl_Materias values(7,'Derecho Laboral')


insert into Tbl_Materias values(7,'Ingles 6')
insert into Tbl_Materias values(7,'Ética Profesional')
insert into Tbl_Materias values(7,'Métodos Cuantitativos y Pronósticos')
insert into Tbl_Materias values(7,'Administración de Sueldos y Salarios')
insert into Tbl_Materias values(7,'Análisis Financiero')
insert into Tbl_Materias values(7,'Mercadotecnia Estratégica')
insert into Tbl_Materias values(7,'Tecnologias de Información Aplicada a los Negocios')


insert into Tbl_Materias values(7,'Ingles 7')
insert into Tbl_Materias values(7,'Administración de la Produccion')
insert into Tbl_Materias values(7,'Comercio Internacional')
insert into Tbl_Materias values(7,'Auditoria Administrativa')
insert into Tbl_Materias values(7,'Administración Financiera')
insert into Tbl_Materias values(7,'Comercio Electrónico')
insert into Tbl_Materias values(7,'Estancia II')

insert into Tbl_Materias values(7,'Ingles 8')
insert into Tbl_Materias values(7,'Calidad')
insert into Tbl_Materias values(7,'Contribuciones Fiscales')
insert into Tbl_Materias values(7,'Seminario de Habilidades Gerenciales')
insert into Tbl_Materias values(7,'Formulación y Evaluación de Proyectos de Inversión')
insert into Tbl_Materias values(7,'Desarrollo Emprendedor')
insert into Tbl_Materias values(7,'Lógistica Administrativa')





insert into Tbl_Materias values(7,'Ingles 9')
insert into Tbl_Materias values(7,'Desarrollo Sustentable')
insert into Tbl_Materias values(7,'Consultoría')
insert into Tbl_Materias values(7,'Admón. de Empresas Textiles')
insert into Tbl_Materias values(7,'Administración de Ventas')
insert into Tbl_Materias values(7,'Admón.de Empresas de Servicios  ')
insert into Tbl_Materias values(7,'Oportunidades de Negocios')


insert into Tbl_Materias values(8,'Ingles 1')
insert into Tbl_Materias values(8,'valores del Ser')
insert into Tbl_Materias values(8,'Contabilidad')
insert into Tbl_Materias values(8,'Planeación y Organización')
insert into Tbl_Materias values(8,'Introducción a la Matemáticas')
insert into Tbl_Materias values(8,'Herramientas Ofimáticas')
insert into Tbl_Materias values(8,'Fundamentos de Negocios Internacionales')

insert into Tbl_Materias values(8,'Ingles 2')
insert into Tbl_Materias values(8,'Inteligencia Emocional')
insert into Tbl_Materias values(8,'Contabilidad de Costos')
insert into Tbl_Materias values(8,'Dirección y Control')
insert into Tbl_Materias values(8,'Cálculo Diferencial e Integral')
insert into Tbl_Materias values(8,'Economía')
insert into Tbl_Materias values(8,'Geografía Económica Internacional')

insert into Tbl_Materias values(8,'Ingles 3')
insert into Tbl_Materias values(8,'Desarrollo Interpersonal')
insert into Tbl_Materias values(8,'Matemáticas Financieras')
insert into Tbl_Materias values(8,'Administración del Capital Humano')
insert into Tbl_Materias values(8,'Metodología de la Investigación')
insert into Tbl_Materias values(8,'Legislación Aplicada a los Negocios')
insert into Tbl_Materias values(8,'Mercadotencia Internacional')

insert into Tbl_Materias values(8,'Ingles 4')
insert into Tbl_Materias values(8,'Habilidades del Pensamiento')
insert into Tbl_Materias values(8,'Finanzas Corporativas')
insert into Tbl_Materias values(8,'Administración de la Producción')
insert into Tbl_Materias values(8,'Probabilidad y Estadística')
insert into Tbl_Materias values(8,'Derecho Fiscal y Financiero')
insert into Tbl_Materias values(8,'Estancia I')

insert into Tbl_Materias values(8,'Ingles 5')
insert into Tbl_Materias values(8,'Habilidades Organizacionales')
insert into Tbl_Materias values(8,'Comercio Exterior')
insert into Tbl_Materias values(8,'Gestión de la Calidad')
insert into Tbl_Materias values(8,'Métodos Cuantitativos para la Toma de Decisiones')
insert into Tbl_Materias values(8,'Tratados y Organismos para los Negocios Internacionales')
insert into Tbl_Materias values(8,'Crédito y Cobranza Internacional')

insert into Tbl_Materias values(8,'Ingles 6')
insert into Tbl_Materias values(8,'Ética Profesional')
insert into Tbl_Materias values(8,'Economía Internacional')
insert into Tbl_Materias values(8,'Gestión de la Cadena de Suministro')
insert into Tbl_Materias values(8,'Investigación de Mercados Internacionales')
insert into Tbl_Materias values(8,'Derecho Aduanero')
insert into Tbl_Materias values(8,'Tecnologías de Información Aplicadas a los Negocios')

insert into Tbl_Materias values(8,'Ingles 7')
insert into Tbl_Materias values(8,'Oportunidades de Negocios')
insert into Tbl_Materias values(8,'Diseño de Pronósticos y Prospectiva')
insert into Tbl_Materias values(8,'Logística Internacional')
insert into Tbl_Materias values(8,'Plan de Negocios de Exportación')
insert into Tbl_Materias values(8,'Derecho Internacional')
insert into Tbl_Materias values(8,'Estancia II')

insert into Tbl_Materias values(8,'Ingles 8')
insert into Tbl_Materias values(8,'Multiculturalidad y Protocolo de Negocios')
insert into Tbl_Materias values(8,'Mercados Financieros y Bursátiles')
insert into Tbl_Materias values(8,'Desarrollo Emprendedor')
insert into Tbl_Materias values(8,'Ventas Internacionales')
insert into Tbl_Materias values(8,'Aduanas')
insert into Tbl_Materias values(8,'Topicos Selectos de Negocios Internacionales')

insert into Tbl_Materias values(8,'Ingles 9')
insert into Tbl_Materias values(8,'Evaluación de Proyectos')
insert into Tbl_Materias values(8,'Consultoría ')
insert into Tbl_Materias values(8,'Seminario de Habilidades Gerenciales')
insert into Tbl_Materias values(8,'Compras Internacionales')
insert into Tbl_Materias values(8,'Negocios Electronicos')
insert into Tbl_Materias values(8,'Servicios')




select * from Tbl_Materias where fk_Carrera='1'
select * from Tbl_Carreras
---delete  from Tbl_Materias where fk_Carrera='1'
select * from Tbl_Carreras


---drop table Tbl_Materias
