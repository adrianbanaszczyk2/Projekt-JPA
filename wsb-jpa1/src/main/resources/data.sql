insert into address (id, address_line1, address_line2, city, postal_code)
values (1, 'klonowa', '5A', 'krakow', '30-001'),
       (2, 'bukowa', '17B', 'krakow', '30-001'),
       (3, 'dębowa', '22C', 'krakow', '30-001'),
       (4, 'sosnowa', '8D', 'krakow', '30-001');

insert into patient (date_of_birth, id, email, first_name, last_name, patient_number, telephone_number, insured)
values ('1990-03-15', 1, 'anna.kowalska@example.com', 'Anna', 'Kowalska', '100200', '500600700', 'true'),
       ('1985-07-22', 2, 'marek.nowak@example.com', 'Marek', 'Nowak', '200300', '600700800', 'false');

insert into doctor (id, doctor_number, email, first_name, last_name, telephone_number, specialization)
values (1, '333', 'alicja.chirurg@example.com', 'Alicja', 'Rak', '700800900', 'SURGEON'),
       (2, '444', 'jan.derm@example.com', 'Jan', 'Kowalski', '800900000', 'DERMATOLOGIST');

insert into visit (doctor_id, id, patient_id, time, description)
values(1, 1, 1, '2025-03-21 09:00:00', 'kontrola po zabiegu'),
      (1, 2, 2, '2025-03-21 10:00:00', 'badanie ogólne'),
      (1, 3, 1, '2025-03-21 11:00:00', 'drobną operacja'),
      (2, 4, 1, '2025-03-21 12:00:00', 'ocena skóry'),
      (2, 5, 2, '2025-03-21 13:00:00', 'konsultacja dermatologiczna');

insert into medical_treatment (id, visit_id, description, type)
values (1, 1, 'sprawdzenie szwów', 'USG'),
       (2, 2, 'badanie jamy brzusznej', 'USG'),
       (3, 3, 'zdjęcie RTG kolana', 'RTG'),
       (4, 4, 'kontrola znamienia', 'USG'),
       (5, 5, 'badanie skóry głowy', 'USG');

insert into patient_to_address (address_id, patient_id)
values (2, 1),
       (3, 2);

insert into doctor_to_address (address_id, doctor_id)
values (2, 1),
       (4, 2);
