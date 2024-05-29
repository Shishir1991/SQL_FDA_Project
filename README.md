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

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/37797abd-c378-44b5-bfe4-99f945b14938)

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/60ea88c2-3347-4d11-bfca-f5d90176f640)

3. Explore approval trends over the years based on sponsors.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/2a834a79-eca3-48b1-8330-9e13a46816d5)

4. Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/3e0245fe-d587-4192-a17c-09e7bff6d606)
 
#### Task 2: Segmentation Analysis Based on Drug MarketingStatus
1. Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/fc9c060c-1995-4fe4-98de-e06908155c14)

2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/f8b5d41e-4c91-47d4-937a-75b9d4ee22f8)
   
3. Identify the top MarketingStatus with the maximum number of applications and analyze its trend over time.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/0bf81e4b-252f-47d4-af29-15c3fba7c5fe)

#### Task 3: Analyzing Products
1. Categorize products by dosage form and analyze their distribution.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/19339c2f-214c-44ea-8e69-84b6fea5e5f3)
   
2. Calculate the total number of approvals for each dosage form and identify the most successful forms.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/0c573ba2-3eea-4452-ae24-5b6e1ec8ac75)
   
3. Investigate yearly trends related to successful forms.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/261d7044-5da5-498e-bd8d-d7aaff771cb2)

#### Task 4: Exploring Therapeutic Classes and Approval Trends
1. Analyze drug approvals based on therapeutic evaluation code (TE_Code).

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/8883bab0-ddfb-4f1b-96b1-99769b172300)

2. Determine the therapeutic evaluation code (TE_Code) with the highest number of approvals in each year.

![image](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/assets/157515610/62fe0dd8-a59d-4ccc-91c9-1a40c0fddfe4)

### Part 2: Power BI Visualizations
1. Visualize the yearly approval trends of drugs. Highlight any significant patterns and/or fluctuations, if any.
2. Explore approval trends over the years based on different sponsors. Uncover patterns and changes in approval rates among sponsors.
3. Visualize the segmentation of products based on MarketingStatus.
4. Show the total number of applications for each MarketingStatus. Enable users to filter by years and MarketingStatus for detailed analysis.
5. Analyze the grouping of drugs by dosage form. Visualize the distribution of approvals across different forms. Identify the most successful dosage form.
6. Visualize drug approvals based on therapeutic classes. Identify classes with the highest number of approvals.

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project.git
    ```
2. Import the SQL scripts into your MySQL database.
3. Open the Power BI report file ([FDA_Data_Analysis.pbix](https://github.com/shishir1991/U.S.-Food-and-Drug-Administration-FDA-SQL-Project/blob/main/SQL%20FDA%20Project/FDA_Data_Analysis.pbix)) in Power BI 
   Desktop.
4. Ensure that you have the necessary data sources available.


