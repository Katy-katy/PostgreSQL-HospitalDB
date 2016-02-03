SELECT  n.name, h.price - n.price 
FROM new_medicines n, h_medicines h 
WHERE n.name = h.name
ORDER BY h.price - n.price DESC; 
