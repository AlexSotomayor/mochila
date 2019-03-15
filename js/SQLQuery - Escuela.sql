create database escuela
use escuela
-- tabla carrera
create table Carrera(
clave_c int,
nom_c varchar(50),
durac_c float,
constraint pk_cc primary key(clave_c)
)
insert into carrera values(1,'Derecho',3)
insert into carrera values(2,'Ingenieria en sistemas',4)
insert into carrera values(3,'Construccion civil',8)
insert into carrera values(4,'Parvulo',7)
insert into carrera values(5.'Auditoria',4)
select clave_c, nom_c from carrera

-- tabla materia
create table materia(
clave_m int,
nom_m varchar(50),
cred_m float,
constraint pk_c primary key(clave_m)
)
insert into materia values(1,'Matemáticas',25)
insert into materia values(2,'Español',15)
insert into materia values(3,'Ingles',16)
insert into materia values(4,'',19)

select clave_m,nom_m,cred_m from materia

--tabla profesor
create table profesor(
clave_p int,
nom_p varchar(150),
dir_p varchar(200),
tel_p bigint,
hor_p datetime,
constraint pk_cp primary key(clave_p)
)
insert into profesor values(1,'Max','Calle falsa 1234',789985,'7:00')
insert into profesor values(2,'Martita','Calle hola 324',745488,'8:30')
insert into profesor values(3,'Francionado','Calle dimak',484884,'7:00')

select nom_p,dir_p,tel_p from profesor

--tabla alumno (con llave foranea
create table Alumno(
mat_alu int,
nom_alu varchar(150),
edad_alu int,
sem_alum int,
gen_alu varchar(10),
clave_c1 int,
constraint pk_calu primary key(mat_alu),
constraint fk_fc1 foreign key(clave_c1) references carrera (clave_c)
)
insert into alumno values (1,'Ana',18,6,'mujer',1)
insert into alumno values (2,'Alan',20,4,'hombre',2)
insert into alumno values (3,'Martita',20,7,'mujer',3)

select * from alumno
delete from alumno
where nom_alu like'a%'

--alumno-profesor
create table alu_pro(
mat_alu1 int,
clave_p1 int,
constraint fk_falu1 foreign key(mat_alu1)references alumno(mat_alu),
constraint fk_fp1 foreign key(clave_p1)references profesor(clave_p)
)
insert into alu_pro values(1,2)

--materia-alumno
create table mat_alu(
clave_m1 int,
mat_alu2 int,
constraint fk_fm1 foreign key(clave_m1)references materia (clave_m),
constraint fk_alu2 foreign key(mat_alu2)references alumno(mat_alu)
)
insert into mat_alu values(1,1)

--materia-profesor
create table mat_pro(
clave_m2 int,
clave_p2 int,
constraint fk_fm2 foreign key(clave_m2)references materia(clave_m),
constraint fk_fp2 foreign key(clave_p2)references profesor(clave_p)
)
insert into mat_pro values(2,2)




	
