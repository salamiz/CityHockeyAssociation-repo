/* Zulkifli Salami */
/* 100850581 */

/* City Hockey Association Database Queries */
use CityHockeyAssociation;
Go
/* Query 1 */
/* First Name, Last Name, Fee Owed */


select PlayerFirst, PlayerLast, (300 - FeesPaid) as Outstanding from tblCompPlayers
where PlayerIsResident < 1 and FeesPaid < 300
order by Outstanding desc
Go

/* Query 2 */
/* Coaches living in 2 specific cities */

select CoachFirst, CoachLast, CityName 
from tblCoaches coach join tblCity city on coach.CoachCity = city.CityID
where CityName in ('whitby' , 'oshawa')
Go

/* Query 3 */
/* Average amount paid so far, sum of all payments, sum of all outstanding fees */
select avg(feespaid) as Average, sum(feespaid) as Collected, sum(150-feespaid) as Outstanding from tblRecPlayers
Go

/* Query 4 */
/* Products that haven't been ordered yet */

select ProductName, MSRP
from tblProducts 
where ProductID NOT IN (Select ProductID from tblOrderedItems)
Go

/* Query 5 */
/* List of products with price less than or equal to the average product MSRP */
select ProductName, MSRP from tblProducts
where MSRP <= (select avg (MSRP) from tblProducts)
Go

/* Query 6 */
/*List of players playing in both Rec and Comp Leagues */
select PlayerFirst, PlayerLast, PlayerBirthDate from tblRecPlayers
intersect
select PlayerFirst, PlayerLast, PlayerBirthDate from tblCompPlayers
Go

/* Query 7 */
/*Use union to calculate and display fees outstanding from both Rec and Comp tables*/
select PlayerID, PlayerFirst, FeesPaid, (300 - FeesPaid) as Outstanding from tblCompPlayers
where FeesPaid < 300
Union
select PlayerID, PlayerFirst, FeesPaid, (125 - FeesPaid) as Outstanding from tblRecPlayers
where FeesPaid < 125
order by Outstanding desc
Go