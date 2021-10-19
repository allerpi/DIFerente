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
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservaciones`
--

LOCK TABLES `reservaciones` WRITE;
/*!40000 ALTER TABLE `reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Estancias Infantiles','Siempre contribuyendo al desarrollo y educación de los huixquiluquenses, hemos trabajado para que todos los niños, niñas, jóvenes y adultos tengan oportunidades educativas cercanas a sus comunidades.','Educación'),(2,'Jardín de Niños','Siempre contribuyendo al desarrollo y educación de los huixquiluquenses, hemos trabajado para que todos los niños, niñas, jóvenes y adultos tengan oportunidades educativas cercanas a sus comunidades.','Educación'),(3,'Prepa DIF','Con el objetivo de brindar oportunidades educativas a todos los huixquiluquenses, creamos el modelo de Prepa DIF en conjunto con la Dirección de Prepa Abierta del Estado de México y Google México.','Educación'),(4,'Aulas Móviles','En conjunto con el Instituto Nacional de Educación para Adultos (INEA) los huixquiluquenses tienen la oportunidad de iniciar o concluir sus estudios de primaria y secundaria en nuestras dos Aulas Móviles.','Educación'),(7,'Subprocuradurías','Por medio de la procuraduría, ofrecemos los siguientes servicios de manera gratuita:\n- Asistencia jurídica gratuita\n- Divorcios\n- Alimentos\n- Guarda y Custodia\n- Procedimiento Judicial no contencioso\n- Adopción\n- Pérdida de Patria Potestad\n- Reconocimiento de Paternidad\n- Cambio de Régimen Matrimonial\n- Régimen de convivencias\n- Atención a reportes de maltrato\n- Trámite de Testamentos','Atención jurídica'),(8,'Asesoría jurídica en centros de desarrollo comunitario','Asistencia jurídica gratuita, mediante asesorías y/o la designación de abogados especializados en derecho familiar.','Atención jurídica'),(9,'Casas de día','Cuidamos a quienes más nos necesitan, nuestros adultos mayores son y seguirán siendo un eje fundamental de nuestro trabajo','Atención al adulto mayor'),(10,'Clubes del adulto mayor','Cuidamos a quienes más nos necesitan, nuestros adultos mayores son y seguirán siendo un eje fundamental de nuestro trabajo.','Atención al adulto mayor'),(11,'Escuelas de natación','Se imparten clases de natación para adultos, niños, adolescentes y mujeres embarazadas. Igualmente contamos con actividades de nado libre','Actividad física'),(12,'Áreas de juegos infantiles','Espacios seguros y adecuados para niños y niñas','Actividad física'),(13,'Comedor Infantil San Fernando','Nuestras compañeras nos comparten el menú saludable y nutritivo del Comedor Infantil de San Fernando. ','Comedor Infantil'),(14,'Comedor Infantil “Santiago Yancuitlalpan”','Niños y niñas de la comunidad de Santiago Yancuitlalpan pueden acudir al Comedor Infantil, en donde recibirán una alimentación balanceada.','Comedor Infantil'),(15,'Comedor Infantil \"Magdalena Chichicaspa\"','Te esperamos en el Comedor Infantil de Magdalena!\nLos más pequeños de la familia recibirán una alimentación balanceada.','Comedor Infantil'),(16,'DIF Central','Nuestras compañeras nos comparten el menú saludable y nutritivo del Comedor Infantil de San Fernando. Para inscribirte y solicitar información puedes acudir directamente de 12:30 a 15:00 horas.','Comedor Infantil'),(17,'Consultorios Médicos y Dentales','Somos un municipio sano, es por ello que contamos con consultorios médicos generales y odontológicos en diferentes comunidades, buscando siempre estar cerca de las familias huixquiluquenses.','Salud'),(18,'Consultorios de Atención Psicológica','Cuidamos la salud mental de todos los integrantes de la familia a través de los siguientes servicios: \n- Terapia individual \n- Terapia de pareja \n- Terapia familiar \n- Orientación','Salud'),(19,'Centro de Rehabilitación e Integración Social','En la que brindamos los siguientes servicios: \n- Valoración por Rehabilitación\n- Estimulación Temprana\n- Terapia Física, Ocupacional y Lenguaje\n- Trabajo Social','Salud'),(20,'Estimulación Temprana','Con la finalidad de darles herramientas a las niñas y niños para su desarrollo psicomotor, así como su desarrollo cognitivo contamos con salones de estimulación temprana en las comunidades de: Santiago Yancuitlalpan, Montón Cuarteles, San Fernando, La Unidad, Magdalena Chichicaspa, El Hielo y en la Clínica y Albergue Mater Dei.','Salud');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `serviciosubicaciones`
--

LOCK TABLES `serviciosubicaciones` WRITE;
/*!40000 ALTER TABLE `serviciosubicaciones` DISABLE KEYS */;
INSERT INTO `serviciosubicaciones` VALUES (1,1),(1,2),(1,38),(1,73),(1,39),(1,40),(1,42),(1,43),(2,45),(2,46),(2,47),(2,48),(2,60),(2,55),(2,54),(2,72),(2,50),(2,71),(2,53),(3,51),(3,64),(3,52),(3,59),(3,66),(3,38),(3,49),(4,1),(4,44),(19,38),(19,49),(20,59),(20,59),(20,49),(20,38),(20,57),(20,43),(20,52),(9,68),(9,67),(10,38),(10,51),(10,49),(10,73),(10,59),(10,52),(10,42),(10,63),(10,39),(10,43),(10,66),(10,61),(10,64),(10,40),(10,1),(10,72),(10,69),(10,70),(10,62),(10,56),(10,58),(10,53),(7,51),(7,38),(8,43),(8,52),(8,57),(8,49),(8,59),(13,38),(13,61),(14,59),(15,43),(11,56),(11,38),(12,52),(12,70);
/*!40000 ALTER TABLE `serviciosubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'DIF Central',19.3645600000,-99.3415400000,'Carretera Huixquilucan- San Ramón #66 San Juan Bautista',1),(2,'Pirules',19.4069600000,-99.2786300000,'Calle Alamo s/n Col. Pirules, Subiendo por lado derecho del Centro Administrativo de Pirules (Los Bomberos)',0),(38,'San Fernando',19.3803600000,-99.2844900000,'Calle Pólvora esquina con Espoleta, San Fernando',1),(39,'Zacamulpa',19.3579241105,-99.3304752528,'Andador Loma de los Cedros s/n',1),(40,'San Bartolomé Coatepec',19.3969054910,-99.3104635954,'Andador Pino S/N San Bartolomé Coatepec',1),(42,'La Glorieta',19.4139793486,-99.3887740332,'Domicilio conocido s/n junto al CDC',0),(43,'Magdalena Chichicaspa',19.4127500000,-99.3235500000,'Primera cerrada de Gardenia s/n Paraje El escobal, cerca del auditorio de Magdalena.',0),(44,'CIM Magdalena',19.4122144633,-99.3227508824,'Calle Las Flores No. 14, Barrio El Calvario, Magdalena Chichicaspa, Huxiquilucan.',1),(45,'Salvador Novo',19.3910400000,-99.2828800000,'Calle Lima s/n Esq. Naranjo, San Fernando, a dos cuadras de la escuela primaria Adolfo López Mateos.',1),(46,'Francisco Gabilondo Soler',19.3768900000,-99.2924800000,'Calle José María Morelos y Pavón #42 Col. Jesús del Monte, entrando rumbo a colonia Tepetongo, a un costado de la Telesecundaria y frente a Cimbramex.',1),(47,'Joaquín Arcadio Pagaza',19.4144600000,-99.3890900000,'Av. Cuitlahuac s/n, La Glorieta, a un costado de la Delegación Municipal de La Glorieta, frente a la primaria de La Glorieta.',1),(48,'Manuel Acuña',19.3854000000,-99.3771500000,'Av. Santa Cruz Ayotuxco Zona Alta s/n, en la parada de la antigua terminal de camiones, frente a la primaria Miguel Hidalgo.',1),(49,'Montón Cuarteles',19.4081200000,-99.2787700000,'Paseo Huixquilucan Mz. 6, Lt. 7',1),(50,'Jaime Torres Bodet',19.3595747361,-99.3534564151,'Nicolas Bravo #15, San Martín, Cabecera, a 2 cuadras de Bancomer y al lado derecho del Hospital General de la Mujer de Huixquilucan.',1),(51,'Federal Burocrática',19.4131000000,-99.2707100000,'Av. Palo Solo No. 02. Federal Burocrática, Huixquilucan',1),(52,'El Hielo',19.4264700000,-99.3531900000,'Calle Volcán Xitle s/n, El Hielo, Huixquilucan',1),(53,'María Enriqueta Camarillo',19.3531400000,-99.3857890000,'Av. Piedra Grande s/n, a un costado de la primaria de Piedra Grande y atrás de la Iglesia de Piedra Grande.',1),(54,'Amado Nervo',19.4138900000,-99.3009400000,'El Arenal s/n,a 1500 mts. Subiendo de la gasolinera por el lado izquierdo de Banorte.',1),(55,'Juan Rulfo',19.3682600000,-99.3870400000,'Av. Principal a San Miguel Llano Grande s/n, Frente al consultorio del DIF a la mitad de la comunidad de Llano Grande.',1),(56,'Constituyentes de 1917',19.4119955023,-99.2755023113,'Luis Manuel Rojas, Constituyentes de 1917, 52775 Naucalpan de Juárez, Méx.',1),(57,'La Unidad',19.4187430000,-99.2750620000,'Calle Francisco I Madero 96, Colonia La Unidad, C. P 52777.',1),(58,'Chuluguaya',19.3743105805,-99.2910103256,'Prol. Ocote 2, Tepetongo, 05220 Ciudad de México, Méx.',1),(59,'Santiago Yacuitlalpan',19.3853600000,-99.3025100000,'Av. México 175, Colonia Santiago Yacuitlalpan, Huixquilucan, C.P. 52766',1),(60,'Jardín de Niños Guillermo Prieto',19.3744848958,-99.3724743378,'Camino a Canales s/n, Subiendo por Santa Cruz, desviación a Canales, rumbo a Llano Grande antes de llegar al kiosko de Canales.',1),(61,'Comedor Comunitario Canales de Santa Cruz Ayotuxco',19.3773217200,-99.3717898770,'Carretera a Canales No. 8, Canales',1),(62,'Palo Solo',19.4142844423,-99.2701175862,'Delegación de Palo Solo. Av. Palo Solo S/N, Palo Solo, 52778 Naucalpan de Juárez, Méx.',1),(63,'La Cima',19.3127701996,-99.3711814015,'Av. Temazuca s/n, La Cima, Huixquilucan',1),(64,'El Pedregal',19.4243892677,-99.2722936436,'El Pedregal, 52770 Naucalpan de Juárez, Méx.',1),(65,'San Fernando',19.3780642184,-99.2850560313,'Av. San Fernando s/n. Col. San Fernando, Huixquilucan',1),(66,'Ignacio Allende',19.4539890022,-99.2100223349,'Av. San Joaquín s/n',1),(67,'Casa de Día El Mirador',19.4015700000,-99.3258600000,'Carretera Naucalpan-Huixquiucan, 52793 Paraje El Mirador',1),(68,'Loma del Carmen',19.4169454036,-99.2777833448,'Calle El Buen Suceso s/n, Loma del Carmen',1),(69,'El Olivo',19.5739400000,-99.1911700000,'Calle Cedros s/n El Olivo (en la iglesia)',1),(70,'La Retama',19.3756057492,-99.2893893205,'Cerrada de Voluntad s/n La Retama, 52764 Naucalpan de Juárez',1),(71,'Jardín de niños Justo Sierra',19.3550417441,-99.3640450383,'Camino Al Laurel s/n. Frente a la Capilla de la Virgen de la Semilla. 52799 Huixquilucan de Degollado',1),(72,'Jardín de Niños Horacio Zúñiga',19.3745513808,-99.3433815310,'Cda. los Reyes 9, Dos Rios, 52790 Dos Ríos, Méx.',1),(73,'Jesús del Monte',19.3772300000,-99.2974600000,'Cerrada Veracruz No. 15',1);
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

-- Dump completed on 2021-10-18 21:56:21
