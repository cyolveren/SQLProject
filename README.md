<b>THE GROUP</b> <br>
Our ISYS 464 semester project group consisted of four members: Eric Suchy, Patrick Siojo and Cemre Yolveren. Our group met face-to-face about four times throughout the semester, and we completed most of the work together as a group. Here is a breakdown of each group member’s contribution:<br>

<b>Eric Suchy</b><br>
First draft of relational schema<br> 
Generated SQL code for creating tables with group in lab<br>
Generated SQL code for queries<br>
Final draft of relational schema<br>
Paper write-up<br>
<br>
<b>Patrick Siojo</b><br>
Generated SQL code for creating tables with group in lab<br>
Generated SQL code for loading tables<br>
Generated SQL code for queries<br>
Debugging SQL code<br>
Log files<br>
<br>
<b>Cemre Yolveren</b><br>
First draft of ERD<br>
Generated SQL code for creating tables with group in lab<br>
Generated SQL code for loading tables<br>
Final draft of ERD<br>
Text files<br>
<br>
<br>

<b>THE PROJECT</b><br>
Our project represents a self-storage company called JPEC Self-Storage. We are a small chain with three locations, twelve employees, and approximately 3,000 customers, 20 of which are represented in our database. We decided to include only 20 customers in our database instead of all 3,000 in order to avoid unnecessarily long load files. We determined that 20 customers is just enough for us to generate meaningful and relatively complex queries for our project. JPEC Self-Storage does have the potential to expand dramatically, so we made sure that all ID numbers contain enough digits to accommodate potentially large growth. 

<b>THE TABLES</b><br>
All of our tables or entities contain a randomly generated ID number as their primary key attribute. Each ID number is set to a different number of digits for each table so that ID numbers can be identified, and so that the number of human errors during data entry is minimized. This will prevent an employee from entering a customer ID in an order ID field, for example, because order IDs must contain nine digits instead of 10. It also ensures that ID numbers are entered with the correct number of digits in order to minimize type-os and maximize data integrity.<br> 
EMPLOYEE Each employee record indicates the name, wage, start date, hours worked, and location where each employee operates. Employee IDs are 6 digits long, meaning we can have a maximum of 999,999 employees. Again, it is unlikely that our staff will exceed this amount anytime in the near future. Although employees may operate at multiple locations, each is assigned a home-based location ID for identification and payroll purposes. <br>
LOCATION Each record in the location table represents an individual storage location. We chose to make our location IDs 4 digits long. This means that our business could own and operate a maximum of 9,999 stores. Since our #1 competitor has approximately 2,500 stores nationwide, it is a safe bet that four digits is enough to accommodate substantial growth in the future. The units attribute indicates the total number of units at each location. <br>
ORDER Orders contain an eight digit ID number as a primary key, and storeID, unitID, and customer ID as foreign keys. Although customers can place many orders, each unit they rent must have a unique order ID number. This means that separate transactions must occur for each unit if a customer decides to rent more than one unit at a time.  <br>
CUSTOMER Customer IDs are the primary key for the customer table and are 10 digit long, giving us a potential total of nearly one billion customers, which is plenty for our purposes. Each customer has a name, address, phone number, and email address. <br>
UNIT Unit IDs are five characters long, and must also contain the StoreID in the primary key. This is because unit numbers may be duplicated across multiple locations. For example, unit #A1234 may exist at both the Florida and California locations, so requiring the StoreID in the primary key will eliminate any anomalies when querying data. Units also have rate, length, and width so that rate per square foot can be calculated in a query. <br>
MERCHANDISE Product IDs are a nine-digit long primary key. Other merchandise info includes a product name, quantity on hand, cost price, store price, and supplier ID. <br>
<br>
<b>THE QUERIES</b><br>
1. This query will display which employees work at StoreID 0001. This may come in handy if a manager needs to send a message to everyone at a particular location. <br>
2. This query will show us all units that are available to rent within the entire company that are under $100.00 per month. This could be useful if a customer needs a storage unit but is on a budget and doesn’t care where the unit is located.<br>
3. Querying customer orders that were paid by anything except cash would be useful if there is a discrepancy in a batch processing transaction record, and a manager needs to group orders by payment type in order to identify the erroneous transaction.<br>
4. Our fourth query is designed to give management a record of net monthly sales for a particular location. This query shows how much money was made on new rentals in a given month, and would be useful for tracking profitable time periods.<br>
5. If a company’s cyber security has come into question because it may have been hacked, a responsible company would want to alert their customers. This query will display all customers along with their email addresses so that JPEC can send out a mass email to customers who have used debit cards at their location.<br>
6. This query may be useful if a company policy changes pertaining to units with a rate of over $100.00. We may decide to implement a policy that requires tenants with units over $100.00 to have a different insurance policy. This could be due to California and Nevada enacting laws requiring insurance amounts on rental properties.<br>
7. This is a payroll query designed to generate the total salary paid to all employees for a given pay period. We simply multiply each employees wage by the number of hours and display with two decimal places.<br>
8. We may need to determine our profit margin from inventory on hand to forecast profits for a given month or quarter. We do this by subtracting the cost from the retail price of each and adding up the total difference.<br>
