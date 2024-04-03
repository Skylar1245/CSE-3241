
SELECT Person.Fname, Person.Lname, SUM(Rental.Quantity)
FROM Person, Community Member, Rental
WHERE Rental.member = Community_Member.User_ID AND Community_Member.User_ID = Person.ID_No
GROUP BY Community_Member.Lname;

WITH Rental_Count AS
( SELECT Person.Id_No, Person.Fname, Person.Lname, COUNT(Rental.Rental_No) AS Rental_Num
	FROM Person, Community Member, Rental
	WHERE Rental.member = Community_Member.User_ID AND Community_Member.User_ID = Person.ID_No
	GROUP BY Person.Id_No, Person.Fname, Person.Lname )

	WITH Avg_Rental AS 
		( SELECT AVG(rental_num) AS average_rent_num
		FROM Rental )

	SELECT Person.Fname, Person.Lname, Person.email
	FROM Rental_Count
	CROSS JOIN Avg_Rental
	WHERE Avg_Rental < Rental_Num 





SELECT Equipment.Desc, SUM(Rental.Rental_no)
FROM Equipment, Rental
WHERE Equipment.Serial_No = Rental.item
GROUP BY Equipment.Desc
ORDER BY SUM(Rental.Rental_no) DESC





SELECT Drone.Serial_no, Drone.Name, SUM(Drone.dist_auto) AS Dist_Sum
FROM Drone
GROUP BY Drone.Serial_No, Drone.Name
ORDER BY Dist_Sum DESC





SELECT Manufacturer.Cname, COUNT (Rental.Rental_no) AS Num_Rentals
FROM Manufacturer Rental
WHERE Manufacturer.Cname = Inventory.Serial_No AND Inventory.manufacturer = Manufacturer.Cname
GROUP BY Manufacturer_Cname
ORDER BY Num_Rentals DESC




SELECT Inventory.Serial_No, SUM(Rental.Duration) AS Total_duration, COUNT(Rental.Rental_no)
FROM Inventory, Rental
WHERE Inventory.Serial_No = Rental.Item OR Inventory.Serial_No = Rental.Drone
GROUP BY Inventory.Serial_No
ORDER BY Total_Duration





SELECT Person.Fname, Person,Lname, Person.Phone
FROM Person, Community_Member
WHERE Person.Id_No = Community_Member.User_ID AND JOIN ON
		(SELECT Rental.Renal_No, COUNT(Rental_No) AS Demand
		FROM Rental
		GROUP BY Rental.Rental_No
		ORDER BY Demand DESC)






WITH Average_Rental AS
	(SELECT AVG(Order.Value) AS Average_Rental
	FROM (
		SELECT Community_Member.User_ID, COUNT(Rental.Rental_no) AS Rental_Count
		FROM Community_Member, Rental
		WHERE Community_Member.User_ID = Rental.member 
		GROUP BY Community_Member.User_ID
		ORDER BY Rental_Count DESC) AS Total_Rental))

Above_Average AS (
	SELECT Community_Member.User_ID
	FROM Total_Rental
	JOIN Average_Rental ON Rental_Count > Average_Rental
)

SELECT Manufacturer.Cname
FROM Manufacturer, Rentals
JOIN Above_Average ON Rental.Rental_No = Average_Rental.Rental.Rental_No
WHERE Manufacturer.Cname = Inventory.manufacturer AND (Inventory.Serial_No = Rental.DRONE OR Inventory.Serial_No = Rental.Item)


