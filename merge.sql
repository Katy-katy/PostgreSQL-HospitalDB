INSERT INTO mg_medicines (medicine_id, name, 	price) SELECT h_medicines.medicine_id, h_medicines.name, h_medicines.price  FROM h_medicines;
CREATE SEQUENCE mg_medicines_seq START 80;
ALTER TABLE mg_medicinesALTER COLUMN medicine_idSET DEFAULT NEXTVAL ('mg_medicines_seq');
INSERT INTO mg_medicines (name, price) 
SELECT  n.name, n.price  
FROM new_medicines n
WHERE NOT EXISTS (SELECT* 
                   FROM   h_medicines h 
                   WHERE n.name = h.name);  
                   