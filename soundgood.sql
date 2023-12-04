CREATE TABLE instrument (
 id SERIAL NOT NULL,
 name VARCHAR(40) NOT NULL,
 total INT NOT NULL,
 cost INT NOT NULL,
 brand VARCHAR(20) NOT NULL,
 type VARCHAR(30) NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE payment_scheme (
 date DATE NOT NULL,
 cost_hard INT NOT NULL,
 cost_single INT NOT NULL,
 cost_base INT NOT NULL,
 payment_single INT NOT NULL,
 payment_hard INT NOT NULL,
 payment_group INT NOT NULL,
 sibling_discount INT NOT NULL
);

ALTER TABLE payment_scheme ADD CONSTRAINT PK_payment_scheme PRIMARY KEY (date);


CREATE TABLE person (
 id SERIAL NOT NULL,
 name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL,
 phone VARCHAR(12) NOT NULL,
 home_phone VARCHAR(15),
 address VARCHAR(50) NOT NULL,
 person_number VARCHAR(12) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE student (
 id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE teacher (
 id INT NOT NULL,
 does_ensemble BOOLEAN NOT NULL
);

ALTER TABLE teacher ADD CONSTRAINT PK_teacher PRIMARY KEY (id);


CREATE TABLE time_slot (
 id SERIAL NOT NULL,
 date DATE NOT NULL,
 length INT NOT NULL,
 time TIME(10) NOT NULL
);

ALTER TABLE time_slot ADD CONSTRAINT PK_time_slot PRIMARY KEY (id);


CREATE TABLE availability (
 teacher_id INT NOT NULL,
 time_slot_id INT NOT NULL
);

ALTER TABLE availability ADD CONSTRAINT PK_availability PRIMARY KEY (teacher_id,time_slot_id);


CREATE TABLE contacts (
 student_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE contacts ADD CONSTRAINT PK_contacts PRIMARY KEY (student_id,person_id);


CREATE TABLE rentals (
 student_id INT NOT NULL,
 start_date DATE NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE rentals ADD CONSTRAINT PK_rentals PRIMARY KEY (student_id,start_date,instrument_id);


CREATE TABLE session (
 id SERIAL NOT NULL,
 location VARCHAR(30) NOT NULL,
 level INT NOT NULL,
 time_slot_id INT NOT NULL,
 teacher_id INT NOT NULL
);

ALTER TABLE session ADD CONSTRAINT PK_session PRIMARY KEY (id);


CREATE TABLE siblings (
 student_id INT NOT NULL,
 sibling_id INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (sibling_id,student_id);


CREATE TABLE single_lesson (
 id INT NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE single_lesson ADD CONSTRAINT PK_single_lesson PRIMARY KEY (id);


CREATE TABLE teachable_instruments (
 teacher_id INT NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE teachable_instruments ADD CONSTRAINT PK_teachable_instruments PRIMARY KEY (teacher_id,instrument_id);


CREATE TABLE attendees (
 student_id INT NOT NULL,
 session_id INT NOT NULL
);

ALTER TABLE attendees ADD CONSTRAINT PK_attendees PRIMARY KEY (student_id,session_id);


CREATE TABLE group_session (
 id INT NOT NULL,
 min_students INT NOT NULL,
 max_students INT NOT NULL
);

ALTER TABLE group_session ADD CONSTRAINT PK_group_session PRIMARY KEY (id);


CREATE TABLE ensemble (
 id INT NOT NULL,
 genre VARCHAR(20)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (id);


CREATE TABLE group_lesson (
 id INT NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE lesson_history (
    id SERIAL,
    type VARCHAR(30) NOT NULL,
    genre VARCHAR(30),
    instrument_type VARCHAR(30),
    price int NOT NULL,
    student_name VARCHAR(50) NOT NULL,
    student_email VARCHAR(50) NOT NULL
);

ALTER TABLE lesson_history ADD CONSTRAINT PK_lesson_history PRIMARY KEY (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE teacher ADD CONSTRAINT FK_teacher_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE availability ADD CONSTRAINT FK_availability_0 FOREIGN KEY (teacher_id) REFERENCES teacher (id) ON DELETE CASCADE;
ALTER TABLE availability ADD CONSTRAINT FK_availability_1 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id) ON DELETE CASCADE;


ALTER TABLE contacts ADD CONSTRAINT FK_contacts_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE contacts ADD CONSTRAINT FK_contacts_1 FOREIGN KEY (student_id) REFERENCES person (id) ON DELETE CASCADE;
ALTER TABLE contacts ADD CONSTRAINT FK_contacts_2 FOREIGN KEY (person_id) REFERENCES person (id) ON DELETE CASCADE;


ALTER TABLE rentals ADD CONSTRAINT FK_rentals_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE rentals ADD CONSTRAINT FK_rentals_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id) ON DELETE CASCADE;


ALTER TABLE session ADD CONSTRAINT FK_session_0 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id);
ALTER TABLE session ADD CONSTRAINT FK_session_1 FOREIGN KEY (teacher_id) REFERENCES teacher (id);


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE siblings ADD CONSTRAINT FK_siblings_1 FOREIGN KEY (sibling_id) REFERENCES student (id) ON DELETE CASCADE;


ALTER TABLE single_lesson ADD CONSTRAINT FK_single_lesson_0 FOREIGN KEY (id) REFERENCES session (id);
ALTER TABLE single_lesson ADD CONSTRAINT FK_single_lesson_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


ALTER TABLE teachable_instruments ADD CONSTRAINT FK_teachable_instruments_0 FOREIGN KEY (teacher_id) REFERENCES teacher (id) ON DELETE CASCADE;
ALTER TABLE teachable_instruments ADD CONSTRAINT FK_teachable_instruments_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id) ON DELETE CASCADE;


ALTER TABLE attendees ADD CONSTRAINT FK_attendees_0 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE;
ALTER TABLE attendees ADD CONSTRAINT FK_attendees_1 FOREIGN KEY (session_id) REFERENCES session (id) ON DELETE CASCADE;


ALTER TABLE group_session ADD CONSTRAINT FK_group_session_0 FOREIGN KEY (id) REFERENCES session (id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (id) REFERENCES group_session (id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (id) REFERENCES group_session (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


