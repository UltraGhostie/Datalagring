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
  ('Hadassah Lowery','risus@yahoo.ca','+64210622973','(625) 555-5141','422-2483 Egestas Street','876555163729');

INSERT INTO time_slot (date,time,length)
VALUES
  ('2023-12-15','21:05','90'),
  ('2023-12-08','19:22','60'),
  ('2023-12-26','18:13','60'),
  ('2023-12-08','18:53','90'),
  ('2023-11-02','19:17','60');

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
  (3);

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
  (2,1);

  INSERT INTO payment_scheme (date,cost_hard,cost_single,cost_base,payment_single,payment_hard,payment_group)
  VALUES
  ('2017-02-23',26,52,63,52,80,34),
  ('2013-06-24',64,68,62,10,28,11),
  ('2001-05-24',17,28,47,34,87,55),
  ('2018-12-22',11,20,73,38,78,62),
  ('2004-06-24',77,73,47,65,96,71);

  INSERT INTO session (location,level,time_slot_id,teacher_id)
  VALUES
  ('Platsgatan 21',3,2,4),
  ('Platsgatan 22',2,2,5),
  ('Platsgatan 21',2,3,4);


  INSERT INTO group_session VALUES
  (1,2,6),
  (3,3,10);

  INSERT INTO single_lesson VALUES
  (2,3);

  INSERT INTO group_lesson VALUES
  (1,2);

  INSERT INTO ensemble VALUES
  (3,'Classic');

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
  (3,1),
  (3,3);


  INSERT INTO rentals VALUES
  (3,'2023-11-21',3);