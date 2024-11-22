<img width="1296" alt="image" src="https://github.com/user-attachments/assets/dacc40a7-ff29-4cda-9f9b-57ae6e23658b">

Cookie Performance Dashboard

Please download read-only xlsx file to view dashboard and filter through results. Thank you :)


Dataset

This is a secondary dataset which was sourced online. The data describes the performance of a cookie business showing the company market, product type, unit sold,cost, revenue and profit monthly in the year 2020. Excel was used to perform data cleaning using formulas, creating pivot tables,visualisations and a dashboard to provide an overview of the business performance. 

<img width="754" alt="image" src="https://github.com/user-attachments/assets/621d505a-dc20-4620-adcc-fd9d989eff1d">

Original dataset

Looking at the formular bar for J2, Excel sees the value as text as it could not produce the sum of D2:D7, this was the same for unit sold,cost, revenue and profit. 

<img width="724" alt="image" src="https://github.com/user-attachments/assets/40d5c2bc-008a-4e8e-857b-cff29496e4ff">

Data cleaning (Numeric Columns)

Using '=VALUE(RIGHT(D2,LEN(D2)-1))' to delete the '$' then change the text to value. these was repeated numeric columns.  

Looking at the date column, this is in the wrong format 02/01/2020 instead of 01/02/2020 therefore switching month and day. The day, month and year formulas were used to seperate the date part then using the date formula to concate the datevalues. 

<img width="333" alt="image" src="https://github.com/user-attachments/assets/d0e0188f-939e-4087-b5c9-b911410eded5">
Data cleaning (Date values)

After performing the above, utilising the format function to provide the desired format for the columns, went further to format the data into a table to aid the creation of pivot tables and dashboard. 

<img width="831" alt="image" src="https://github.com/user-attachments/assets/d3853575-b730-4588-91f9-d3508bff5273">

Clean data formatted into a table



