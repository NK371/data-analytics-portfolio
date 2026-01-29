INSERT INTO Customers (customer_id, name, email, city) VALUES
(1, 'Amit Sharma',   'amit.sharma@example.com',   'Delhi'),
(2, 'Priya Verma',   'priya.verma@example.com',   'Mumbai'),
(3, 'Rahul Singh',   'rahul.singh@example.com',   'Bengaluru'),
(4, 'Neha Gupta',    'neha.gupta@example.com',    'Ghaziabad'),
(5, 'Rohan Mehta',   'rohan.mehta@example.com',   'Pune'),
(6, 'Sneha Iyer',    'sneha.iyer@example.com',    'Chennai'),
(7, 'Vikas Kumar',   'vikas.kumar@example.com',   'Noida'),
(8, 'Anjali Nair',   'anjali.nair@example.com',   'Kolkata'),
(9, 'Mohit Jain',    'mohit.jain@example.com',    'Delhi'),
(10,'Kriti Tiwari',  'kriti.tiwari@example.com',  'Jaipur');

INSERT INTO Products (product_id, product_name, category, price) VALUES
(1, 'Parle-G Biscuits 200g',     'Snacks',      15.00),
(2, 'Lays Chips 100g',           'Snacks',      35.00),
(3, 'Amul Taaza Milk 1L',        'Dairy',       58.00),
(4, 'Fortune Sunflower Oil 1L',  'Grocery',    145.00),
(5, 'Aashirvaad Atta 5kg',       'Grocery',    260.00),
(6, 'Colgate Toothpaste 200g',   'Personal Care',110.00),
(7, 'Dove Soap 100g',            'Personal Care', 45.00),
(8, 'Tata Salt 1kg',             'Grocery',      28.00),
(9, 'Sprite 750ml',              'Beverages',    40.00),
(10,'Red Label Tea 500g',        'Beverages',   230.00),
(11,'Maggi Noodles 70g',         'Snacks',      14.00),
(12,'Surf Excel 1kg',            'Household',   190.00);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1,  1, '2025-01-03', 260.00),
(2,  2, '2025-01-04', 145.00),
(3,  3, '2025-01-05', 188.00),
(4,  4, '2025-01-05',  87.00),
(5,  1, '2025-01-06', 325.00),
(6,  5, '2025-01-07',  72.00),
(7,  6, '2025-01-08', 435.00),
(8,  7, '2025-01-09', 102.00),
(9,  8, '2025-01-10', 290.00),
(10, 9, '2025-01-11',  69.00),
(11, 3, '2025-01-12', 460.00),
(12,10,'2025-01-13', 158.00);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, item_price) VALUES
-- Order 1 (Amit)
(1,  1, 5, 1, 260.00),

-- Order 2 (Priya)
(2,  2, 4, 1, 145.00),

-- Order 3 (Rahul)
(3,  3, 3, 2, 58.00),   -- 116
(4,  3, 2, 2, 36.00),   -- 72  -> total 188

-- Order 4 (Neha)
(5,  4, 1, 2, 15.00),   -- 30
(6,  4, 9, 1, 40.00),   -- 40
(7,  4,11, 1, 17.00),   -- 17  -> total 87

-- Order 5 (Amit again)
(8,  5, 5, 1, 260.00),
(9,  5,10, 1, 65.00),   -- discounted tea -> total 325

-- Order 6 (Rohan)
(10, 6,11, 3, 24.00),   -- 72

-- Order 7 (Sneha)
(11, 7, 4, 2, 145.00),  -- 290
(12, 7, 6, 1, 145.00),  -- 145
(13, 7, 7, 2,  50.00),  -- 100 -> total 435

-- Order 8 (Vikas)
(14, 8, 2, 2, 30.00),   -- 60
(15, 8, 9, 1, 42.00),   -- 42 -> total 102

-- Order 9 (Anjali)
(16, 9, 3, 2, 58.00),   -- 116
(17, 9, 8, 2, 27.00),   -- 54
(18, 9, 1, 4, 30.00),   -- 120 -> total 290

-- Order 10 (Mohit)
(19,10,11, 2, 22.50),   -- 45
(20,10, 2, 2, 12.00),   -- 24
(21,10, 9, 1,  0.00),   -- free drink
-- 45 + 24 = 69 (sprite free)

-- Order 11 (Rahul second order)
(22,11, 5, 1, 260.00),
(23,11,12, 1, 200.00),  -- slight promo
(24,11, 7,  2,  0.00),  -- free soaps
-- 260 + 200 = 460

-- Order 12 (Kriti)
(25,12, 3, 1, 58.00),
(26,12, 6, 1,100.00);   -- total 158
