create database colegio;

use colegio;

create table estudiantes (
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
edad INT,
ciudad VARCHAR(50),
nota DECIMAL(4,2)

);


describe estudiantes;
show tables;

insert into estudiantes (nombre, apellido, edad, ciudad, nota) values
('camilo', 'arboleda', 25, 'medellin', '3.5'),
('ruben', 'arboleda', 25, 'bogota', '3.6'),
('oscar', 'zapata', 28, 'medellin', '2.5'),
('daniela', 'bocanegra', 35, 'manizales', '3.8'),
('ana', 'loaiza', 31, 'cali', '3.5'),
('cristian', 'hernandez', 22, 'cartagena', '4.5');

select * from estudiantes;
select apellido, nota from estudiantes where ciudad = 'medellin';

select * from estudiantes where nota >= 3.5;

SELECT * FROM estudiantes WHERE ciudad = 'Medellin' AND nota >= 4.0;
SELECT * FROM estudiantes WHERE ciudad = 'Medellin' or nota >= 4.0;

select nombre, ciudad, nota from estudiantes where ciudad = 'medellin' order by nota desc;

update estudiantes set ciudad = 'medellin' where id in (2,6);

select * from estudiantes;

delete from estudiantes where ciudad = 'cali';

SELECT nombre, apellido, nota FROM estudiantes WHERE nota >= 4.0 ORDER BY nota DESC;

INSERT INTO estudiantes (nombre, apellido, edad, ciudad, nota) values ('Daniel', 'Aristizabal', 23, 'cali', '4.3');

SELECT * FROM estudiantes WHERE nombre = 'Daniel' AND apellido = 'Aristizabal';

UPDATE estudiantes SET nota = '4.60' WHERE nombre = 'Daniel' AND apellido = 'Aristizabal';

SELECT * FROM estudiantes WHERE nombre = 'Daniel' AND apellido = 'Aristizabal';

DELETE FROM estudiantes WHERE nombre = 'Daniel' AND apellido = 'Aristizabal';

SELECT * FROM estudiantes WHERE nombre = 'Daniel' AND apellido = 'Aristizabal';
