-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


--sql1
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL,
  `first_name` char(15) NOT NULL,
  `last_name` char(15) NOT NULL,
  `id_deparment` int(11) DEFAULT NULL
) 

-- Valores
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `id_deparment`) VALUES
(1, 'SANDRA', 'LOPEZ', 1),
(2, 'MARIA', 'HIDALGO', 3),
(3, 'FRANCISCO', 'MARQUEZ', 6),
(4, 'VICENTE', 'SANCHEZ', 2);


CREATE TABLE IF NOT EXISTS `employee_deparment` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) 

--Valores
INSERT INTO `employee_deparment` (`id`, `name`, `description`) VALUES
(1, 'COMPRAS', 'Departamento encargado de hacer las compras'),
(2, 'RECURSOS HUMANOS', 'Departamento par control de personal'),
(3, 'CALIDAD OE', 'Departamento encargado de revisar los equipos OE'),
(4, 'CREDITO Y COBRANZA', 'Departamento para pagos'),
(5, 'CONTABILIDAD', 'Departamento general'),
(6, 'MARKETING', 'Departamento encargado de publicidad');


--Relaciones
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_deparment` (`id_deparment`);

ALTER TABLE `employee_deparment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_deparment`) REFERENCES `employee_deparment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;





--sql2


CREATE TABLE IF NOT EXISTS `employee_hobby` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(60) DEFAULT NULL
) 

--Valores
INSERT INTO `employee_hobby` (`id`, `name`, `description`) VALUES
(1, 'LECTURA', 'El acto de leer'),
(2, 'CORRER', 'Hacer ejercicio'),
(3, 'BAILAR', 'Diferentes generos');



CREATE TABLE IF NOT EXISTS `employee_hobbyrel` (
  `id_employee` int(11) NOT NULL,
  `id_hobby` int(11) NOT NULL
) 

--Valores
INSERT INTO `employee_hobbyrel` (`id_employee`, `id_hobby`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 1),
(4, 3);

--Relaciones
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_deparment` (`id_deparment`);

ALTER TABLE `employee_deparment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `employee_hobby`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `employee_hobbyrel`
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_hobby` (`id_hobby`);

ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_deparment`) REFERENCES `employee_deparment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `employee_hobbyrel`
  ADD CONSTRAINT `employee_hobbyrel_ibfk_1` FOREIGN KEY (`id_hobby`) REFERENCES `employee_hobby` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_hobbyrel_ibfk_2` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


CREATE TABLE IF NOT EXISTS `employee_boss` (
  `id` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--Valores
INSERT INTO `employee_boss` (`id`, `id_employee`) VALUES
(2, 2),
(1, 3);


CREATE TABLE IF NOT EXISTS `employee_bossrel` (
  `id_boss` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--Valores
INSERT INTO `employee_bossrel` (`id_boss`, `id_employee`) VALUES
(1, 3),
(1, 2);

--Relaciones
ALTER TABLE `employee_boss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employee` (`id_employee`);


ALTER TABLE `employee_bossrel`
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_boss` (`id_boss`);

ALTER TABLE `employee_boss`
  ADD CONSTRAINT `employee_boss_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `employee_bossrel`
  ADD CONSTRAINT `employee_bossrel_ibfk_1` FOREIGN KEY (`id_boss`) REFERENCES `employee_boss` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `employee_bossrel_ibfk_2` FOREIGN KEY (`id_employee`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
