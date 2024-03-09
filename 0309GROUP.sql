/*取出Payment的所有客戶資料的Coutomer_id(不重複)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id

/*取出Payment所有客戶的應收帳款總和,SUM()*/
SELECT customer_id, SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
ORDER BY 總合 DESC;


SELECT first_name || ' ' ||last_name AS full_name,
	SUM(amount) AS 總合
    FROM payment LEFT JOIN customer ON payment.customer_id=customer.customer_id
    GROUP BY full_name
    ORDER BY 總合 DESC;

SELECT first_name || ' ' ||last_name AS full_name,
	SUM(amount) AS 總合
    FROM payment LEFT JOIN customer USING (customer_id)
    GROUP BY full_name
    HAVING SUM(amount) >= 200
	ORDER BY 總合 DESC;











