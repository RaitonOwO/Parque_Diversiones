/*******************************************************************************
   Insert Data
********************************************************************************/
-- Inserts para la tabla `Attraction`
INSERT INTO `Attraction` (`AttractionId`, `Name`, `Type`, `MinHeight`, `MaxCapacity`, `Status`) VALUES
(1, 'Montaña Rusa', 'Extrema', 120, 100, 'Operativa'),
(2, 'Casa del Terror', 'Terror', 110, 50, 'Operativa'),
(3, 'Rueda de la Fortuna', 'Familiar', 0, 80, 'En Mantenimiento'),
(4, 'Carrusel', 'Infantil', 0, 60, 'Operativa'),
(5, 'Sillas Voladoras', 'Aérea', 90, 40, 'Operativa'),
(6, 'Tobogán de Agua', 'Aventura', 100, 120, 'Operativa'),
(7, 'Salto al Vacío', 'Extrema', 130, 30, 'En Mantenimiento'),
(8, 'Tren Fantasma', 'Terror', 0, 70, 'Operativa'),
(9, 'Mini Montaña Rusa', 'Infantil', 90, 50, 'Operativa'),
(10, 'Espejos Mágicos', 'Diversión', 0, 30, 'Operativa');

-- Inserts para la tabla `Visitor`
INSERT INTO `Visitor` (`VisitorId`, `FirstName`, `LastName`, `BirthDate`, `Email`, `Phone`, `Address`, `City`, `State`, `Country`, `PostalCode`) VALUES
(1, 'Carlos', 'Pérez', '1985-07-12', 'carlos.perez@example.com', '123456789', 'Calle 123', 'Bogotá', 'Cundinamarca', 'Colombia', '110111'),
(2, 'Ana', 'Gómez', '1990-11-25', 'ana.gomez@example.com', '987654321', 'Carrera 45', 'Medellín', 'Antioquia', 'Colombia', '050001'),
(3, 'Luis', 'Martínez', '1982-03-10', 'luis.martinez@example.com', '456789123', 'Calle 67', 'Cali', 'Valle del Cauca', 'Colombia', '760001'),
(4, 'Sofía', 'Hernández', '1995-08-22', 'sofia.hernandez@example.com', '321654987', 'Avenida 34', 'Barranquilla', 'Atlántico', 'Colombia', '080001'),
(5, 'Pedro', 'Ramírez', '1978-12-14', 'pedro.ramirez@example.com', '159753456', 'Calle 8', 'Cartagena', 'Bolívar', 'Colombia', '130001'),
(6, 'María', 'Cruz', '1993-06-30', 'maria.cruz@example.com', '258963147', 'Calle 90', 'Pereira', 'Risaralda', 'Colombia', '660001'),
(7, 'Andrés', 'Fernández', '1980-01-05', 'andres.fernandez@example.com', '753159486', 'Calle 15', 'Santa Marta', 'Magdalena', 'Colombia', '470001'),
(8, 'Lucía', 'Jiménez', '1988-09-20', 'lucia.jimenez@example.com', '951357486', 'Calle 24', 'Bucaramanga', 'Santander', 'Colombia', '680001'),
(9, 'Javier', 'Alvarez', '1992-10-16', 'javier.alvarez@example.com', '852963741', 'Calle 88', 'Cali', 'Valle del Cauca', 'Colombia', '760002'),
(10, 'Natalia', 'Sánchez', '1986-04-12', 'natalia.sanchez@example.com', '147258369', 'Calle 20', 'Medellín', 'Antioquia', 'Colombia', '050002');

-- Inserts para la tabla `Ticket`
INSERT INTO `Ticket` (`TicketId`, `VisitorId`, `PurchaseDate`, `TicketType`, `Price`, `ValidFrom`, `ValidTo`) VALUES
(1, 1, '2024-10-01', 'General', 50.00, '2024-10-01', '2024-10-01'),
(2, 2, '2024-10-01', 'VIP', 100.00, '2024-10-01', '2024-10-01'),
(3, 3, '2024-10-02', 'General', 50.00, '2024-10-02', '2024-10-02'),
(4, 4, '2024-10-02', 'VIP', 100.00, '2024-10-02', '2024-10-02'),
(5, 5, '2024-10-03', 'General', 50.00, '2024-10-03', '2024-10-03'),
(6, 6, '2024-10-03', 'VIP', 100.00, '2024-10-03', '2024-10-03'),
(7, 7, '2024-10-04', 'General', 50.00, '2024-10-04', '2024-10-04'),
(8, 8, '2024-10-04', 'VIP', 100.00, '2024-10-04', '2024-10-04'),
(9, 9, '2024-10-05', 'General', 50.00, '2024-10-05', '2024-10-05'),
(10, 10, '2024-10-05', 'VIP', 100.00, '2024-10-05', '2024-10-05');

-- Inserts para la tabla `Employee`
INSERT INTO `Employee` (`EmployeeId`, `FirstName`, `LastName`, `JobTitle`, `HireDate`, `Email`, `Phone`, `Address`, `City`, `State`, `Country`, `PostalCode`) VALUES
(1, 'Juan', 'Rodríguez', 'Supervisor', '2020-02-15', 'juan.rodriguez@example.com', '321654987', 'Carrera 7', 'Bogotá', 'Cundinamarca', 'Colombia', '110111'),
(2, 'Laura', 'Mendoza', 'Operador', '2018-08-23', 'laura.mendoza@example.com', '852963741', 'Avenida 1', 'Medellín', 'Antioquia', 'Colombia', '050001'),
(3, 'Carlos', 'López', 'Mecánico', '2019-06-12', 'carlos.lopez@example.com', '951357486', 'Calle 10', 'Cali', 'Valle del Cauca', 'Colombia', '760001'),
(4, 'Marta', 'Santos', 'Cajera', '2017-04-05', 'marta.santos@example.com', '753159486', 'Calle 20', 'Barranquilla', 'Atlántico', 'Colombia', '080001'),
(5, 'Pedro', 'Díaz', 'Seguridad', '2021-10-01', 'pedro.diaz@example.com', '951357486', 'Calle 34', 'Bogotá', 'Cundinamarca', 'Colombia', '110111');


INSERT INTO `Visit` (`VisitId`, `VisitorId`, `AttractionId`, `VisitDate`, `Rating`, `Comment`) VALUES
(1,1,1, '2024-10-01', 5, "super buena"),
(2,2,2, '2024-10-01', 5, "super buena"),
(3,3,3, '2024-10-01', 5, "super buena"),
(4,4,4, '2024-10-01', 5, "super buena"),
(5,5,5, '2024-10-01', 5, "super buena"),
(6,6,6, '2024-10-01', 5, "super buena");

INSERT INTO `Event` (`EventId`, `Name`, `Description`, `EventDate`, `Price`)
(1, "evento 1", NULL, '2024-09-30 15:45:00', NULL);


INSERT INTO `EmployeeEvent` (`EmployeeId`, `EventId`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

