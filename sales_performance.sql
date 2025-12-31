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
	retailco_store_data rsd on rtd.store_id = rsd.store_id;


CREATE TABLE retailco_products_data (
    product_id VARCHAR(10) PRIMARY KEY, 
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

INSERT INTO retailco.retailco_products_data (product_id, product_name, category) VALUES
('P001', 'Basic Essentials Men', 'Apparel Pria'),
('P002', 'Formal Wear Executive', 'Apparel Pria'),
('P003', 'Batik Heritage Series', 'Apparel Pria'),
('P004', 'Denim & Jeans Collection', 'Apparel Pria'),
('P005', 'Urban Streetwear Pria', 'Apparel Pria'),
('P006', 'Daily Blouse & Tops', 'Apparel Wanita'),
('P007', 'Feminine Skirts & Pants', 'Apparel Wanita'),
('P008', 'Casual Dress Selection', 'Apparel Wanita'),
('P009', 'Knitwear & Cardigans', 'Apparel Wanita'),
('P010', 'Office Wear Women', 'Apparel Wanita'),
('P011', 'Hijab & Scarf Series', 'Modest Wear'),
('P012', 'Modern Gamis Collection', 'Modest Wear'),
('P013', 'Tunik & Long Tops', 'Modest Wear'),
('P014', 'Prayer Sets & Mukena', 'Modest Wear'),
('P015', 'Muslimah Activewear', 'Modest Wear'),
('P016', 'Casual Footwear Men', 'Shoes'),
('P017', 'Ladies Flat & Heels', 'Shoes'),
('P018', 'Home & Sleep Sandals', 'Shoes'),
('P019', 'Kids Fashion Series', 'Kids'),
('P020', 'Backpack & Travel Bags', 'Bags'),
('P021', 'Sling Bags & Clutches', 'Bags'),
('P022', 'Leather Accessories', 'Accessories'),
('P023', 'Headwear & Hats', 'Accessories'),
('P024', 'Seasonal Accessories', 'Accessories'),
('P025', 'Premium Gift Sets', 'Accessories');
