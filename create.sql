DROP SCHEMA lab2 CASCADE;
CREATE SCHEMA lab2;
CREATE TABLE h_patients (patient_id INTEGER, name CHAR(250), address CHAR(250), email CHAR(250), doctor_id INTEGER, admitted BOOLEAN);
CREATE TABLE h_medicines (medicine_id INTEGER, name CHAR(250), price INTEGER);
CREATE TYPE speciality AS ENUM ( 'D','OBG', 'OPH', 'PD', 'OS');
CREATE TABLE h_doctors (doctor_id INTEGER, name CHAR(250), location CHAR(250), speciality speciality);
CREATE TABLE h_prescriptions (prescription_id INTEGER, doctor_id INTEGER, medicine_id INTEGER, patient_id INTEGER, prescription_date CHAR(250)); 
CREATE TABLE new_medicines (name CHAR(250), price INTEGER);
CREATE TABLE mg_medicines (medicine_id INTEGER, name CHAR(250), 	price INTEGER);
