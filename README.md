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
  
![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/ae0ce4e6-fc5a-4eb8-a1e3-89e95e9f7150)


2. Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively.

    

3. Explore approval trends over the years based on sponsors.



4. Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.

  

#### Task 2: Segmentation Analysis Based on Drug MarketingStatus
1. Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.



2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.


   
3. Identify the top MarketingStatus with the maximum number of applications and analyze its trend over time.



#### Task 3: Analyzing Products
1. Categorize products by dosage form and analyze their distribution.


   
2. Calculate the total number of approvals for each dosage form and identify the most successful forms.

 
   
3. Investigate yearly trends related to successful forms.



#### Task 4: Exploring Therapeutic Classes and Approval Trends
1. Analyze drug approvals based on therapeutic evaluation code (TE_Code).

  

2. Determine the therapeutic evaluation code (TE_Code) with the highest number of approvals in each year.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/1e0e37dc-a348-4d8c-96fe-73c0da9f0d23)
 

### Part 2: Power BI Visualizations
1. Visualize the yearly approval trends of drugs. Highlight any significant patterns and/or fluctuations, if any.
2. Explore approval trends over the years based on different sponsors. Uncover patterns and changes in approval rates among sponsors.
3. Visualize the segmentation of products based on MarketingStatus.
4. Show the total number of applications for each MarketingStatus. Enable users to filter by years and MarketingStatus for detailed analysis.
5. Analyze the grouping of drugs by dosage form. Visualize the distribution of approvals across different forms. Identify the most successful dosage form.
6. Visualize drug approvals based on therapeutic classes. Identify classes with the highest number of approvals.



