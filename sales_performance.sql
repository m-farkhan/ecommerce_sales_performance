select
	rtd.invoice_id,
	rtd.invoice_date,
	rtd.customer_id,
	rcd.customer_type,
	rpd.product_name,
	rpd.category,
	rtd.unit_price,
	rtd.quantity,
	rsd.store_name,
	rsd.city,
	rtd.gross_amount,
	rtd.discount_amount,
	rtd.created_by
from
	retailco_transactions_data rtd
join
	retailco_customer_data rcd on rtd.customer_id = rcd.customer_id
join
	retailco_products_data rpd on rtd.product_id = rpd.product_id 
join
	retailco_store_data rsd on rtd.store_id = rsd.store_id
	