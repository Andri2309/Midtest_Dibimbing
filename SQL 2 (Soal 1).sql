INSERT INTO item_bought (buyer, item) VALUES
  ('Abdul', 'iPhone'),
  ('Budi', 'Samsung'),
  ('Charlie', 'Realme'),
  ('Dimas', 'Realme'),
  ('Erik', 'Samsung'),
  ('Fikri', 'Realme');
SELECT item
FROM item_bought
GROUP BY item
ORDER BY COUNT(*) DESC
LIMIT 1 OFFSET 1;