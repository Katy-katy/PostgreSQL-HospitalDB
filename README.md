## HospitalDB

It is an assignment for "CMPS182: Introduction to Database Management Systems" - Winter 2016 class at University of California Santa Cruz.
My goal was to create a database for a Hospital using some .csv files which had the information about patients, doctors, medicines, and prescriptions.
Then I was supposed to get the answer on the four questions using query.

The database has six tables:
h_patients (patient_id, name, address, email, doctor_id,admitted)
h_medicines (medicine_id, name, price)
h_doctors (doctor_id, name, location, speciality)
h_prescriptions (prescription_id, doctor_id, medicine_id, patient_id, prescription_date)
new_medicines (name, price)
mg_medicines (medicine_id, name, price)

The last table is the result of merge h_medicines and new_medicines

I wrote a script to create the schema and all tables (create.sql), a script to load data to the tables (load.sql), and a script to merge h_medicines and new_medicines.

Then I found answers to the next questions using query[1-4].sql:

What are the names of the medicines that are in both h_medicines and new_medicines? Order the results in alphabetical order.

![Mockup for feature A](https://github.com/Katy-katy/PostgreSQL-HospitalDB/blob/master/q1.png)

What is the name and price difference for every medicine that is in both h_medicines and new_medicines? Order the results decreasing by price difference. (Price difference is obtained by taking the price from h_medicines and subtracting the price in new_medicines.)

![Mockup for feature A](https://github.com/Katy-katy/PostgreSQL-HospitalDB/blob/master/q2.png)

Listnameofpatientandnameofdoctorwheneverthatdoctorhasprescribedamedicationforthat patient. Order the result alphabetically by patient name, and then for each patient by doctor name. Even if a doctor has prescribed more than one medication for a particular patient, that patient and doctor should only appear once in the result.

![Mockup for feature A](https://github.com/Katy-katy/PostgreSQL-HospitalDB/blob/master/q3.png)

What speciality is the least common in the Hospital database, and how many doctors have that speciality? Return both the speciality and the number of doctors in one result.

![Mockup for feature A](https://github.com/Katy-katy/PostgreSQL-HospitalDB/blob/master/q4.png)
