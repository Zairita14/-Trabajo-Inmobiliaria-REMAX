#drop database if exists remax;
create database remax;
use remax;

create table Clientes(
id_cliente int primary key auto_increment,
nombre varchar(100),
apellido varchar(100),
dni int,
telefono bigint,
email varchar(100),
contraseña varchar(80),
recibo_sueldo boolean,
mascotas boolean,
hijos boolean
);

create table Agentes(
id_agente int primary key auto_increment,
nombre varchar(100),
apellido varchar(100),
dni int,
telefono bigint,
email varchar(100),
contraseña varchar(80),
puntuacion int
);


insert into Clientes values(default,"Juan","Gomez",45678990, 1100101234, "juang32@gmail.com","soysanjose2",true,false,false),
(default,"Thiago gordo","Perez",34567890, 1100101234, "tperez@gmail.com","holamuendo123",false,true,false),
(default,"Maria","Domingez",56789032,1123451100,"maria44@gmail.com","yosoyand2",true,false,true),
(default,"Susana","Gimenez",4567789,1145679080,"susang32@gmail.com","categorias23",true,false,false),
(default,"Michael","Vacherato",34566789,11347890981,"vacherato55@gmail.com","jklpq12",true,true,false),
(default,"Martina","Farmenton",49678902,1145679087,"farmento22er@gmail.com","nosegh",false,true,false),
(default,"Nicolas","Domingo P",34556670,1134668790,"pnico@gmail.com","mividabuenaer",true,true,true),
(default,"Tatiana","Ismaca",215678900,1122567809,"ismaca.tatiana@gmail.com","buenavidamqla",true,false,true),
(default,"Sofia","Gomez",332112009,1123457890,"gsofi@gmail.com","bocaaaaaqr",true,false,false),
 (default,"Zaira","Torres",34566789,1100987423,"torres@gmail.com","holatodos",true,true,false);



insert into Agentes values (default,"Jorge","Ortigez",45678990,1124567890,"jorg@gmail.com","ghl32",8),
(default,"Franco","Quintana",23456789,1134567890,"frnco@gmail.com","youtube23",5),
(default,"Maria","Laquita",46899012,1154666780,"maria@gmail.com","nosequeonda",9),
(default,"Pronto","Shein",23345667,1112323345,"pront@gmai.com","malumabaibi",10),
(default,"Rafael","Taranto",67890912,1145678990,"taranto23@gmail.com","relax12",5),
(default,"Josefina","Antigas",56789012,1189001234,"finaanti@gmail.com","keloque",3),
(default,"Anna","Flores",12345678,1122337789,"anflores@gmail.com","123rap",4),
(default,"Elias","Quintero",90807654,1100321122,"quintero123@gmail.com","mesientofeliz",10),
(default,"Santino","Clerici",12345678,1123458090,"san23@gmail.com","otracopadelmundo",9),
(default,"Jeff","Clore",55678901,1178901212,"clor34@gmail.com","delpelotesoltare123",10);

create table Propietarios(
id_propietario int auto_increment,
nombre varchar(100),
apellido varchar(100),
dni int,
telefono bigint,
correo varchar(100),
primary key(id_propietario)
);

INSERT INTO Propietarios
(nombre, apellido, dni, telefono, correo)
VALUES ('Elías', 'Quintero', 90807654, 1100321122, "elias@gmail.com"),
('Santino', 'Clerici', 12345678, 1123458090, "1002@gmail.com"),
('Jeff', 'Clore', 55678901, 1178901212, "100asda3@gmail.com"),
('Mateo', 'Gómez', 40123456, 1134567890, "1asd004@gmail.com"),
('Lucas', 'Fernández', 42345678, 1145678901, "1005@gmail.com"),
('Tomás', 'Rodríguez', 44567890, 1156789012, "1006@gmail.com"),
('Nicolás', 'Pérez', 46789012, 1167890123, "1007@gmail.com"),
('Martín', 'Sosa', 48901234, 1178901234, "1008@gmail.com"),
('Juan', 'López', 50123456, 1189012345, "1009@gmail.com"),
('Franco', 'García', 52345678, 1190123456, "101ahh0@gmail.com"),
('Agustín', 'Romero', 54567890, 1101234567, "10da11@gmail.com"),
('Bruno', 'Díaz', 56789012, 1112345678, "10asd12@gmail.com"),
('Facundo', 'Torres', 58901234, 1123456789, "10aaa13@gmail.com"),
('Santiago', 'Vega', 60123456, 1134567891, "1aaa014@gmail.com"),
('Gonzalo', 'Castro', 62345678, 1145678012, "10ab@gmail.com");




create table Ambientes(
id_ambiente int auto_increment,
nombre varchar(200),
incluyeMuebles boolean,
incluyeVentana boolean,
incluyePatio boolean,
incluyePiscina boolean,
primary key(id_ambiente)
);

INSERT INTO Ambientes (nombre, incluyeMuebles, incluyeVentana, incluyePatio, incluyePiscina) VALUES
('Living Comedor Amplio', FALSE, TRUE, FALSE, FALSE),
('Dormitorio Principal', TRUE, TRUE, FALSE, FALSE),
('Cocina Integrada', TRUE, TRUE, FALSE, FALSE),
('Baño Completo', FALSE, TRUE, FALSE, FALSE),
('Balcón Terraza', FALSE, FALSE, FALSE, FALSE),
('Patio con Parrilla', FALSE, FALSE, TRUE, FALSE),
('Dormitorio Secundario', FALSE, TRUE, FALSE, FALSE),
('Toillette de Recepción', FALSE, FALSE, FALSE, FALSE),
('Jardín Trasero', FALSE, FALSE, TRUE, TRUE),
('Lavadero Independiente', FALSE, TRUE, FALSE, FALSE),
('Playroom / Altillo', TRUE, TRUE, FALSE, FALSE),
('Cochera Cubierta', FALSE, FALSE, FALSE, FALSE),
('Vestidor', TRUE, FALSE, FALSE, FALSE),
('Quincho Terminado', TRUE, TRUE, TRUE, FALSE),
('Estudio / Escritorio', TRUE, TRUE, FALSE, FALSE);

create table Propiedades(
id_propiedad int auto_increment,
tipoPropiedad varchar(200),
ubicacion varchar(200),
direccion varchar(200),
precio decimal(12,2),
descripcion varchar(200),
metrosCuadrados decimal(12,2),
antiguedad int,
reseña int,
expensasMensuales int,
piso int,
letraDep varchar(1),
enConstruccion boolean,
id_propietario int,
primary key(id_propiedad),
foreign key(id_propietario) references Propietarios(id_propietario)
);

INSERT INTO Propiedades (tipoPropiedad, ubicacion, direccion, precio, descripcion, metrosCuadrados, antiguedad, reseña, expensasMensuales, piso, letraDep, enConstruccion, id_propietario) VALUES
('Departamento', 'Palermo, CABA', 'Av. Santa Fe 3400', 145000.00, 'Hermoso 2 ambientes luminoso', 52.50, 10, 4, 18000, 4, 'A', FALSE, 1),
('Departamento', 'Belgrano, CABA', 'Cabildo 1200', 198000.00, 'Amplio 3 ambientes con balcón', 78.00, 5, 5, 25000, 8, 'B', FALSE, 2),
('Casa', 'San Isidro, GBA', 'Del Libertador 15000', 450000.00, 'Excelente casa con jardín y pileta', 250.00, 15, 5, 0, NULL, NULL, FALSE, 3),
('PH', 'Colegiales, CABA', 'Zapiola 800', 165000.00, 'PH sin expensas reciclado a nuevo', 65.00, 40, 4, 0, NULL, NULL, FALSE, 4),
('Departamento', 'Caballito, CABA', 'Rivadavia 5100', 115000.00, 'Monoambiente ideal inversores', 35.00, 2, 4, 12000, 1, 'C', FALSE, 5),
('Departamento', 'Puerto Madero, CABA', 'Juana Manso 400', 580000.00, 'Piso de categoría vista al río', 140.00, 8, 5, 85000, 12, 'A', FALSE, 6),
('Casa', 'Pilar, GBA', 'Barrio Cerrado El Remanso', 290000.00, 'Casa quinta moderna en lote central', 180.00, 0, 5, 45000, NULL, NULL, TRUE, 7),
('Departamento', 'Almagro, CABA', 'Corrientes 3800', 95000.00, '2 ambientes a refaccionar lateral', 45.00, 50, 3, 14000, 6, 'E', FALSE, 8),
('PH', 'Villa Urquiza, CABA', 'Bucarelli 2100', 210000.00, 'PH 4 ambientes con terraza propia', 110.00, 25, 4, 2000, NULL, NULL, FALSE, 9),
('Departamento', 'Recoleta, CABA', 'Av. Las Heras 2200', 260000.00, 'Semipiso clásico de estilo', 95.00, 60, 4, 32000, 2, 'B', FALSE, 10),
('Departamento', 'Nuñez, CABA', 'Avenida del Libertador 7000', 320000.00, '3 ambientes a estrenar amenities', 85.00, 0, 5, 28000, 10, 'A', TRUE, 11),
('Casa', 'Olivos, GBA', 'Corrientes 1200', 380000.00, 'Casa de 4 dormitorios excelente zona', 210.00, 20, 4, 0, NULL, NULL, FALSE, 12),
('Departamento', 'San Telmo, CABA', 'Defensa 800', 105000.00, 'Monoambiente divisible histórico', 42.00, 80, 3, 9000, 3, 'F', FALSE, 13),
('PH', 'Flores, CABA', 'Av. Gaona 2900', 135000.00, 'PH 3 ambientes entrada independiente', 75.00, 35, 4, 0, NULL, NULL, FALSE, 14),
('Departamento', 'Villa Crespo, CABA', 'Scalabrini Ortiz 300', 125000.00, '2 ambientes contrafrente silencioso', 48.00, 12, 4, 16000, 5, 'D', FALSE, 15);

create table Propiedad_Ambientes(
id_propiedad_ambiente int auto_increment,
id_ambiente int,
id_propiedad int,
primary key(id_propiedad_ambiente),
foreign key(id_ambiente) references Ambientes(id_ambiente),
foreign key(id_propiedad) references Propiedades(id_propiedad)
);

INSERT INTO Propiedad_Ambientes(id_ambiente, id_propiedad) VALUES
(1, 1), -- Palermo tiene Living
(2, 1), -- Palermo tiene Dormitorio Principal
(4, 1), -- Palermo tiene Baño Completo
(1, 2), -- Belgrano tiene Living
(2, 2), -- Belgrano tiene Dormitorio Principal
(7, 2), -- Belgrano tiene Dormitorio Secundario
(4, 2), -- Belgrano tiene Baño Completo
(9, 3), -- San Isidro tiene Jardín/Pileta
(14, 3), -- San Isidro tiene Quincho
(6, 4), -- Colegiales tiene Patio con Parrilla
(3, 5), -- Caballito tiene Cocina Integrada
(13, 6), -- Puerto Madero tiene Vestidor
(15, 11), -- Nuñez tiene Estudio
(5, 15), -- Villa Crespo tiene Balcón
(10, 12); -- Olivos tiene Lavadero


create table Operaciones(
id_operacion int auto_increment,
id_propiedad int,
id_agente int,
id_cliente  int,
fecha_operacion date,
tipoOperacion  varchar(200),
fecha_inicio  date,
plazo_meses int,
fecha_compra date,
primary key(id_operacion),
foreign key(id_propiedad) references Propiedades(id_propiedad),
foreign key(id_agente) references Agentes(id_agente),
foreign key(id_cliente) references Clientes(id_cliente )  
);

INSERT INTO Operaciones
(id_propiedad, id_agente, id_cliente, fecha_operacion, tipoOperacion, fecha_inicio, plazo_meses, fecha_compra)
VALUES (1, 1, 1, '2026-01-10', 'Compra', '2026-01-10', 0, '2026-01-10'),
(2, 2, 2, '2026-01-15', 'Alquiler', '2026-02-01', 12, NULL),
(3, 3, 3, '2026-02-05', 'Compra', '2026-02-05', 0, '2026-02-05'),
(4, 1, 4, '2026-02-20', 'Alquiler', '2026-03-01', 24, NULL),
(5, 2, 5, '2026-03-03', 'Compra', '2026-03-03', 0, '2026-03-03'),
(6, 3, 1, '2026-03-18', 'Alquiler', '2026-04-01', 12, NULL),
(7, 1, 2, '2026-04-02', 'Compra', '2026-04-02', 0, '2026-04-02'),
(8, 2, 3, '2026-04-15', 'Alquiler', '2026-05-01', 18, NULL),
(9, 3, 4, '2026-05-06', 'Compra', '2026-05-06', 0, '2026-05-06'),
(10, 1, 5, '2026-05-20', 'Alquiler', '2026-06-01', 24, NULL),
(11, 2, 1, '2026-06-04', 'Compra', '2026-06-04', 0, '2026-06-04'),
(12, 3, 2, '2026-06-18', 'Alquiler', '2026-07-01', 12, NULL),
(13, 1, 3, '2026-07-05', 'Compra', '2026-07-05', 0, '2026-07-05'),
(14, 2, 4, '2026-07-20', 'Alquiler', '2026-08-01', 18, NULL),
(15, 3, 5, '2026-08-10', 'Compra', '2026-08-10', 0, '2026-08-10'); 


#BUSCAR SI EXISTE LA CUJENTA

delimiter //
create procedure buscarCuentaJava(in nombreb varchar(100), in apellidob varchar(100), in contraseñab varchar(80))
begin

declare existe int;
declare idag int;
select count(*) into existe from Agentes where nombre = nombreb and apellido = apellidob and contraseña = contraseñab;

if existe = 1 then
#set tipo = "Agente";
select id_agente as "idagente" from Agentes where nombre = nombreb and apellido = apellidob and contraseña = contraseñab limit 1 ;
else if existe = 0 then
#set tipo = null;
select null as "idagente";
end if;
end if;

end //
delimiter ;





# VISTAS 



CREATE VIEW Vista_Registros AS
SELECT
    Clientes.nombre AS nombre_cliente,
    Clientes.apellido AS apellido_cliente,
    Agentes.nombre AS nombre_agente,
    Agentes.apellido AS apellido_agente,
    Operaciones.tipoOperacion,
    Operaciones.fecha_operacion,
    Operaciones.fecha_inicio,
    Operaciones.plazo_meses,
    Operaciones.fecha_compra,
    Propiedades.tipoPropiedad,
    Propiedades.ubicacion,
    Propiedades.direccion,
    Propiedades.precio,
    Propiedades.descripcion
FROM Operaciones
INNER JOIN Clientes
    ON Operaciones.id_cliente = Clientes.id_cliente
INNER JOIN Agentes
    ON Operaciones.id_agente = Agentes.id_agente
INNER JOIN Propiedades
    ON Operaciones.id_propiedad = Propiedades.id_propiedad;




CREATE VIEW Vista_Propiedades AS
SELECT
    Propiedades.*,
    Ambientes.nombre AS ambiente
FROM Propiedades
INNER JOIN Propiedad_Ambientes
    ON Propiedades.id_propiedad = Propiedad_Ambientes.id_propiedad
INNER JOIN Ambientes
    ON Propiedad_Ambientes.id_ambiente = Ambientes.id_ambiente;


CREATE VIEW Vista_Ambientes AS
SELECT *
FROM Ambientes;


CREATE VIEW mostrar_Clientes AS
SELECT nombre,apellido,dni,telefono,email,contraseña,recibo_sueldo,mascotas,hijos
FROM clientes;


CREATE VIEW mostrar_Agentes AS
SELECT nombre,apellido,dni,telefono,email,contraseña,puntuacion
FROM agentes;


CREATE VIEW mostrar_Propietarios AS
SELECT nombre,apellido,dni,telefono,correo, count(p.id_propiedad)  AS cantidad_propiedades
FROM Propietarios c
left join Propiedades p on p.id_propietario = c.id_propietario
GROUP BY c.id_propietario, c.nombre, c.apellido, c.dni, c.telefono, c.correo;


/*/
CREATE VIEW vista_alquileres AS
SELECT
    o.id_operacion,
    o.fecha_operacion,
    o.tipoOperacion,
    
    p.id_propiedad,
    p.tipo_propiedad,
    p.direccion,
    p.precio AS precio_propiedad,
    p.descripcion,

    COUNT(pa.id_ambiente) AS cantidad_ambientes

FROM Operaciones AS o
INNER JOIN Propiedades AS p
    ON o.id_propiedad = p.id_propiedad
INNER JOIN Propiedad_Ambientes AS pa
    ON p.id_propiedad = pa.id_propiedad

WHERE o.tipo_operacion = 'Alquiler'

GROUP BY
    o.id_operacion,
    o.fecha_operacion,
    o.tipoOperacion,
    o.precio,
    p.id_propiedad,
    p.tipo_propiedad,
    p.direccion,
    p.precio,
    p.descripcion;
    
   
   SELECT *
FROM vista_compras;


CREATE VIEW vista_compras AS
SELECT
    c.id_compra,
    c.fecha_compra,
    c.precio_compra,

    p.id_propiedad,
    p.direccion,
    p.localidad,
    p.superficie,
    p.cantidad_ambientes,
    p.precio,

    tp.id_tipo_propiedad,
    tp.descripcion AS tipo_propiedad

FROM compra AS c
INNER JOIN propiedad AS p
    ON c.id_propiedad = p.id_propiedad
INNER JOIN tipo_propiedad AS tp
    ON p.id_tipo_propiedad = tp.id_tipo_propiedad;
    
   
   SELECT *
FROM vista_compras;

/*/


# PROCEDIMIENTOS


DELIMITER //
CREATE PROCEDURE eliminarPropiedad(in p_id_propiedad int)
BEGIN
DELETE FROM Propiedades
WHERE id_propiedad=  p_id_propiedad;
END//
DELIMITER ;

#agregar trigger despues (error - cannot delete or update a parent row)
#CALL eliminarPropiedad(15);





DELIMITER // 
CREATE PROCEDURE agregarPropiedad (
    IN p_direccion VARCHAR(200),
    IN p_precio DECIMAL(12,2),
    IN p_tipoPropiedad VARCHAR(200),
    IN p_id_propietario INT)
BEGIN
    INSERT INTO Propiedades (direccion, precio, tipoPropiedad, id_propietario)
    VALUES (p_direccion,p_precio, p_tipoPropiedad, p_id_propietario);
END //
DELIMITER ;

CALL agregarPropiedad("Av. San Martin 1234", 1000000, “Departamento”, 5);




DELIMITER //
CREATE PROCEDURE agregarOperacion(
IN o_id_propiedad int,
IN o_id_agente int,
IN o_id_cliente int,
IN o_fecha_operacion date,
IN o_tipoOperacion VARCHAR(200),
IN o_fecha_inicio date,
IN o_plazo_meses int,
IN o_fecha_compra date)
BEGIN
	INSERT INTO Operaciones(id_propiedad,id_agente,id_cliente,fecha_operacion,tipoOperacion,fecha_inicio,plazo_meses,fecha_compra)
	VALUES(1,1,1, 23-05-2026,”Compra”, 20-01-2026,4, NULL);
END//
DELIMITER ;



DELIMITER //

CREATE PROCEDURE eliminarCliente(IN p_id_cliente INT)
BEGIN
    DELETE FROM Clientes
    WHERE id_cliente = p_id_cliente;
END //

DELIMITER ;





DELIMITER //

CREATE PROCEDURE agregarCliente(
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_dni INT,
    IN p_telefono BIGINT,
    IN p_contraseña VARCHAR(80),
    IN p_email VARCHAR(100),
    IN p_reciboSueldo BOOLEAN,
    IN p_mascotas BOOLEAN,
    IN p_hijos BOOLEAN
)
BEGIN
    INSERT INTO Clientes (
        nombre, apellido, dni, telefono, contraseña,
        email, reciboSueldo, mascotas, hijos
    )
    VALUES (
        p_nombre, p_apellido, p_dni, p_telefono, p_contraseña,
        p_email, p_reciboSueldo, p_mascotas, p_hijos
    );
END //

DELIMITER ;





DELIMITER //

CREATE PROCEDURE eliminarOperacion(IN p_id_operacion INT)
BEGIN
    DELETE FROM Operaciones
    WHERE id_operacion = p_id_operacion;
END //

DELIMITER ;




DELIMITER $$

DROP PROCEDURE IF EXISTS eliminarAgente$$

CREATE PROCEDURE eliminarAgente(
    IN p_idAgente INT
)
BEGIN
    DELETE FROM agente
    WHERE idAgente = p_idAgente;
END$$

DELIMITER ;

#agregar trigger despues (error - cannot delete or update a parent row)

#CALL eliminarAgente(1);





DELIMITER $$

DROP PROCEDURE IF EXISTS agregarAgente$$

CREATE PROCEDURE agregarAgente(IN p_nombre VARCHAR(50),IN p_apellido VARCHAR(50),IN p_dni VARCHAR(20),IN p_telefono VARCHAR(30),IN p_email VARCHAR(100))
BEGIN
    INSERT INTO agente (
        nombre,
        apellido,
        dni,
        telefono,
        email
    )
    VALUES (
        p_nombre,
        p_apellido,
        p_dni,
        p_telefono,
        p_email
    );
END$$

DELIMITER ;

CALL agregarAgente(
    'Juan',
    'Pérez',
    '30123456',
    '1123456789',
    'juan.perez@gmail.com'
);




DELIMITER $$

DROP PROCEDURE IF EXISTS eliminarPropietario$$

CREATE PROCEDURE eliminarPropietario(
    IN p_idPropietario INT
)
BEGIN
    DELETE FROM propietario
    WHERE idPropietario = p_idPropietario;
END$$

DELIMITER ;

CALL eliminarPropietario(5);





delimiter $$
drop procedure agregarPropietario $$
create procedure agregarPropietario(in nombre varchar(100), in apellido varchar(100),in dni int,in telefono bigint,in correo varchar(100))
begin
     insert into Propietarios values( default, nombre, apellido, dni, telefono, correo
       );
       
end $$
    delimiter ;
   
    call agregarPropietario( "nehuen",
        "zapato",
        32456712,
        1123457890,
        "nhu23@gmail.com"); 
















