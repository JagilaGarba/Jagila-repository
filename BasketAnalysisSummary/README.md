Dataset 
This data was sourced from Kaggle.  The data describes customers purchase history in a grocery store. The data was downloaded in a csv format. It consists of 7,501 rows and 20 columns. Excel and SQL were used to answer some questions. 

  <img width="920" alt="image" src="https://github.com/user-attachments/assets/5afc10f9-3067-45f1-8090-5f4834930f79">
                                                                                                           
Original data format. 

Analysis

<img width="927" alt="image" src="https://github.com/user-attachments/assets/82afc1d7-5c43-46d0-9360-d15ae41e0c65">

Transformed dataset using Excel
Data preparation was done with Excel by adding order numbers (Primary Key) and column names. This step provided better understanding of the dataset by assigning a unique identifier to each customer order also identifier for the number of products gotten by each customer. The transformed data was imported into SQL server. 
The goal of this project is to answer the following questions:
1.	What are the top 20 most purchased products?
2.	Average Items purchased in the store? 
3.	What two products are sold together?
4.	What three products are sold together? 
To answer these questions, the data was transformed to long format from wide format.  After changing the data format, null values were removed as that represented customers did not purchase up to 20 items. 

<img width="305" alt="image" src="https://github.com/user-attachments/assets/685fbf34-d585-40fd-9a47-76be3e48bcc0">

Data transformed to long format.
Question 1: The subquery picks the distinct products and count, and the outer select statement queries the 20 products, order by statement produces the count of product sold in descending order. 
 Mineral water was sold the highest in this store with a count of 1788.

<img width="594" alt="image" src="https://github.com/user-attachments/assets/ba6442cb-b31b-417c-a5b4-28596d1d48a9">
 

Question 2: Before answering question two, confirmed the item sold in each order then wrote a subquery to get the average of items purchased which is rounded off to 3. 

<img width="528" alt="image" src="https://github.com/user-attachments/assets/3dc10115-4d17-4e15-b13a-a500aa1cc785">

Question 3: This was accomplished by performing a self-join and using ‘<’ and ‘<!’ to remove duplicates from the join, therefore producing the count of how many orders had the same products bought. 

 <img width="565" alt="image" src="https://github.com/user-attachments/assets/39cc5e0c-6022-47c1-9e5d-b69f7c34188e">

Question 4: This was accomplished by performing a self-join twice to accommodate the 3rd most bought product. 

<img width="607" alt="image" src="https://github.com/user-attachments/assets/5b9cd009-b620-438a-ae8a-ff280a3e2376">


Conclusion 
Basket analysis is getting more awareness as this helps retailers understand customer purchasing behaviour and purchasing trend. From question 1, we can see the top 20 products sold which includes mineral water, eggs, spaghetti and others then looking at question 3, we see almost half of the top 20 product sold is not included when looking at 2 items bought and same goes when 3 items are bought. This shows how looking at just one metric is limited in understanding customers behaviour. Question 2 can help us see how many items are bought on average by customers (3). Therefore, understanding customer behaviours requires continuous analysis, basket analysis can help retailers understand their products (Knowing what products customers likes to buy together) as well as teach them how best to cross-sell which can be selling two/three products at a discounted price or move fast selling products with slow selling products.  

