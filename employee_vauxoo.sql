-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

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

CREATE TABLE employee_hobby (
);

-- ...
