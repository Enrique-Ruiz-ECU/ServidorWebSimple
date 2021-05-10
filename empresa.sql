create schema empresa;
use empresa;
CREATE TABLE `usuarios` (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Nombre varchar(20) DEFAULT NULL,
  Apellido varchar(20) DEFAULT NULL,
  Usuario varchar(20) DEFAULT NULL,
  Contrasena varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
);
create user 'usuario' identified by '123';
GRANT USAGE ON empresa.* TO 'usuario'@'%';
grant all privileges on empresa.* to 'usuario'@'%';

