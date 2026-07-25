-- --Q10. What is the revenue contribution of each age group? 


SELECT
sum(purchase_amount) as total_revenue,
    CASE
        WHEN age BETWEEN 18 AND 25 THEN 'YOUNG ADULT'
        WHEN age BETWEEN 26 AND 35 THEN 'ADULT'
        WHEN age BETWEEN 36 AND 50 then 'SENIOR'
        ELSE 'OLD AGE'
    END AS Age_group
FROM
    customer
group by Age_group
order by total_revenue desc;

