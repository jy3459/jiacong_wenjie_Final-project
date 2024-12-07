
# Final Project: IEOR E4501 - Fall 2024

## Project Overview
This project investigates ride patterns and behaviors in New York City by analyzing Yellow Taxi and Uber data from January 2020 to August 2024, integrated with historical weather data. It demonstrates a complete data analytics workflow, including data preprocessing, database management with SQLite, SQL-based exploration, and visualization in a Jupyter Notebook. The project highlights skills in data cleaning, storage, analysis, and insight generation.

## What Has Been Implemented
The project consists of four main components:
1. **Data Preprocessing**: Automating the download, cleaning, and sampling of extensive datasets for efficient analysis.
2. **Data Storage**: Designing and populating a SQLite database with structured tables for Yellow Taxi, Uber, and weather data.
3. **Data Analysis**: Executing SQL queries to explore ride patterns, distance trends, and the influence of weather conditions.
4. **Data Visualization**: Creating meaningful visualizations such as scatter plots, bar charts, and geospatial maps to present key insights.

The deliverables include a Jupyter Notebook, SQL query scripts, and a database schema file.

## Group Information
- **Group Name**: Project Group 7
- **UNIs**: [jy3459, wl2792]

## Instructions for Use
Instructions for Use
1. Clone the repository and ensure you have Python 3.10 or higher installed.
2. Install required packages using the requirements.txt file.
3. Open the Jupyter Notebook and run the cells sequentially, ensuring that all dependencies are correctly configured.
4. Examine the provided SQL queries and visualizations for a comprehensive understanding of the analysis.

## Necessary Files
- **`Dataset/weather_data`**: Contains 5 years of historical weather data that were manually provided instead of programmatically downloaded.
- **`Final Project group 7.ipynb`**: The primary Jupyter Notebook for executing the project's workflow and analysis.
- **`requirements.txt`**: A file listing the dependencies required to run the project.
- **`.gitignore`**: Defines files and directories to be ignored during version control commits.
- **`taxi_zone shp`**: Resources used to map location IDs from taxi and Uber datasets to geographic coordinates (latitude and longitude).
- **`schema.sql`**: Outlines the structure and schema of the database tables used in the project.
- **`query files (*.sql)`**: Contains SQL scripts essential for executing specific data queries.

    