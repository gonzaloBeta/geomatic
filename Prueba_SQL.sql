-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-05-10 18:45:00 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    id             INTEGER NOT NULL,
    descripcion    VARCHAR2(50),
    valor_logico   CHAR(1),
    porcentaje     FLOAT,
    preguntas_id   INTEGER NOT NULL,
    estudiante_id  INTEGER NOT NULL
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id,
                                                                      preguntas_id );

CREATE TABLE curso (
    id             INTEGER NOT NULL,
    descripcion    VARCHAR2(1 CHAR),
    estudiante_id  INTEGER NOT NULL
);

CREATE UNIQUE INDEX curso__idx ON
    curso (
        estudiante_id
    ASC );

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id );

CREATE TABLE estudiante (
    id      INTEGER NOT NULL,
    nombre  VARCHAR2(20) NOT NULL,
    rut     INTEGER NOT NULL
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( id );

CREATE TABLE preguntas (
    id                  INTEGER NOT NULL,
    enunciado           VARCHAR2(50),
    puntaje             INTEGER NOT NULL,
    test_id             INTEGER NOT NULL,
    test_estudiante_id  INTEGER NOT NULL,
    id2                 INTEGER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id );

CREATE TABLE test (
    id             INTEGER NOT NULL,
    nombre         VARCHAR2(30) NOT NULL,
    descripcion    VARCHAR2(50) NOT NULL,
    programa       VARCHAR2(30) NOT NULL,
    unidad         VARCHAR2(30),
    autor          VARCHAR2(30) NOT NULL,
    fecha          DATE NOT NULL,
    estudiante_id  INTEGER NOT NULL,
    curso_id       INTEGER NOT NULL
);

ALTER TABLE test
    ADD CONSTRAINT test_pk PRIMARY KEY ( id,
                                         estudiante_id,
                                         curso_id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_id )
        REFERENCES preguntas ( id );

ALTER TABLE curso
    ADD CONSTRAINT curso_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id,
                                                   test_estudiante_id,
                                                   id2 )
        REFERENCES test ( id,
                          estudiante_id,
                          curso_id );

ALTER TABLE test
    ADD CONSTRAINT test_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( id );

ALTER TABLE test
    ADD CONSTRAINT test_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

****DATOS TESTS
INSERT INTO Test (Id, nombre, descripcion, programa, unidad, autor, fecha) VALUES ('1', 'Evaluacion_int_Progr', 'conceptos iniciales a la programacion', 'FullStack Java Trainee', '1', 'awaker1', TO_DATE('2020-03-10', 'YYYY-MM-DD'));
INSERT INTO Test (Id, nombre, descripcion, programa, unidad, autor, fecha) VALUES ('2', 'Evaluacion_POO', 'Paradigma_POO', 'FullStack Java Trainee', '2', 'awaker2', TO_DATE('2020-03-10', 'YYYY-MM-DD'));
INSERT INTO Test (Id, nombre, descripcion, programa, unidad, autor, fecha) VALUES ('3', 'Evaluacion_BD', 'Construccion_Base_Datos_Relacional', 'FullStack Java Trainee', '3', 'awaker3', TO_DATE('2020-03-10', 'YYYY-MM-DD'));

****DATOS CURSOS
INSERT INTO curso (id, descripcion) VALUES ('1', 'A');
INSERT INTO curso (id, descripcion) VALUES ('2', 'B');
INSERT INTO curso (id, descripcion) VALUES ('3', 'C');

***DATOS ESTUDIANTES
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('1', '15602126', 'Daniel Gonzalez', '1');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('2', '14356788', 'Francisca Poblete', '1');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('3', '12346577', 'Pedro Santander', '1');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('4', '16789098', 'Ricardo Campos', '1');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('5', '14563456', 'Juan Osses', '1');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('6', '76543333', 'Diego Fuentes', '2');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('7', '14543287', 'Daniela Saavedra', '2');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('8', '23453765', 'Carla Fernandez', '2');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('9', '13432333', 'Andrea Santibañez', '2');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('10', '12547861', 'Patricio Gonzalez', '2');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('11', '1833433', 'Francisco Hernandez', '3');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('12', '20654857', 'Claudia Neira', '3');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('13', '18334332', 'Marcia Astudillo', '3');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('14', '19764324', 'Manuel Bravo', '3');
INSERT INTO Estudiante (id, Rut, nombre, Id_Curso) VALUES ('15', '19764324', 'Andrea Martinez', '3');

*** DATOS_PREGUNTAS
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('1', 'Defina byte', '10', '1');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('2', 'Defina codigo', '6', '1');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('3', 'Que es un programa?', '4', '1');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('4', 'Defina POO', '4', '2');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('5', 'Que es una Clase', '4', '2');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('6', 'Que es un Atributo', '12', '2');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('7', 'Defina BD', '8', '3');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('8', 'Que es una entidad?', '8', '3');
INSERT INTO Preguntas (id, enunciado, puntaje, test_id) VALUES ('9', 'Que es un atributo en SQL', '4', '3');

*** DATOS_ALTERNATIVAS
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('1', 'bit', '1','50','1' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('2', 'es un formato', '0','0','1' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('3', 'unidad de informacion', '1','50','1' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('4', 'Codigo Fuente', '1','100','2' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('5', 'es un software', '0','0','2' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('6', '10 bytes', '0','0','2' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('7', 'Codigo articulado', '1','50','3' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('8', 'Programa Informatico', '1','50','3' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('9', 'unidad de informacion', '0','0','3' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('10', 'Programacion Orientada a Objetos', '1','100','4' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('11', 'Programa Os Os', '0','0','4' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('12', 'Prime Organic Objetcs', '0','0','4' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('13', 'Una entidad dentro de Java', '1','100','5' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('14', 'Una entidad dentro de  SQL', '0','0','5' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('15', 'Un tipo de sistema', '0','0','5' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('16', 'Una entidad  Posgres', '0','0','6' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('17', 'Una caracteristica dentro de una entidad', '1','100','6' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('18', 'Un tipo de sistema SQL', '0','0','6' )
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('19', 'Data Base', '1','100','7' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('20', 'Una entidad en Eclipse', '0','0','7' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('21', 'Lo mismo que un codigo', '0','0','7' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('22', 'Conjunto de datos', '1','100','8' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('23', 'Una herramienta de Eclipse', '0','0','8' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('24', 'Lo mismo SQL', '0','0','8' )
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('25', 'Caracteristica de una entidad', '1','100','9' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('26', 'Un codigo hecho en Eclipse', '0','0','9' );
INSERT INTO Alternativas (Id, Descripcion, Valor_logico, Porcentaje,Preguntas_id) VALUES ('27', 'Lo mismo que una clase', '0','0','9' );

Select c.descripcion "Nombre_curso", count(e.id_estudiante) from curso c
inner join estudiante e  on e.id=c.id_curso
group by c.descripcion;