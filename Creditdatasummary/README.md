Dataset

This data was gotten from Kaggle and PySpark was used for analysis. The data describes the customers of a credit card company by their demographics and other factors as seen below. The data also identifies attrited customers of this company, this is identified by Attrition_Flag attribute, where 1 = existing customers and 0 = attrited customer. The data consist of over 10,000 rows and 23 columns.  


<img width="785" alt="image" src="https://github.com/user-attachments/assets/6d401962-c617-4633-b592-b004a646b430">

Analysis 

The goal of the project was to understand the characteristics of attrited customers and predicting customers who are likely to churn. This project started with data cleaning which included checking for duplicates, null values, removing unwanted fields also checking the target value - Attrition_flag. 
To accomplish the first part of the project goal, exploratory analysis was performed on attrited customers as this helped to understand their characteristics. Each field was grouped to identify similarities among attrited customers, visualisation was provided using libraries such as Matplotlib, Seaborn and Pixie dust library.  
After exploratory analysis, the categorical data was encoded to numerical values using SkLearn library, feature selection was performed to know which attributes has a higher correlation with the target value, Correlation heat map and extra tree classifier were applied, furthermore some attribute showed multicollinearity and VIF was used to test this. After feature selection, 11 fields were selected for prediction as they had a better correlation with the target value. 
It was noticed while checking the target value, there is a high data imbalance between the distribution of existing and attrited customer. Therefore, data oversampling was done using the synthetic minority oversampling technique (SMOTE). 80/20 train and test split were done. 

Prior to model building, hyper parameter tuning was done to select the best parameters for each model building. Logistic regression, Decision tree, Random Forest and MLP classifier. Prediction was done on the oversampled data as well as the original data; this enabled the validation of sampling technique handling imbalanced data. 
The best result for this project was the oversampled data trained with random forest classifier. This produced the following evaluation metrics - recall of 79%, precision of 67%, F1 score of 72%, 90% accuracy and AUC score of 86%.

Result and Recommendation

While handling customer attrition is the basis of customer relationship management, prior to thinking of predicting customer attrition, understanding customer behaviour is needed for every business to develop a good relationship with their customers as it is better and cheaper to retain customers than to acquire new customers. 
For this project, customers are identified either as existing or attrited, customer attrition was described to provide understanding of customer behaviour to the business. Description was achieved by exploring the attrited customers by their statistical descriptions and count. It was discovered that females, graduates, married, blue card users, customers aged between 36 – 55, customers with 2- 3 dependents, customers having 3 purchased products and customers with 3 years relationship with the financial institution have a higher tendency of leaving the credit card services. 

Recommendations are provided from exploration performed to understand attrited customer behaviour: 

•	Predicted customers should be contacted first and target marketing should be performed as they have the highest inclination of leaving the service.

•	Customers total transaction count, total revolving balance and change in total transaction count Q4/Q1 should be monitored as these features have highest effect on attrition. (please see code and visualisations)

•	Provision of products specially prepared for married and single customers, graduates and high school customers, customers with dependents. These products should be explained with its benefits as it seems some customers lack information and understanding of the products.

•	Additional products or incentives should be added to the blue card services as it has the highest number of customers leaving the credit card service.

•	Female customers and customers aged between 36 – 55 should be focused on as they have higher tendency of leaving the service. Products beneficial to these customers should be marketed.

•	Most of the customers purchase other products in the financial institution, these customers should be checked on either by emails, feedback forms or other mediums to determine, if they are satisfied with the other products as those products can yield their loyalty shift to other competitors. 

•	All customers with inactivity should be contacted but customers having 2-3 months inactivity should be focused on. Also, by the end of customers third year with the institution, there should be a review of customers facilities and marketing of new products and services that can be beneficial as 26.4% of customers left the service by their third year.

•	Financial institution should provide incentives for customers to promote their usage of card as some customers do not use their facilities. For example, a 10% discount can be given to customers when they shop from a popular brand site or pay bills.
