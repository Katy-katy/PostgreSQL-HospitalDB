SELECT DISTINCT p.name, d.name
FROM h_patients p, h_doctors d, h_prescriptions pr
WHERE p.patient_id = pr.patient_id AND d.doctor_id = pr.doctor_id
ORDER BY  p.name, d.name;      
