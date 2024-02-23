use mysqlproject;

# Task 1: Identifying Approval Trends
#1.
#Determine the number of drugs approved each year and provide insights into the yearly trends.
SELECT YEAR(ActionDate) AS approval_year, COUNT(*) AS num_drugs_approved
FROM regactiondate
GROUP BY approval_year
ORDER BY approval_year;

#2.
#Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively.

SELECT YEAR(ActionDate) AS approval_year, COUNT(*) AS num_drugs_approved
FROM regactiondate
GROUP BY approval_year
ORDER BY num_drugs_approved DESC
LIMIT 3;

SELECT YEAR(ActionDate) AS approval_year, COUNT(*) AS num_drugs_approved
FROM regactiondate
GROUP BY approval_year
ORDER BY num_drugs_approved ASC
LIMIT 3;


#3.
#Explore approval trends over the years based on sponsors.
SELECT YEAR(ActionDate) AS approval_year, SponsorApplicant, COUNT(*) AS num_drugs_approved
FROM regactiondate ra
JOIN application ap ON ra.ApplNo = ap.ApplNo
GROUP BY approval_year, ap.SponsorApplicant
ORDER BY approval_year, num_drugs_approved DESC;


#4.
#Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.

SELECT YEAR(ActionDate) AS approval_year, SponsorApplicant, COUNT(*) AS num_drugs_approved
FROM regactiondate ra
JOIN application ap ON ra.ApplNo = ap.ApplNo
WHERE ra.ActionDate BETWEEN '1939-01-01' AND '1960-12-31'
GROUP BY approval_year, ap.SponsorApplicant
ORDER BY approval_year, num_drugs_approved DESC;

#Task 2: Segmentation Analysis Based on Drug MarketingStatus
#1.
#Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.
SELECT ProductMktStatus, COUNT(*) AS num_products
FROM product
GROUP BY ProductMktStatus;

#2.
#Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.
SELECT YEAR(ActionDate) AS application_year, ProductMktStatus, COUNT(*) AS num_applications
FROM regactiondate ra
JOIN product p ON ra.ApplNo = p.ApplNo
WHERE YEAR(ActionDate) > 2010
GROUP BY application_year, ProductMktStatus
ORDER BY application_year, num_applications DESC;

#3.
#Identify the top MarketingStatus with the maximum number of applications and analyze its trend over time.
SELECT ProductMktStatus, YEAR(ActionDate) AS application_year, COUNT(*) AS num_applications
FROM regactiondate ra
JOIN product p ON ra.ApplNo = p.ApplNo
GROUP BY ProductMktStatus, application_year
ORDER BY num_applications DESC
LIMIT 5;

#Task 3: Analyzing Products
#1.
#Categorize Products by dosage form and analyze their distribution.
SELECT Dosage, COUNT(*) AS num_products
FROM product
GROUP BY Dosage
ORDER BY num_products DESC;

#2.
#Calculate the total number of approvals for each dosage form and identify the most successful forms.
SELECT Dosage, COUNT(*) AS num_approvals
FROM product p
JOIN application a ON p.ApplNo = a.ApplNo
WHERE a.ActionType = 'AP'
GROUP BY Dosage
ORDER BY num_approvals DESC;

#3.
#Investigate yearly trends related to successful forms.
SELECT YEAR(ActionDate) AS approval_year, Dosage, COUNT(*) AS num_approvals
FROM regactiondate ra
JOIN product p ON ra.ApplNo = p.ApplNo
WHERE ra.ActionType = 'AP'
GROUP BY approval_year, Dosage
ORDER BY approval_year, num_approvals DESC;

#Task 4: Exploring Therapeutic Classes and Approval Trends
#1.
#Analyze drug approvals based on therapeutic evaluation code (TE_Code).
SELECT TECode, COUNT(*) AS num_approvals
FROM product_tecode pte
JOIN regactiondate ra ON pte.ApplNo = ra.ApplNo
WHERE ActionType = 'AP'
GROUP BY TECode
ORDER BY num_approvals DESC;

#2.
#Determine the therapeutic evaluation code (TE_Code) with the highest number of Approvals in each year.
SELECT YEAR(ActionDate) AS approval_year, TECode, COUNT(*) AS num_approvals
FROM regactiondate ra
JOIN product_tecode pte ON ra.ApplNo = pte.ApplNo
WHERE ActionType = 'AP'
GROUP BY approval_year, TECode
ORDER BY approval_year, num_approvals DESC;
