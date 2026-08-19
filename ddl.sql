CREATE DATABASE Hospital_pablo;

use Hospital_pablo;

CREATE table empleados(
    id_empleados int primary key,
	cedula int,
	nombre varchar(100),
	apellido varchar(50),
	cargo varchar(50)
);

CREATE table empleados_vacaciones(
	id_empleados_vacaciones int primary key,
	id_empleados INT,
	id_vacaciones INT,
    Foreign Key (id_empleados) REFERENCES (empleados)
);

CREATE Table medicos(
    id_medico int PRIMARY KEY,
    cedula_medico VARCHAR(50),
    nombre_medico VARCHAR(100),
    apellido_medico VARCHAR(50),
    especialidad_medico VARCHAR(100),
    tipo_medico VARCHAR(100),
    dia_semana int,
    hora_ini_consulta int,
    hora_fin_consulta int
);

create table sustituciones(
    id_sustituto int,
    id_medico INT,
    fecha_ini int,
    fecha_fin int,
    Foreign Key (id_medico) REFERENCES (medicos)
);

create table pacientes(
    id_paciente int PRIMARY KEY,
    cedula_paciente int,
    nombre_paciente VARCHAR(50),
    apellido_paciente VARCHAR(100),
    fecha_naci VARCHAR(100),
    telefono VARCHAR(100),
    id_medico int,
    Foreign Key (id_medico) REFERENCES (medicos)
);

CREATE TABLE vacaiones_medicos(
    id_medicos_vacaciones int primary key,
	id_medicos INT,
	id_vacaciones INT,
    Foreign Key (id_medico) REFERENCES (medicos)
);







