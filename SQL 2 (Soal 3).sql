INSERT INTO item_bought (buyer, item) VALUES
  ('Abdul', 'iPhone'),
  ('Budi', 'Samsung'),
  ('Charlie', 'Realme'),
  ('Dimas', 'Realme'),
  ('Erik', 'Samsung'),
  ('Fikri', 'Realme'),
  ('Gerry', 'Huawei'),
  ('Hans', 'Huawei'),
  ('Ihsan', 'Huawei'),
  ('Jerome', 'Realme'),
  ('Kevin', 'Huawei');
WITH item_counts AS (
  SELECT item, COUNT(*) AS purchase_count
  FROM item_bought
  GROUP BY item
)

SELECT item
FROM item_counts
WHERE purchase_count < (
  SELECT MAX(purchase_count)
  FROM item_counts
) AND purchase_count > (
  SELECT MIN(purchase_count)
  FROM item_counts
);