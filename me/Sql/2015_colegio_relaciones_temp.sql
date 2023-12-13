






CREATE DATABASE 2015_colegio_relaciones CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE 2015_colegio_relaciones;


/*CORRECCION*/




/*SI NO ES ALTER-TABLE ENTONCES CREA LAS TABLAS INICIALMENTE EN FORMA NORMAL*/


/*CREATE TABLE alumno alumno*/
create table 2015_colegio_relaciones.alumno (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,nombre varchar(25) not null default ' ' comment 'NOMBRE=nombre|WEBTITULO=Nombre|WEBCOMBO=true'
	,apellido varchar(25) not null default ' ' comment 'NOMBRE=apellido|WEBTITULO=Apellido'
	,fecha_nacimiento date not null default '1900-01-01' comment 'NOMBRE=fecha_nacimiento|WEBTITULO=Fecha Nacimiento'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE alumno_materia alumno_materia*/
create table 2015_colegio_relaciones.alumno_materia (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,id_alumno bigint not null default 1 comment 'NOMBRE=id_alumno|WEBTITULO= Alumno'
	,id_materia bigint not null default 1 comment 'NOMBRE=id_materia|WEBTITULO= Materia'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE docente docente*/
create table 2015_colegio_relaciones.docente (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,nombre varchar(25) not null default ' ' comment 'NOMBRE=nombre|WEBTITULO=Nombre|WEBCOMBO=true'
	,apellido varchar(25) not null default ' ' comment 'NOMBRE=apellido|WEBTITULO=Apellido'
	,fecha_nacimiento date not null default '1900-01-01' comment 'NOMBRE=fecha_nacimiento|WEBTITULO=Fecha Nacimiento'
	,anios_experiencia int not null default 0 comment 'NOMBRE=anios_experiencia|WEBTITULO=Anios Experiencia'
	,nota_evaluacion decimal(18,2) not null default 0.0 comment 'NOMBRE=nota_evaluacion|WEBTITULO=Nota Evaluacion'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE docente_materia docente_materia*/
create table 2015_colegio_relaciones.docente_materia (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,id_docente bigint not null default 1 comment 'NOMBRE=id_docente|WEBTITULO= Docente'
	,id_materia bigint not null default 1 comment 'NOMBRE=id_materia|WEBTITULO= Materia'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE materia materia*/
create table 2015_colegio_relaciones.materia (
	id bigint not null  auto_increment comment 'NOMBRE=id|IDHIDDEN=true|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,codigo varchar(15) not null default ' ' comment 'NOMBRE=codigo|WEBTITULO=Codigo|WEBCOMBO=true'
	,nombre varchar(25) not null default ' ' comment 'NOMBRE=nombre|WEBTITULO=Nombre'
	,activo bool not null default 0 comment 'NOMBRE=activo|WEBTITULO=Activo'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE contrato contrato*/
create table 2015_colegio_relaciones.contrato (
	id bigint not null  comment 'NOMBRE=id|WEBTITULO='
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,anio int not null default 0 comment 'NOMBRE=anio|WEBTITULO=Anio'
	,valor decimal(18,2) not null default 0.0 comment 'NOMBRE=valor|WEBTITULO=Valor'
	,fecha date not null default '1900-01-01' comment 'NOMBRE=fecha|WEBTITULO=Fecha'
	,firmado bool not null default 0 comment 'NOMBRE=firmado|WEBTITULO=Firmado'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE pension pension*/
create table 2015_colegio_relaciones.pension (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,id_alumno bigint not null default 1 comment 'NOMBRE=id_alumno|WEBTITULO= Alumno'
	,anio int not null default 0 comment 'NOMBRE=anio|WEBTITULO=Anio'
	,mes smallint not null default 0 comment 'NOMBRE=mes|WEBTITULO=Mes'
	,valor decimal(18,2) not null default 0.0 comment 'NOMBRE=valor|WEBTITULO=Valor'
	,cobrado bool not null default 0 comment 'NOMBRE=cobrado|WEBTITULO=Cobrado'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE sueldo sueldo*/
create table 2015_colegio_relaciones.sueldo (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,id_docente bigint not null default 1 comment 'NOMBRE=id_docente|WEBTITULO= Docente'
	,anio int not null default 0 comment 'NOMBRE=anio|WEBTITULO=Anio'
	,mes smallint not null default 0 comment 'NOMBRE=mes|WEBTITULO=Mes'
	,valor decimal(18,2) not null default 0.0 comment 'NOMBRE=valor|WEBTITULO=Valor'
	,cobrado bool not null default 0 comment 'NOMBRE=cobrado|WEBTITULO=Cobrado'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE matricula matricula*/
create table 2015_colegio_relaciones.matricula (
	id bigint not null  comment 'NOMBRE=id|WEBTITULO='
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,anio int not null default 0 comment 'NOMBRE=anio|WEBTITULO=Anio'
	,costo decimal(18,2) not null default 0.0 comment 'NOMBRE=costo|WEBTITULO=Costo'
	,fecha date not null default '1900-01-01' comment 'NOMBRE=fecha|WEBTITULO=Fecha'
	,pagado bool not null default 0 comment 'NOMBRE=pagado|WEBTITULO=Pagado'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;

/*CREATE TABLE nota nota*/
create table 2015_colegio_relaciones.nota (
	id bigint not null  auto_increment comment 'NOMBRE=id|WEBTITULO=Id'
	,created_at date not null default '1900-01-01' comment 'NOMBRE=created_at|WEBTITULO=Created At'
	,updated_at longblob comment 'NOMBRE=updated_at|WEBTITULO=Updated At'
	,id_alumno bigint not null default 1 comment 'NOMBRE=id_alumno|WEBTITULO= Alumno'
	,id_materia bigint not null default 1 comment 'NOMBRE=id_materia|WEBTITULO= Materia'
	,id_docente bigint not null default 1 comment 'NOMBRE=id_docente|WEBTITULO= Docente'
	,nota_prueba decimal(18,2) not null default 0.0 comment 'NOMBRE=nota_prueba|WEBTITULO=Nota Prueba'
	,nota_trabajo decimal(18,2) not null default 0.0 comment 'NOMBRE=nota_trabajo|WEBTITULO=Nota Trabajo'
	,nota_examen decimal(18,2) not null default 0.0 comment 'NOMBRE=nota_examen|WEBTITULO=Nota Examen'
	,nota_final decimal(18,2) not null default 0.0 comment 'NOMBRE=nota_final|WEBTITULO=Nota Final'
	,primary key (id)
)DEFAULT CHARSET=utf8 ENGINE=InnoDB;



/*FALTA IMPLEMENTAR GetDropIndicesTablasClases()*/



create index FK_Idalumno on 2015_colegio_relaciones.alumno_materia (
	id_alumno
);

create index FK_Idmateria on 2015_colegio_relaciones.alumno_materia (
	id_materia
);

create index FK_Iddocente on 2015_colegio_relaciones.docente_materia (
	id_docente
);

create index FK_Idmateria on 2015_colegio_relaciones.docente_materia (
	id_materia
);

create index FK_Iddocenteid on 2015_colegio_relaciones.contrato (
	id
);

create index FK_Idalumno on 2015_colegio_relaciones.pension (
	id_alumno
);

create index FK_Iddocente on 2015_colegio_relaciones.sueldo (
	id_docente
);

create index FK_Idalumnoid on 2015_colegio_relaciones.matricula (
	id
);

create index FK_Idalumno on 2015_colegio_relaciones.nota (
	id_alumno
);

create index FK_Iddocente on 2015_colegio_relaciones.nota (
	id_docente
);

create index FK_Idmateria on 2015_colegio_relaciones.nota (
	id_materia
);



alter table 2015_colegio_relaciones.alumno_materia add constraint FK_alumno_materia_alumno foreign key (id_alumno)
references 2015_colegio_relaciones.alumno (id);


alter table 2015_colegio_relaciones.alumno_materia add constraint FK_alumno_materia_materia foreign key (id_materia)
references 2015_colegio_relaciones.materia (id);


alter table 2015_colegio_relaciones.docente_materia add constraint FK_docente_materia_docente foreign key (id_docente)
references 2015_colegio_relaciones.docente (id);


alter table 2015_colegio_relaciones.docente_materia add constraint FK_docente_materia_materia foreign key (id_materia)
references 2015_colegio_relaciones.materia (id);


alter table 2015_colegio_relaciones.contrato add constraint FK_contrato_docenteid foreign key (id)
references 2015_colegio_relaciones.docente (id);


alter table 2015_colegio_relaciones.pension add constraint FK_pension_alumno foreign key (id_alumno)
references 2015_colegio_relaciones.alumno (id);


alter table 2015_colegio_relaciones.sueldo add constraint FK_sueldo_docente foreign key (id_docente)
references 2015_colegio_relaciones.docente (id);


alter table 2015_colegio_relaciones.matricula add constraint FK_matricula_alumnoid foreign key (id)
references 2015_colegio_relaciones.alumno (id);


alter table 2015_colegio_relaciones.nota add constraint FK_nota_alumno foreign key (id_alumno)
references 2015_colegio_relaciones.alumno (id);


alter table 2015_colegio_relaciones.nota add constraint FK_nota_materia foreign key (id_materia)
references 2015_colegio_relaciones.materia (id);


alter table 2015_colegio_relaciones.nota add constraint FK_nota_docente foreign key (id_docente)
references 2015_colegio_relaciones.docente (id);

/*FALTA IMPLEMENTAR GetDropForeignKeysTablasClases()*/





