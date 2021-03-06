-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: dif_huixquilucan
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `horariosservicios`
--

LOCK TABLES `horariosservicios` WRITE;
/*!40000 ALTER TABLE `horariosservicios` DISABLE KEYS */;
INSERT INTO `horariosservicios` VALUES (1,7,'lunes-jueves','09:00:00','17:00:00',1),(2,7,'viernes','09:00:00','15:00:00',1),(3,7,'lunes-jueves','09:00:00','17:00:00',51),(4,7,'lunes-jueves','09:00:00','17:00:00',51),(5,7,'lunes-jueves','09:00:00','17:00:00',38),(6,7,'lunes-jueves','09:00:00','17:00:00',38),(7,8,'lunes-jueves','09:00:00','17:00:00',43),(8,8,'viernes','09:00:00','15:00:00',43),(9,8,'lunes-jueves','09:00:00','17:00:00',52),(10,8,'viernes','09:00:00','15:00:00',52),(11,8,'lunes-jueves','09:00:00','17:00:00',57),(12,8,'viernes','09:00:00','15:00:00',57),(13,8,'lunes-jueves','09:00:00','17:00:00',49),(14,8,'viernes','09:00:00','15:00:00',49),(15,8,'lunes-jueves','09:00:00','17:00:00',59),(16,8,'viernes','09:00:00','15:00:00',59),(17,13,'diario','12:30:00','15:00:00',51),(18,14,'diario','12:30:00','15:00:00',59),(19,11,'lunes-viernes','08:00:00','20:00:00',56),(20,11,'lunes-viernes','08:00:00','16:00:00',56),(21,11,'lunes-viernes','08:00:00','20:00:00',38),(22,11,'lunes-viernes','08:00:00','16:00:00',38);
/*!40000 ALTER TABLE `horariosservicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Estancias Infantiles','Siempre contribuyendo al desarrollo y educaci??n de los huixquiluquenses, hemos trabajado para que todos los ni??os, ni??as, j??venes y adultos tengan oportunidades educativas cercanas a sus comunidades.','Educaci??n'),(2,'Jard??n de Ni??os','Siempre contribuyendo al desarrollo y educaci??n de los huixquiluquenses, hemos trabajado para que todos los ni??os, ni??as, j??venes y adultos tengan oportunidades educativas cercanas a sus comunidades.','Educaci??n'),(3,'Prepa DIF','Con el objetivo de brindar oportunidades educativas a todos los huixquiluquenses, creamos el modelo de Prepa DIF en conjunto con la Direcci??n de Prepa Abierta del Estado de M??xico y Google M??xico.','Educaci??n'),(4,'Aulas M??viles','En conjunto con el Instituto Nacional de Educaci??n para Adultos (INEA) los huixquiluquenses tienen la oportunidad de iniciar o concluir sus estudios de primaria y secundaria en nuestras dos Aulas M??viles.','Educaci??n'),(7,'Subprocuradur??as','Por medio de la procuradur??a, ofrecemos los siguientes servicios de manera gratuita:\n- Asistencia jur??dica gratuita\n- Divorcios\n- Alimentos\n- Guarda y Custodia\n- Procedimiento Judicial no contencioso\n- Adopci??n\n- P??rdida de Patria Potestad\n- Reconocimiento de Paternidad\n- Cambio de R??gimen Matrimonial\n- R??gimen de convivencias\n- Atenci??n a reportes de maltrato\n- Tr??mite de Testamentos','Atenci??n jur??dica'),(8,'Asesor??a jur??dica en centros de desarrollo comunitario','Asistencia jur??dica gratuita, mediante asesor??as y/o la designaci??n de abogados especializados en derecho familiar.','Atenci??n jur??dica'),(9,'Casas de d??a','Cuidamos a quienes m??s nos necesitan, nuestros adultos mayores son y seguir??n siendo un eje fundamental de nuestro trabajo','Atenci??n al adulto mayor'),(10,'Clubes del adulto mayor','Cuidamos a quienes m??s nos necesitan, nuestros adultos mayores son y seguir??n siendo un eje fundamental de nuestro trabajo.','Atenci??n al adulto mayor'),(11,'Escuelas de nataci??n','Se imparten clases de nataci??n para adultos, ni??os, adolescentes y mujeres embarazadas. Igualmente contamos con actividades de nado libre','Actividad f??sica'),(12,'??reas de juegos infantiles','Espacios seguros y adecuados para ni??os y ni??as','Actividad f??sica'),(13,'Comedor Infantil San Fernando','Nuestras compa??eras nos comparten el men?? saludable y nutritivo del Comedor Infantil de San Fernando. ','Comedor Infantil'),(14,'Comedor Infantil ???Santiago Yancuitlalpan???','Ni??os y ni??as de la comunidad de Santiago Yancuitlalpan pueden acudir al Comedor Infantil, en donde recibir??n una alimentaci??n balanceada.','Comedor Infantil'),(15,'Comedor Infantil \"Magdalena Chichicaspa\"','Te esperamos en el Comedor Infantil de Magdalena!\nLos m??s peque??os de la familia recibir??n una alimentaci??n balanceada.','Comedor Infantil'),(16,'DIF Central','Nuestras compa??eras nos comparten el men?? saludable y nutritivo del Comedor Infantil de San Fernando. Para inscribirte y solicitar informaci??n puedes acudir directamente de 12:30 a 15:00 horas.','Comedor Infantil'),(17,'Consultorios M??dicos y Dentales','Somos un municipio sano, es por ello que contamos con consultorios m??dicos generales y odontol??gicos en diferentes comunidades, buscando siempre estar cerca de las familias huixquiluquenses.','Salud'),(18,'Consultorios de Atenci??n Psicol??gica','Cuidamos la salud mental de todos los integrantes de la familia a trav??s de los siguientes servicios: \n- Terapia individual \n- Terapia de pareja \n- Terapia familiar \n- Orientaci??n','Salud'),(19,'Centro de Rehabilitaci??n e Integraci??n Social','En la que brindamos los siguientes servicios: \n- Valoraci??n por Rehabilitaci??n\n- Estimulaci??n Temprana\n- Terapia F??sica, Ocupacional y Lenguaje\n- Trabajo Social','Salud'),(20,'Estimulaci??n Temprana','Con la finalidad de darles herramientas a las ni??as y ni??os para su desarrollo psicomotor, as?? como su desarrollo cognitivo contamos con salones de estimulaci??n temprana en las comunidades de: Santiago Yancuitlalpan, Mont??n Cuarteles, San Fernando, La Unidad, Magdalena Chichicaspa, El Hielo y en la Cl??nica y Albergue Mater Dei.','Salud');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `serviciosubicaciones`
--

LOCK TABLES `serviciosubicaciones` WRITE;
/*!40000 ALTER TABLE `serviciosubicaciones` DISABLE KEYS */;
INSERT INTO `serviciosubicaciones` VALUES (1,1),(1,2),(1,38),(1,73),(1,39),(1,40),(1,42),(1,43),(2,45),(2,46),(2,47),(2,48),(2,60),(2,55),(2,54),(2,72),(2,50),(2,71),(2,53),(3,51),(3,64),(3,52),(3,59),(3,66),(3,38),(3,49),(4,1),(4,44),(19,38),(19,49),(20,49),(20,38),(20,57),(20,43),(20,52),(9,68),(9,67),(10,38),(10,51),(10,49),(10,73),(10,59),(10,52),(10,42),(10,63),(10,39),(10,43),(10,66),(10,61),(10,64),(10,40),(10,1),(10,72),(10,69),(10,70),(10,62),(10,56),(10,58),(10,53),(7,51),(7,38),(8,43),(8,52),(8,57),(8,49),(8,59),(13,38),(13,61),(14,59),(15,43),(11,56),(11,38),(12,52),(12,70),(16,1),(17,1),(18,1),(20,59);
/*!40000 ALTER TABLE `serviciosubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'DIF Central',19.3645600000,-99.3415400000,'Carretera Huixquilucan- San Ram??n #66 San Juan Bautista',1),(2,'Pirules',19.4069600000,-99.2786300000,'Calle Alamo s/n Col. Pirules, Subiendo por lado derecho del Centro Administrativo de Pirules (Los Bomberos)',0),(38,'San Fernando',19.3803600000,-99.2844900000,'Calle P??lvora esquina con Espoleta, San Fernando',1),(39,'Zacamulpa',19.3579241105,-99.3304752528,'Andador Loma de los Cedros s/n',1),(40,'San Bartolom?? Coatepec',19.3969054910,-99.3104635954,'Andador Pino S/N San Bartolom?? Coatepec',1),(42,'La Glorieta',19.4139793486,-99.3887740332,'Domicilio conocido s/n junto al CDC',0),(43,'Magdalena Chichicaspa',19.4127500000,-99.3235500000,'Primera cerrada de Gardenia s/n Paraje El escobal, cerca del auditorio de Magdalena.',0),(44,'CIM Magdalena',19.4122144633,-99.3227508824,'Calle Las Flores No. 14, Barrio El Calvario, Magdalena Chichicaspa, Huxiquilucan.',1),(45,'Salvador Novo',19.3910400000,-99.2828800000,'Calle Lima s/n Esq. Naranjo, San Fernando, a dos cuadras de la escuela primaria Adolfo L??pez Mateos.',1),(46,'Francisco Gabilondo Soler',19.3768900000,-99.2924800000,'Calle Jos?? Mar??a Morelos y Pav??n #42 Col. Jes??s del Monte, entrando rumbo a colonia Tepetongo, a un costado de la Telesecundaria y frente a Cimbramex.',1),(47,'Joaqu??n Arcadio Pagaza',19.4144600000,-99.3890900000,'Av. Cuitlahuac s/n, La Glorieta, a un costado de la Delegaci??n Municipal de La Glorieta, frente a la primaria de La Glorieta.',1),(48,'Manuel Acu??a',19.3854000000,-99.3771500000,'Av. Santa Cruz Ayotuxco Zona Alta s/n, en la parada de la antigua terminal de camiones, frente a la primaria Miguel Hidalgo.',1),(49,'Mont??n Cuarteles',19.4081200000,-99.2787700000,'Paseo Huixquilucan Mz. 6, Lt. 7',1),(50,'Jaime Torres Bodet',19.3595747361,-99.3534564151,'Nicolas Bravo #15, San Mart??n, Cabecera, a 2 cuadras de Bancomer y al lado derecho del Hospital General de la Mujer de Huixquilucan.',1),(51,'Federal Burocr??tica',19.4131000000,-99.2707100000,'Av. Palo Solo No. 02. Federal Burocr??tica, Huixquilucan',1),(52,'El Hielo',19.4264700000,-99.3531900000,'Calle Volc??n Xitle s/n, El Hielo, Huixquilucan',1),(53,'Mar??a Enriqueta Camarillo',19.3531400000,-99.3857890000,'Av. Piedra Grande s/n, a un costado de la primaria de Piedra Grande y atr??s de la Iglesia de Piedra Grande.',1),(54,'Amado Nervo',19.4138900000,-99.3009400000,'El Arenal s/n,a 1500 mts. Subiendo de la gasolinera por el lado izquierdo de Banorte.',1),(55,'Juan Rulfo',19.3682600000,-99.3870400000,'Av. Principal a San Miguel Llano Grande s/n, Frente al consultorio del DIF a la mitad de la comunidad de Llano Grande.',1),(56,'Constituyentes de 1917',19.4119955023,-99.2755023113,'Luis Manuel Rojas, Constituyentes de 1917, 52775 Naucalpan de Ju??rez, M??x.',1),(57,'La Unidad',19.4187430000,-99.2750620000,'Calle Francisco I Madero 96, Colonia La Unidad, C. P 52777.',1),(58,'Chuluguaya',19.3743105805,-99.2910103256,'Prol. Ocote 2, Tepetongo, 05220 Ciudad de M??xico, M??x.',1),(59,'Santiago Yacuitlalpan',19.3853600000,-99.3025100000,'Av. M??xico 175, Colonia Santiago Yacuitlalpan, Huixquilucan, C.P. 52766',1),(60,'Jard??n de Ni??os Guillermo Prieto',19.3744848958,-99.3724743378,'Camino a Canales s/n, Subiendo por Santa Cruz, desviaci??n a Canales, rumbo a Llano Grande antes de llegar al kiosko de Canales.',1),(61,'Comedor Comunitario Canales de Santa Cruz Ayotuxco',19.3773217200,-99.3717898770,'Carretera a Canales No. 8, Canales',1),(62,'Palo Solo',19.4142844423,-99.2701175862,'Delegaci??n de Palo Solo. Av. Palo Solo S/N, Palo Solo, 52778 Naucalpan de Ju??rez, M??x.',1),(63,'La Cima',19.3127701996,-99.3711814015,'Av. Temazuca s/n, La Cima, Huixquilucan',1),(64,'El Pedregal',19.4243892677,-99.2722936436,'El Pedregal, 52770 Naucalpan de Ju??rez, M??x.',1),(65,'San Fernando',19.3780642184,-99.2850560313,'Av. San Fernando s/n. Col. San Fernando, Huixquilucan',1),(66,'Ignacio Allende',19.4539890022,-99.2100223349,'Av. San Joaqu??n s/n',1),(67,'Casa de D??a El Mirador',19.4015700000,-99.3258600000,'Carretera Naucalpan-Huixquilucan, 52793 Paraje El Mirador',1),(68,'Loma del Carmen',19.4169454036,-99.2777833448,'Calle El Buen Suceso s/n, Loma del Carmen',1),(69,'El Olivo',19.5739400000,-99.1911700000,'Calle Cedros s/n El Olivo (en la iglesia)',1),(70,'La Retama',19.3756057492,-99.2893893205,'Cerrada de Voluntad s/n La Retama, 52764 Naucalpan de Ju??rez',1),(71,'Jard??n de ni??os Justo Sierra',19.3550417441,-99.3640450383,'Camino Al Laurel s/n. Frente a la Capilla de la Virgen de la Semilla. 52799 Huixquilucan de Degollado',1),(72,'Jard??n de Ni??os Horacio Z????iga',19.3745513808,-99.3433815310,'Cda. los Reyes 9, Dos Rios, 52790 Dos R??os, M??x.',1),(73,'Jes??s del Monte',19.3772300000,-99.2974600000,'Cerrada Veracruz No. 15',1);
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 20:49:01
