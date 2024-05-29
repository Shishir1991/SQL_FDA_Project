# SQL Data Analysis and Visualization with Power BI for FDA

## Table of Contents
- [Description](#description)
- [Data Schema](#data-schema)
- [Software/Tools](#softwaretools)
- [Project Objectives](#project-objectives)
  - [Part 1: SQL Queries](#part-1-sql-queries)
    - [Task 1: Identifying Approval Trends](#task-1-identifying-approval-trends)
    - [Task 2: Segmentation Analysis Based on Drug MarketingStatus](#task-2-segmentation-analysis-based-on-drug-marketingstatus)
    - [Task 3: Analyzing Products](#task-3-analyzing-products)
    - [Task 4: Exploring Therapeutic Classes and Approval Trends](#task-4-exploring-therapeutic-classes-and-approval-trends)
  - [Part 2: Power BI Visualizations](#part-2-power-bi-visualizations)
- [Installation](#installation)
  - [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Description
The FDA evaluates the safety and efficacy of drugs, biological products, and medical devices, conducts inspections, and enforces regulations. It also regulates food production and distribution, conducts research, provides public health education, and monitors and responds to emerging health risks. The FDA's mission is to protect and promote public health by ensuring the safety and effectiveness of a wide range of products and substances. iVision is collaborating with the FDA to perform data analysis on the FDA’s dataset. FDA has provided iVision with SQL script of their dataset. As an analyst at iVision, your role is to create informative reports by conducting a thorough analysis of the data using powerful tools like MySQL and Power BI.

## Data Schema

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/9047a106-8a42-42f7-9c75-57de0d36a03e)

## Software/Tools

- MySQL
- Power BI

## Project Objectives
### Part 1: SQL Queries

#### Task 1: Identifying Approval Trends
1. Determine the number of drugs approved each year and provide insights into the yearly trends.
   
   SELECT YEAR(ActionDate) AS approval_year, COUNT(*) AS num_drugs_approved
   
   FROM regactiondate
   
   GROUP BY approval_year
   
   ORDER BY approval_year;

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/0d41983b-6e41-49b5-96b1-7b1fd37a9271)


3. Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively.

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

4. Explore approval trends over the years based on sponsors.

   SELECT YEAR(ActionDate) AS approval_year, SponsorApplicant, COUNT(*) AS num_drugs_approved
   FROM regactiondate ra
   JOIN application ap ON ra.ApplNo = ap.ApplNo
   GROUP BY approval_year, ap.SponsorApplicant
   ORDER BY approval_year, num_drugs_approved DESC;

5. Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.

   SELECT YEAR(ActionDate) AS approval_year, SponsorApplicant, COUNT(*) AS num_drugs_approved
    FROM regactiondate ra
    JOIN application ap ON ra.ApplNo = ap.ApplNo
    WHERE ra.ActionDate BETWEEN '1939-01-01' AND '1960-12-31‘
    GROUP BY approval_year, ap.SponsorApplicant
    ORDER BY approval_year, num_drugs_approved DESC;

#### Task 2: Segmentation Analysis Based on Drug MarketingStatus
1. Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.

   SELECT ProductMktStatus, COUNT(*) AS num_products
   FROM product
   GROUP BY ProductMktStatus;

2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.

    SELECT YEAR(ActionDate) AS application_year, ProductMktStatus, COUNT(*) AS num_applications
    FROM regactiondate ra
    JOIN product p ON ra.ApplNo = p.ApplNo
    WHERE YEAR(ActionDate) > 2010
    GROUP BY application_year, ProductMktStatus
    ORDER BY application_year, num_applications DESC;
   
3. Identify the top MarketingStatus with the maximum number of applications and analyze its trend over time.

    SELECT ProductMktStatus, YEAR(ActionDate) AS application_year, COUNT(*) AS num_applications
    FROM regactiondate ra
    JOIN product p ON ra.ApplNo = p.ApplNo
    GROUP BY ProductMktStatus, application_year
    ORDER BY num_applications DESC
    LIMIT 5;

#### Task 3: Analyzing Products
1. Categorize products by dosage form and analyze their distribution.

   SELECT Dosage, COUNT(*) AS num_products
   FROM product
   GROUP BY Dosage
   ORDER BY num_products DESC;
   
2. Calculate the total number of approvals for each dosage form and identify the most successful forms.

   SELECT Dosage, COUNT(*) AS num_approvals
   FROM product p
   JOIN application a ON p.ApplNo = a.ApplNo
   WHERE a.ActionType = 'AP‘
   GROUP BY Dosage
   ORDER BY num_approvals DESC;
   
3. Investigate yearly trends related to successful forms.

   SELECT YEAR(ActionDate) AS approval_year, Dosage, COUNT(*) AS num_approvals
   FROM regactiondate ra
   JOIN product p ON ra.ApplNo = p.ApplNo
   WHERE ra.ActionType = 'AP‘
   GROUP BY approval_year, Dosage
   ORDER BY approval_year, num_approvals DESC;

#### Task 4: Exploring Therapeutic Classes and Approval Trends
1. Analyze drug approvals based on therapeutic evaluation code (TE_Code).

   SELECT TECode, COUNT(*) AS num_approvals
      FROM product_tecode pte
      JOIN regactiondate ra ON pte.ApplNo = ra.ApplNo
      WHERE ActionType = 'AP‘
      GROUP BY TECode
      ORDER BY num_approvals DESC;

2. Determine the therapeutic evaluation code (TE_Code) with the highest number of approvals in each year.

    SELECT YEAR(ActionDate) AS approval_year, TECode, COUNT(*) AS num_approvals
    FROM regactiondate ra
    JOIN product_tecode pte ON ra.ApplNo = pte.ApplNo
    WHERE ActionType = 'AP‘
    GROUP BY approval_year, TECode
    ORDER BY approval_year, num_approvals DESC;
![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/1e0e37dc-a348-4d8c-96fe-73c0da9f0d23)
 

### Part 2: Power BI Visualizations
1. Visualize the yearly approval trends of drugs. Highlight any significant patterns and/or fluctuations, if any.
2. Explore approval trends over the years based on different sponsors. Uncover patterns and changes in approval rates among sponsors.
3. Visualize the segmentation of products based on MarketingStatus.
4. Show the total number of applications for each MarketingStatus. Enable users to filter by years and MarketingStatus for detailed analysis.
5. Analyze the grouping of drugs by dosage form. Visualize the distribution of approvals across different forms. Identify the most successful dosage form.
6. Visualize drug approvals based on therapeutic classes. Identify classes with the highest number of approvals.



