INSERT INTO person (name,email,phone,home_phone,address,person_number)
VALUES
  ('Austin Bishop','nisl.quisque@outlook.org','+31429402334','(617) 370-8131','2695 Dolor St.','718849145827'),
  ('Jena Barnes','feugiat.tellus.lorem@google.net','+73640533267','1-862-506-5193','Ap #832-4714 Aenean Ave','685704384023'),
  ('Scarlett Harvey','amet.luctus@hotmail.couk','+67092386333','(755) 128-7888','591-7564 Pede. Avenue','656967358041'),
  ('Raphael Williamson','euismod.mauris.eu@hotmail.couk','+23295145760','(657) 233-9657','787-9967 Vitae St.','600871714764'),
  ('Brock Paul','vitae.purus@outlook.com','+78755528623','1-722-224-2056','642-5939 Dictum St.','616754866167'),
  ('Merritt James','dolor.quam@aol.ca','+74892229452','1-956-382-9328','Ap #974-663 Auctor Av.','788477190064'),
  ('Wesley Medina','eros@protonmail.couk','+54818485133','(538) 767-2893','Ap #303-1818 Laoreet Rd.','635320515443'),
  ('Wynne Eaton','dictum.augue@yahoo.org','+37644565640','1-577-746-1716','Ap #834-8480 Vehicula. Av.','212839286167'),
  ('Lillith Dean','quam@aol.org','+79538105307','(448) 688-9105','P.O. Box 386, 7602 Mauris St.','246713936842'),
  ('Hadassah Lowery','risus@yahoo.ca','+64210622973','(625) 555-5141','422-2483 Egestas Street','876555163729'),
  ('Berk Rowe','mauris.quis@outlook.couk','+13813153244','+32192965301','501-4352 Magna. Av.','084303276608'),
  ('Farrah Morse','magna@protonmail.couk','+05647916555','+19773434302','202-6103 Ultricies Avenue','378338516422'),
  ('Drake House','urna.justo.faucibus@yahoo.com','+53748581907','+70198757946','947-1678 Elit, Rd.','948488419973'),
  ('Moana Conrad','morbi.quis@aol.couk','+11029163750','+04831713948','2070 Cum St.','236775923602'),
  ('Dane Greer','sagittis.placerat@hotmail.org','+87137336814','+81267752086','686-917 Arcu. Avenue','341256676214'),
  ('Garth Frank','nam.ligula.elit@google.edu','+96681611348','+12713764756','P.O. Box 240, 9719 Consequat Ave','402361824772'),
  ('Alvin Newman','mauris.sagittis@google.com','+27819715182','+48662572243','165-4188 Elit St.','516443244441'),
  ('Sierra Terry','nullam.feugiat@aol.org','+50498612945','+17727847622','971-5615 Et, Street','327334204522'),
  ('Louis Gilmore','placerat.velit@hotmail.net','+47726837427','+67851154190','238-3872 Venenatis St.','276619073537'),
  ('Lillian Hooper','accumsan.convallis@icloud.org','+76766337434','+76350815899','P.O. Box 359, 5739 Volutpat. Avenue','137068886165');

INSERT INTO time_slot (date,time,length)
VALUES
  ('2023-01-15','21:05','90'),
  ('2023-02-08','19:22','60'),
  ('2023-03-26','18:13','60'),
  ('2023-03-08','18:13','60'),
  ('2023-07-26','18:13','60'),
  ('2023-07-08','18:53','90'),
  ('2023-07-22','19:17','60'),
  ('2023-10-03','19:17','60'),
  ('2023-11-02','19:17','60'),
  ('2023-12-04','19:17','60'),
  ('2023-12-04','19:17','60'),
  ('2023-12-07','19:17','60'),
  ('2023-12-07','19:17','60'),
  ('2023-12-07','19:17','60'),
  ('2023-12-03','19:17','60'),
  ('2023-12-03','19:17','60'),
  ('2023-12-02','19:17','60'),
  ('2023-12-01','19:17','60'),
  ('2023-12-11','19:17','60'),
  ('2023-12-11','19:17','60'),
  ('2023-12-12','19:17','60'),
  ('2023-12-12','19:17','60'),
  ('2023-12-12','19:17','60'),
  ('2023-12-11','19:17','60');

INSERT INTO instrument (name,cost,total,brand,type)
VALUES
  ('Brenna',298,10,'yamaha','piano'),
  ('Irene',182,4,'sennheiser','piano'),
  ('Bethany',239,6,'mitsubishi','guitar'),
  ('Libby',216,5,'yamaha','guitar'),
  ('John',202,6,'yamaha','trombone');

  INSERT INTO student VALUES
  (1),
  (2),
  (3),
  (11),
  (12),
  (13),
  (14),
  (15),
  (16),
  (17),
  (18),
  (19),
  (20);

  INSERT INTO teacher VALUES
  (4,TRUE),
  (5,TRUE),
  (6,FALSE);

  INSERT INTO contacts VALUES
  (1,7),
  (1,8),
  (2,7),
  (2,8),
  (3,9),
  (3,10);

  INSERT INTO siblings VALUES
  (1,2),
  (11,12),
  (11,13),
  (14,15),
  (14,16),
  (14,17),
  (18,19),
  (18,20);

  INSERT INTO payment_scheme (date,cost_hard,cost_single,cost_base,payment_single,payment_hard,payment_group, sibling_discount)
  VALUES
  ('2023-11-28',26,52,63,52,80,34,12),
  ('2024-06-24',64,68,62,10,28,11,15),
  ('2001-05-24',17,28,47,34,87,55,72),
  ('2023-12-13',11,20,73,38,78,62,22),
  ('2019-06-24',77,73,47,65,96,71,33);

  INSERT INTO session (location,level,time_slot_id,teacher_id)
  VALUES
  ('Platsgatan 21',3,1,6),
  ('Platsgatan 22',2,2,6),
  ('Platsgatan 21',2,3,6),
  ('Platsgatan 21',2,4,6),
  ('Platsgatan 21',2,5,5),
  ('Platsgatan 21',2,6,4),
  ('Platsgatan 21',2,7,5),
  ('Platsgatan 21',2,9,5),
  ('Platsgatan 21',2,10,5),
  ('Platsgatan 21',2,11,4),
  ('Platsgatan 21',2,12,5),
  ('Platsgatan 21',2,13,5),
  ('Platsgatan 21',2,14,5),
  ('Platsgatan 21',2,15,4),
  ('Platsgatan 21',2,19,4),
  ('Platsgatan 21',2,20,4),
  ('Platsgatan 21',2,21,5),
  ('Platsgatan 21',2,22,4),
  ('Platsgatan 21',2,23,4),
  ('Platsgatan 21',2,24,4);


  INSERT INTO group_session VALUES
  (1,2,6),
  (2,2,6),
  (3,2,6),
  (4,2,6),
  (7,2,6),
  (10,3,4),
  (11,3,3),
  (12,3,4),
  (13,3,4),
  (14,3,4),
  (15,3,5),
  (16,3,5),
  (17,3,4),
  (18,3,5),
  (19,3,5),
  (20,3,5);

  INSERT INTO single_lesson VALUES
  (5,2),
  (6,3),
  (9,4);

  INSERT INTO group_lesson VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4);

  INSERT INTO ensemble VALUES
  (7,'Classic'),
  (10,'Classic'),
  (12,'Rock'),
  (13,'Rock'),
  (11,'Punk'),
  (14,'Punk'),
  (15,'Classic'),
  (16,'Rock'),
  (17,'Punk'),
  (18,'Punk'),
  (19,'Rock'),
  (20,'Rock');

  INSERT INTO teachable_instruments (teacher_id,instrument_id)
  SELECT t.id, i.id 
  FROM teacher AS t JOIN instrument AS i ON
  t.id = 4 AND i.type IN('piano','trombone');

  INSERT INTO teachable_instruments (teacher_id,instrument_id)
  SELECT t.id, i.id 
  FROM teacher AS t JOIN instrument AS i ON
  t.id = 5 AND i.type IN('guitar','trombone');

  INSERT INTO teachable_instruments (teacher_id,instrument_id)
  SELECT t.id, i.id 
  FROM teacher AS t JOIN instrument AS i ON
  t.id = 6 AND i.type IN('trombone');

  INSERT INTO availability VALUES
  (4,2),
  (5,2),
  (4,3);

  INSERT INTO attendees VALUES
  (2,1),
  (2,2),
  (2,3),
  (1,1),
  (1,2),
  (1,3),
  (11,11),
  (11,10),
  (11,12),
  (12,10),
  (13,10),
  (14,13),
  (16,15),
  (14,15),
  (15,15),
  (13,15),
  (12,15),
  (15,16),
  (12,16),
  (15,17),
  (12,17),
  (13,17),
  (15,18),
  (15,19),
  (14,19),
  (15,20),
  (16,13);


  INSERT INTO rentals VALUES
  (3,'2023-11-21',3);