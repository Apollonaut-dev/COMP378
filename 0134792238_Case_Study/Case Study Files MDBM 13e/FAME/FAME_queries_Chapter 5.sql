/* Modern Database Management, 13e                            */
/* Project Case                                               */
/* Examples for Ch 5 case exercise 5-100               		  */
/* January 10, 2018                                           */
/* Please send any comments to Heikki Topi, htopi@bentley.edu */

/* Question a */
SELECT  AgreementNbr, AgreementDate, GrossAmount
FROM    Agreement_T
WHERE   GrossAmount BETWEEN 1500 AND 2000;

/* Question b */
SELECT  CustomerID, CustomerName
FROM    Customer_T
WHERE   CustomerName LIKE '%Arts%';

/* Question c */
SELECT  ArtistID, LastName, FirstName, YearOfBirth, ArtistType
FROM    Artist_T
WHERE   State IN ('PA','NJ') AND 
        Gender = 'F';

/* Question d */
SELECT  ArtistID, StartDate, EndDate, RoyaltyPerc
FROM    Contract_T
WHERE   RoyaltyPerc > 20 AND
        StartDate <= SYSDATE AND
        EndDate >= SYSDATE
ORDER BY ArtistID;

/* Question e */
SELECT  SUM(Amount)
FROM    CustomerPayment_T
WHERE   CPaymentDate >= '1-FEB-2018' AND CPaymentDate <= '31-MAR-2018';

/* Question f */
SELECT  ArtistID
FROM    ArtistPayment_T
WHERE   Amount > 2000 AND
        APaymentDate BETWEEN '1-JAN-2018' AND '31-MAR-2018';
        
/* Question g */
SELECT  VenueID, COUNT(EventID)
FROM    Event_T
GROUP BY VenueID;

/* Question h */
SELECT    VenueID, COUNT(EventID)
FROM      Event_T
GROUP BY  VenueID
HAVING    COUNT(EventID) >= 2;

/* Question i */
SELECT    ExpenseID, Description, Amount, ExpenseType
FROM      Expense_T
WHERE     (Amount < 100 AND ExpenseType = 'M') OR
          (Amount < 50 AND ExpenseType = 'A');
        

