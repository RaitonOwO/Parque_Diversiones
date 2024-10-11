-- 1. Obtener todas las atracciones operativas.
SELECT * FROM `Attraction` WHERE `Status` = "Operativa"

--2. Listar todos los visitantes que se encuentran en la base de datos.
SELECT * FROM `Visitor`

--3 Mostrar los eventos programados junto con su precio.
SELECT Event.EventId, Event.Name, Event.Price from `Event`

--4. Obtener el nombre y fecha de contratación de todos los empleados

SELECT Employee.`EmployeeId`, `Employee`.`FirstName`, `Employee`.`LastName`, `Employee`.`HireDate` from `Employee`

-- 5. Listar todos los boletos vendidos y su tipo

SELECT `Ticket`.`TicketId`, `Ticket`.`PurchaseDate`, `Ticket`.`TicketType` FROM `Ticket`

-- 6. Obtener el nombre de los visitantes y las atracciones que visitaron


-- 7. Listar los empleados que participaron en eventos, junto con el nombre del evento
 
 --11. Contar cuántas visitas ha tenido cada atracción.
    SELECT `Attraction`.`Name`, COUNT(Visitor.`VisitorId`) AS total_visitantes
    FROM `Visitor`
    INNER JOIN `Attraction` ON `Visitor`.`VisitorId`
    GROUP BY `Attraction`.`Name`
