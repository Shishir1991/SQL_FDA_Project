![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/2da1a4eb-8473-433b-a2b0-62f5696a30de)# SQL Data Analysis and Visualization with Power BI for FDA

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

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/9047a106-8a42-42f7-9c75-57de0d36a03e)

## Software/Tools

- MySQL
- Power BI

## Project Objectives

### Part 1: SQL Queries

#### Task 1: Identifying Approval Trends
1. Determine the number of drugs approved each year and provide insights into the yearly trends.
  
![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/ae0ce4e6-fc5a-4eb8-a1e3-89e95e9f7150)

2. Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/37797abd-c378-44b5-bfe4-99f945b14938)

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/60ea88c2-3347-4d11-bfca-f5d90176f640)

3. Explore approval trends over the years based on sponsors.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/2a834a79-eca3-48b1-8330-9e13a46816d5)

4. Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/3e0245fe-d587-4192-a17c-09e7bff6d606)
 
#### Task 2: Segmentation Analysis Based on Drug MarketingStatus
1. Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/fc9c060c-1995-4fe4-98de-e06908155c14)

2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/f8b5d41e-4c91-47d4-937a-75b9d4ee22f8)
   
3. Identify the top MarketingStatus with the maximum number of applications and analyze its trend over time.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/0bf81e4b-252f-47d4-af29-15c3fba7c5fe)

#### Task 3: Analyzing Products
1. Categorize products by dosage form and analyze their distribution.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/19339c2f-214c-44ea-8e69-84b6fea5e5f3)
   
2. Calculate the total number of approvals for each dosage form and identify the most successful forms.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/0c573ba2-3eea-4452-ae24-5b6e1ec8ac75)
   
3. Investigate yearly trends related to successful forms.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/261d7044-5da5-498e-bd8d-d7aaff771cb2)

#### Task 4: Exploring Therapeutic Classes and Approval Trends
1. Analyze drug approvals based on therapeutic evaluation code (TE_Code).

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/8883bab0-ddfb-4f1b-96b1-99769b172300)

2. Determine the therapeutic evaluation code (TE_Code) with the highest number of approvals in each year.

![image](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/62fe0dd8-a59d-4ccc-91c9-1a40c0fddfe4)

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
    git clone https://github.com/shishir1991/FDA_MySQL_Project.git
    ```
2. Import the SQL scripts into your MySQL database.
3. Open the Power BI report file ([FDA_Data_Analysis.pbix](https://github.com/shishir1991/FDA_MySQL_Project/blob/main/SQL%20FDA%20Project/FDA_Data_Analysis.pbix)) in Power BI 
   Desktop.
4. Ensure that you have the necessary data sources available.

### Prerequisites

- MySQL
- Power BI Desktop
- Data source files ([FDA_Dataset](https://github.com/shishir1991/FDA_MySQL_Project/tree/main/SQL%20FDA%20Project))

## Usage

1. Import the SQL scripts into your MySQL database to set up the data.
2. Open the ([FDA_Data_Analysis.pbix](https://github.com/shishir1991/FDA_MySQL_Project/blob/main/SQL%20FDA%20Project/FDA_Data_Analysis.pbix)) file in Power BI Desktop.
3. Navigate through the different pages of the report to explore various insights:
    - **Approval Trends**: Yearly approval trends of drugs.
    - **Sponsor Trends**: Approval trends based on different sponsors.
    - **MarketingStatus Segmentation**: Segmentation of products based on MarketingStatus.
    - **MarketingStatus Analysis**: Show the total number of applications for each MarketingStatus. Enable users to filter by years and MarketingStatus for detailed analysis.
    - **Dosage Form Analysis**: Distribution and success of different dosage forms.
    - **Therapeutic Classes**: Approvals based on therapeutic classes.

## Screenshots

### Power BI Report
1.

![Yearly Approval Trends](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/a0902ede-1b72-4a07-ad83-6a53516ac7ea)

As per the Statistics, the approved drugs are highest in the year 2002 i.e. 5661. The total count of Drugs is 129.07K. From year 1939 to 2016 which includes Both AP and TA ( Tentative Drugs).

2.

![Sponsor Trends]((https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/e766ccb6-714b-4a5c-95f8-6a3dc729949c))

- According to this visualization, the most reliable and having the highest approvals over many years is WATSON LABS which gives the consistent of 1033 approvals each year followed by another sponsor SANDOZ having 636 approval each year.

3.

![MarketingStatus Segmentation](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/e707c206-77ca-40d6-878c-0a72f3cb7ac7))

- The visualization shows us the different pharmaceutically equivalent products as per the Market Status.
- Here the product type AB (10422) and AP(2782) have the highest numbers in Market status 1.
- AB are Drug products for which actual or potential bioequivalence problems have been resolved with adequate in vivo and/or in vitro evidence supporting bioequivalence.
- AP are products whose therapeutically equivalent rating is assigned as they are manufactured in accordance with Current Good Manufacturing Practice regulations and meet the other requirements of their approved applications

4.

![MarketingStatus Analysis](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/bc25e20a-4a91-4455-bd47-fa46d40ef4ca)

These visuals shows the number of applications for each Market status and Year.
As per the chart, year 2002 has the maximum no. of overall  applications i.e. 5778 while year 2014 has the most applications in Market Status 1 i.e. 3949.

5.

![Dosage Form Analysis](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/b4a758a8-4512-4ba5-8972-7784423c80a0)

- After analyzation it shows that 10MG Dosage form has the maximum types of Drugs i.e. 1193 followed by 100MG Dosage form with 1028 Drug types. So these two forms have the most use for customers depends on the needs.
- As per the Bar chart, the maximum approval are given to the 10MG Dosage form in both AP i.e. 6055 and in TA i.e. 273. The low dosage like 10MG and 50 MG are most successful as maximum variety of medicines are made and even for small 
  medical needs. 

6.

![Therapeutic Classes](https://github.com/shishir1991/FDA_MySQL_Project/assets/157515610/171c4c0e-bf59-43e3-825f-19f4d4cc4c7d)

Based on the therapeutic classes, Drugs type AB has the highest number of approval rate i.e. 28599 followed by the Drug type AP with approvals of 12527.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

Created by Shishir Kherod - feel free to contact me at shishirdma@gmail.com.

