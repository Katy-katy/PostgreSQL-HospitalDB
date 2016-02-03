SELECT  n.name  
FROM new_medicines n
WHERE EXISTS (SELECT* 
                   FROM   h_medicines h 
                   WHERE n.name = h.name)  
ORDER BY n.name;                   
                