CREATE DATABASE Hospital_pablo;

USE Hospital_pablo;

CREATE TABLE empleados(
    id_empleados INT PRIMARY KEY,
    cedula INT,
    nombre VARCHAR(100),
    apellido VARCHAR(50),
    cargo VARCHAR(50)
);

CREATE TABLE medicos(
    id_medico INT PRIMARY KEY,
    cedula_medico VARCHAR(50),
    nombre_medico VARCHAR(100),
    apellido_medico VARCHAR(50),
    especialidad_medico VARCHAR(100),
    tipo_medico VARCHAR(100),
    dia_semana INT,
    hora_ini_consulta INT,
    hora_fin_consulta INT
);

CREATE TABLE vacaciones(
    id_vacaciones INT PRIMARY KEY,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE empleados_vacaciones(
    id_empleados_vacaciones INT PRIMARY KEY,
    id_empleados INT,
    id_vacaciones INT,
    FOREIGN KEY (id_empleados) REFERENCES empleados(id_empleados),
    FOREIGN KEY (id_vacaciones) REFERENCES vacaciones(id_vacaciones)
);

CREATE TABLE sustituciones(
    id_sustitucion INT PRIMARY KEY,
    id_sustituto INT,
    id_medico INT,
    fecha_ini DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE pacientes(
    id_paciente INT PRIMARY KEY,
    cedula_paciente INT,
    nombre_paciente VARCHAR(50),
    apellido_paciente VARCHAR(100),
    fecha_naci DATE,
    telefono VARCHAR(100),
    id_medico INT,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE vacaciones_medicos(
    id_medicos_vacaciones INT PRIMARY KEY,
    id_medico INT,
    id_vacaciones INT,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_vacaciones) REFERENCES vacaciones(id_vacaciones)
);