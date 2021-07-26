# SQL Analyst Case Study (Hashim Al-Battah)
## Background
For this case study, I was tasked with creating a database from a collection of CSVs that represent a mock company's operations database and a dashboard representing key performance indicators from queries. While I usually use PostgresSQL for relational databases and Tableau for Dashboarding, I decided to challenge myself by using the Google Cloud Platform (BigQuery & Google Data Studios) to help integrate myself with the tools the company uses. 

## The Journey 
##### Visulizing and Building the Database
I started off by creating an Entity Relation Diagram to help me visualize the relationships within the database. I then created database on BigQuery and running queries to create the tables. Because BigQuery is an OLAP database, primary keys and foreign keys were not supported but we have an ERD to help visualize it a bit. 
![ERD](/Images/ERD_of_CSVs.PNG)
##### Writing the Queries
Minor syntax differences threw me off at first, but I was quickly able to adapt to it. Afterwards, I imported the data and created queries based off of the questions provided for the assignment. These queries are all contained within .sql files for reference.
##### Creating the Dashboard and Visualizations
Once that was completed, I began creating my dashboard on Google Data Studios. There was a bit of a learning curve at first, but it helped that it had many similar elements of both Tableau and Excel. After connecting GDS to my BigQuery database, I started to create my visualizations using custom queries. 
##### Accelerating the Dashboard with BigQuery BI Engine
As I creating them, I learned that you can use BigQuery's BI Engine platform to accelerate your dashboard. So with my free $300 credit, I reserved an engine for a month at only $30. Once I was completed, this integration with my visuals, I worked on cleaning up my queries and dashboards.
##### Dashboard Snapshot
![Dashboard](/Images/Dashboard.PNG)

## The Business Analysis QA & Visuals
##### Visualization showing Order Volume over Time by Month
![Order Volume](/Images/order_vol.PNG)

Q: How is the business performing, based on order trends?
A: It seems to be improving at a constant rate, but then exponentially improves after Q3 of 1997.

Q: Why might the most recent month appear to be underperforming relative to the
prior month?
A: This might be due to the fact that the data was not collected after a certain point, and that point appeared to be during May 1998, towards the end of Q2 of that year. 

Q: What quarter’s orders had the most freight? How much was ordered that
quarter? What year/month had the highest average freight for an order?
A: Q1 of 1998 with 182 orders. The year with the highest average freight is 1998. The month with the highest average freight is May 1997.
##### Visualization showing total revenues over time
![Total Rev.](/Images/total_rev.PNG)

Q: How is the revenue composition changing over time?
A: Revenue was growing steadily but began to exponentially rise after Q3 of 1997, it is changing in a favorable manner over time. If more data was collected, we would get a better idea of what the rest of 1998 would have looked like.
##### Visualization showing Quarterly Revenue brought in by Company's Sales Representatives
![Sales Reps](/Images/sales_rep_rev.PNG)

Q: Which Sales Rep is performing best, why?
A: Margaret Peacock appears to be performing the best, with a total revenue of $250,187.45. There might be a few reasons, but one is that she has made consistent sales every month since the company started, unlike some other employees who made no sales some months. This might have been due to the territory she worked in, which could have provided her with more leads. 

Q: Which Sales Rep is performing poorest, why?
A: Michael Suyama appears to be performing the worst, with a total revenue of $78,198.10. When you see his sales per month, you'll find that he made no sales in October 1996 and May 1998. This can't be the sole factor, though, as Anne Dodsworth had no sales for 5 separate months, and still brought in about $4000 more. This could be due to the territory that Michael works in, which might have made it difficult to find leads.
##### Visualization showing top 5 Customers
![Top 5](/Images/top_5.PNG)

Q: How are they performing over the most recent 6 months relative to the prior
6-month period?
A: It appears to vary amongst them. For the top customer (Ernst Handel), they appear to steadily increase the whole time. As for the second (Save-a-lot Markets), they didn't make an order for a whole quarter during the most recent 6 months, in comparison to the prior months where they did. For the third (QUICK-Stop), they made orders the most recent 6 months, and for 3 months prior to that, but the first 3 months have no orders. The last two haven't made any purchases for the latter half of the recent 6 months, but the order total was higher than the prior months. Rattle Snake Canyon did not even make any orders for the prior 6 months.

Q: Which customers are not performing as well as they used to? How so?
A: QUICK-Stop appears to be dropping in order totals in the last quarter, in comparison it's last few quarters. Save-a-lot Markets is about the same, where their order totals were great until 1998 where they didn't make an order until Q2.
##### Visualization showing New Metric for Company
![World Map](/Images/geo-chart.PNG)

Q: Briefly explain why this metric is important to the business.
A: This helps monitor revenue composition across all of the countries we have clients in. This can come in handy for potential client acquisitions, as well, in terms of marketing. 

Q: Briefly explain what actionable follow-up you would recommend to help this metric improve, and how that would help the business
A: An actionable follow-up would be increasing marketing efforts where revenue composition is low, in order to increase customer acquisitions for an increase in revenue. In addition, potentially moving operations to where revenues are the highest. Another follow-up could be using countries with the highest revenues for testing new products with these bigger markets, for proof of concept before being available to other countries. 

## Conclusion
It was a great experience learning how to use BigQuery SQL, BigQuery BI Engine, and Google Data Studio. I am excited for Google to release their SQL Interface for BI Engine, as it would further accelerate the custom queries, as those are not supported at the moment. Currently, it is in a preview phase that requires an enrollment form, which I couldn't do with my limited time. I hope this shows my determination when it comes to learning new tools and overcoming such obstacles. I have included .sql files with my creation of the tables and queries. The Dashboard will be shared through Google Data Studios. Thank you for taking the time to view my analysis!





