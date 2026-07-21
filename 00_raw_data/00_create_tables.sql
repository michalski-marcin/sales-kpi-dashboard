-- =============================================
-- IMPORT DATA FROM CSV FILES
-- =============================================

-- customers table

CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    country VARCHAR(100),
    age SMALLINT,
    gender VARCHAR(20),
    membership_tier VARCHAR(20),
    registration_date VARCHAR(10),
    total_orders INTEGER,
    total_spend_usd NUMERIC(10,2),
    avg_order_value_usd NUMERIC(10,2),
    days_since_last_purchase INTEGER,
    preferred_category VARCHAR(100),
    preferred_device VARCHAR(20),
    preferred_payment_method VARCHAR(50),
    acquisition_channel VARCHAR(50),
    reviews_given INTEGER,
    avg_review_score NUMERIC(2,1),
    returns_made INTEGER,
    wishlist_items INTEGER,
    newsletter_subscribed BOOLEAN,
    churned BOOLEAN
);

-- orders table

CREATE TABLE orders (
	order_id VARCHAR(10) PRIMARY KEY,
	customer_id VARCHAR(10) REFERENCES customers(customer_id),
	order_date VARCHAR(10),
	year SMALLINT,
	month SMALLINT,
	quarter VARCHAR(2),
	day_of_week VARCHAR(10),
	product_name VARCHAR(100),
	category VARCHAR(50),
	unit_price_usd NUMERIC(10,2),
	quantity SMALLINT,
	subtotal_usd NUMERIC(10,2),
	discount_pct NUMERIC(5,2),
	discount_amount_usd NUMERIC(10,2),
	shipping_fee_usd NUMERIC(10,2),
	tax_pct NUMERIC(5,2),
	tax_amount_usd NUMERIC(10,2),
	total_amount_usd NUMERIC(10,2),
	payment_method VARCHAR(20),
	device_used VARCHAR(10),
	delivery_days SMALLINT,
	delivery_date VARCHAR(10),
	order_status VARCHAR(20),
	returned BOOLEAN,
	customer_rating NUMERIC(2,1),
	session_duration_minutes NUMERIC(10,2),
	pages_viewed_before_purchase SMALLINT,
	is_repeat_customer BOOLEAN
);
