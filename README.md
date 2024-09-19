# Study of analysis of churning in a Californian TELCO.


### This is a data analysis project within the Ironhack Data Analysis Bootcamp, carried out by Luis H. Rodriguez, David Moreno.
<p align="center">

</p>

## Team Members

| Name             | LinkedIn Profile | Brief Description |
|------------------|------------------|-------------------|
| David Moreno     | In building      |  Economy Statistics & Data anlysis  |
| Luis H. Rodríguez  | [\[Link\]](https://www.linkedin.com/in/luis-h-rodr%C3%ADguez-fuentes/) | Data Analyst |

### Business Problem
As a prominent telecommunications provider in California, we are committed to utilizing big data to enhance our customer retention strategies and improve our service offerings. To this end, we have embarked on a comprehensive analysis of customer churn, leveraging data from various sources, including customer feedback, service usage patterns, and competitive benchmarks.

The goal of this project is to identify the underlying factors contributing to customer attrition and to develop targeted strategies to address these issues. We aim to analyze trends and patterns in customer behavior to understand why clients are leaving our services and to formulate actionable insights to improve customer satisfaction and loyalty. This initiative is driven by the hypothesis that by gaining a deeper understanding of churn dynamics, we can implement more effective retention strategies and strengthen our market position in the highly competitive telecommunications industry.

### Relevant links

- Proyecto de Análisis en Kaggel: [\[Link to source\]](https://www.kaggle.com/datasets/datacertlaboratoria/sql-proyecto-2-prdida-de-clientes-en-telco)
- Canva: [\[Link to dashboard\]]()

## Methodology
This project aims to analyze customer churn trends in California, focusing on various factors influencing customer departure. The goal is to apply these insights to enhance our customer retention strategies. Below is a description of the methods used for data collection, analysis, and visualization.

### 1. Data collection
The customer data has been collected from kaggel resources. We have obtained detailed records of customer interactions, service usage, and feedback relevant to our analysis.

### 2. Data cleaning and pre-processing in MySQL
We have addressed data quality issues stemming from inconsistencies in the original datasets, including incomplete customer records and formatting errors. Additionally, we have standardized and clarified column names for improved readability. We have also adjusted data types to ensure accuracy and compatibility with our analysis.

### 3. Data analysis
Using the pandas library over all but also geopandas, numpy and statmodel. We have developed a series of functions and lines of code focused on analyzing data that may be useful for our business cause.
Logistic Regression Model which tell us how do categorical variables affect to the main target, the revenue average from both kind of customers (who churn and who not) and a HeatMap to show where bigger number of chrning are coming from. In this way we could offer the "insurance company" a better perspective of California State where it could be more urgent to apply marketing measures.

### 4. Data visualization
We have used matplotlib.pyplot as basic graphic visualization library, but we also used folium for heatmaps and shapely.geometry. This allow us to graphic some results that we consired important to keep going into our data analysis. 

## Tools & technology

- **Programming Language**: Python, MySQL
- **Libraries**: Pandas, Folium, Numpy, geopandas, Numpy and Statmodel.
- **Visualization**: Matplotlib
- **Data Storage**: CSV, DBM.

## Problems we have faced

The first conflict we found was about to find out a nice data that it didn't need to be hard to clean or formatting due to our main target of this proyect is to face working in SQL enviroment. 

The second issue to consider has been the partition of the queries. We had to develop different and spread queries to execute different orders for formatting and cleaning data, all of this in the aim to get a absolutely clean and safe main table which we can work with no difficulties from. 

The final issue we faced was the develop a correct connector from SQL to Python in VSCode (finding some troubles in the libraries), and choosing the main variable which were object of analysis.