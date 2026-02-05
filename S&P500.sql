--ranks_by_assets 
SELECT top 20
	name,
	revenues_b,
	employees,
	rank,
	assets
FROM dbo.[S&P]
ORDER BY assets DESC


---revenue_change
SELECT 
	name,
	RANK,
	revenues_b,
	revenuechange,
	profits,
	profitschange
FROM dbo.[S&P]
where revenuechange is not null
and profitschange is not null
order by revenuechange desc


--Ratios AS 
SELECT top 100
	name,
	revenues_b,
	employees,
	rank,
	previou_srank,
	profits/revenues_B *100 Profit_margin ,
	profits/assets * 100 return_on_assets,
	revenues_B/assets Assets_turnover,
	revenues_B*1000000/employees AS revenue_by_employees,
	profits*1000000/employees AS profit_by_employee,
	market_value/revenues_B price_to_sale,
	market_value/profits Price_to_earning
	FROM dbo.[S&P]


	--rank_change
	SELECT top 20
	name,
	rank,
	profits,
	profitschange,
	previou_srank,
	revenues_b,
	revenuechange,
	assets,
	previou_srank-rank rank_change
FROM dbo.[S&P]
where profitschange is not null
order by previou_srank-rank desc


--ranks_by_assets 
SELECT top 20
	name,
	revenues_b,
	employees,
	rank,
	assets
FROM dbo.[S&P]
ORDER BY assets DESC


--rank_by_revenue 
SELECT top 20
	name,
	revenues_b,
	employees,
	rank
FROM dbo.[S&P]
ORDER BY revenues_B DESC