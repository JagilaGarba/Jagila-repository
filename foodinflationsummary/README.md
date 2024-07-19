Dataset

This data was gotten from Kaggle. The data consists of over 4,000 rows and 8 columns. The data describes various countries food price inflation index also providing the open, close, high and low index of each month from 2007 to 2023. The data was filtered to meet the goal of the project.  

<img width="487" alt="image" src="https://github.com/user-attachments/assets/b770ea1e-46b7-4166-b9ea-c26441ae258a">

Analysis 

The goal of this project was to forecast the Nigerian food price index for the next 12 months. This project started by performing data preparation which involved filtering the data to get only Nigeria food price index, dropping attributes that were not required,then exploratory data analysis,this helped the selection of time series models for forecasting. This project involved using libraries such as Matplotlib, Pandas, Seaborn, SkLearn, Stats models. Prior to Model building, trend, seasonality and stationarity was analysed by decomposing the inflation index attribute, plotting partial and autocorrelation graphs also performing stationarity tests. This project was able to compare various variation of ARIMA models,Naïve method, Simple moving averages and Exponential smoothing. At the end of this project, the naïve method provided the base data point for the forecast and 12 moving averages provided the best forecast to fit the test data split. Therefore the 12 moving average model was implemented to forecast for the next 12 months.

Result and Recommendation 

Food is essential for everyone, so food prices affect the whole population. Understanding and anticipating these prices are essential for not only individuals but for the economy, hence food price being an essential metric for inflation in a country. Furthermore, it is seen in most economy that Customer price inflation (CPI) is used to measure the inflation in the country and food price is one of the most important considerations or weights of CPI. In Nigeria, food and non-alcoholic beverages category influences the CPI by 51.8% (NBS) showing how important the prices of food can influence the economy. 
In Nigeria, which is agrarian economy, there is low agricultural productivity due to poor infrastructure, lack of funding, lack of efficient transportation systems, bad roads, harsh government policies and exchange rates. Due to low agricultural productivity and other causes which affects the production of food in the nation, this has further caused a high demand without supply for food products this leads to an increase in food imports to meet the food demand requirements.

Recommendations are provided from research about Nigerian food prices, its causes and prediction of the next 12 months 

•	Using the predicted inflation values to help enlighten the economy of how to prepare for food inflation in the coming season, for example subsidy can be applied to agricultural inputs (such as fertilizers) or certain food products which will help reduce food prices especially from March 2024 there is a constant increase from then. 
      
<img width="394" alt="image" src="https://github.com/user-attachments/assets/dabaea97-48fb-4fd5-ac3a-88557fd988b7">

 
•	More funding is required to improve agricultural productivity in the nation. An increase in productivity will lead to increase in food supply which will improve and meet food demand. More collaboration of companies and different state government to support the improvement of agricultural productivity.
•	Better transport system, especially for agriculture products to be transported to different locations. This will enable better and faster circulation of food commodity, therefore an increase in supply. 
•	Encourage consumers to purchase nigerian produced food commodity as this will encourage farmers and decrease the neglect of agricultural production from farmers. 
