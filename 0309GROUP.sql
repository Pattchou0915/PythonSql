/*取出PAYMENT的所有客戶資料的Coutomer_id(不重複)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id