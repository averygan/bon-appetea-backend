USE mydb;

INSERT INTO dishes (name, description, price, discount, image, availability, vendorID)
VALUES
('Doner Kebab', 'Tombik bread, lettuce, picked cabbage slaw, tomato, onions, pickles, garlic mayo & herbed yoghurt', 11.90, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/55877461.jpg', 1, 1),
('4 Pcs Falafel', 'Deep-fried fava beans, chickpea croquettes served with tahina & pickles', 6.90, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/55867953.jpg', 1, 1),
('Kebab Wrap', 'Flour tortilla, lettuce, pickled cabbage slaw, onions, herbed yoghurt & garlic mayo', 9.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/55877460.jpg', 0, 1),
('Hummus', 'Chickpeas, tahini, lemon juice & extra virgin olive oil. Served with 1 pc pita bread', 7.9, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/55867878.jpg', 1, 1),
('Fattoush Salad', 'Mediterranean salad with sumac seasoning & pita', 9.90, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/55867962.jpg', 1, 1),
('Kebab Bowl', 'Grilled kebab meat served over rice or salad, topped with fresh veggies and sauces like tzatziki or tahini', 12.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/55877463.jpg', 1, 1),

('SIGNATURE BIRRIA (LIMITED)', 'Signature slow-cooked oxtail & beef brisket braised in a spicy Birria broth...', 26.00, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/57737069.jpg', 1, 2),
('Mala Chicken', 'Chuan Chuan style grilled chicken thigh...', 18.00, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/43904834.jpg', 1, 2),
('Butter Prawn', 'Cold prawn roll style garlic butter sauce...', 27.00, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/43904833.jpg', 1, 2),
('Loaded Nachos', 'With choice of Pulled-beef brisket or Rendang mushrooms...', 20.00, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/43904839.jpg', 1, 2),
('Signature Rendang Pulled Mushroom', 'Signature pulled-mushroom slow-cooked...', 20.00, 0.5, 'https://images.deliveryhero.io/image/fd-sg/Products/43904835.jpg', 1, 2),
('Vegetable Stir Fry', 'Vietnamese style stir fry vegetables...', 16.00, 0.5, 'https://images.deliveryhero.io/image/fd-sg/Products/43904836.jpg', 1, 2),

('CS1. Classic Sichuan Pig Trotter Soup 老妈蹄花汤', '1 Bowl 1碗', 15.90, 0.5, 'https://images.deliveryhero.io/image/fd-sg/Products/6797448.jpg', 1, 3),
('B13. Fried Chicken Feed 脆脆掌中宝', 'Crispy, juicy fried chicken tenders...', 4.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/37401503.jpg', 0, 3),
('CV3. Stir-Fried Beijing Cabbage 油渣包菜', 'Crisp Beijing cabbage stir-fried...', 14.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/37401478.jpg', 0, 3),
('CM1. Homemade Bun With Iberian Black Pork 手工酱肉包', '3PCs 3粒', 8.90, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/37401484.jpg', 1, 3),
('CM2. Fried Rice With Egg & Grandma''s Pickles 外婆灵魂炒饭', '1 Plate 1份', 15.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/37401483.jpg', 0, 3),
('C5. Cold Served Rabbit In Zigong Style 冷吃兔', 'Spicy Sichuan dish...', 13.90, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/44790937.jpg', 0, 3),

('ShackBurger (Single)', 'Cheeseburger (single beef patty)...', 10.90, 0.5, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/c1076b731e4df6aafe1d2f689a892433.jpg', 1, 4),
('Cheese Fries', 'Cheese sauce packed separately', 7.30, 0.3, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/360a9c462148e079432e721d93bc8dec.jpg', 1, 4),
('Chicken Bites 6 Count - Honey Mustard Sauce', 'Pieces of all-natural chicken breast...', 7.60, 0, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/224fc7b65ad082a2ff98c24ab12f73bd.jpg', 1, 4),
('SmokeShack (Single)', 'Cheeseburger (single beef patty) with bacon...', 12.90, 0, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/204d80a00335bc1f30d1eea4af5aede0.jpg', 1, 4),
('White Pepper Beef (Single)', 'Monterey Jack cheeseburger topped...', 12.30, 0.3, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/a10d5e9d45b31a175c253bf404ff2a19.jpg', 1, 4),
('White Pepper Fries', 'Topped with Sarawak white pepper sauce...', 7.10, 0.5, 'https://images.deliveryhero.io/image/menu-import-gateway-prd/regions/AS/chains/tabsquare_sg/359ca09abd413176120de12ed274fa3e.jpg', 1, 4),

('20. Siew Mai 烧卖', 'Special requests may be accommodated...', 3.00, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/52566601.jpg', 1, 5),
('21. Prawn Dumpling 虾饺', 'Special requests may be accommodated...', 3.40, 0.5, 'https://images.deliveryhero.io/image/fd-sg/Products/52566602.jpg', 1, 5),
('34. Century Egg Pork Porridge 皮蛋瘦肉粥', 'Main ingredients, pork & century egg', 3.60, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/52566613.jpg', 1, 5),
('Xiang Xi Dumpling 香茜饺', 'Handmade xiang xi dumpling...', 3.00, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/52566604.jpg', 1, 5),
('3. Char Siew Pau 叉烧包 (2pcs)', 'Mini. 2pcs Handmade mini char siew pau...', 2.20, 0, 'https://images.deliveryhero.io/image/fd-sg/Products/52566592.jpg', 1, 5),
('31. Chee Cheong Fun-prawn 猪肠粉-虾', 'Steamed & thin savoury rolled up rice noodle sheets...', 3.40, 0.3, 'https://images.deliveryhero.io/image/fd-sg/Products/52566611.jpg', 1, 5);
