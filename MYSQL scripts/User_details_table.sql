show databases
Use user_details
show tables
create table user_details(
id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) not null,
primary_phone varchar(10) not null,
alternate_phone varchar(10) not null,
city varchar(10),
Nationality char(3),
Country varchar(25),
date_of_birth date
)

INSERT INTO user_details Values ('1', 'Abhishankar', 'Misti', 'Abhishankar.misti@credible.com','8792927144','0821447021', 'Balistin', 'ASM', 'Asmitratic', '1971-07-23')
Select * from user_details
INSERT INTO user_details Values ('3','Bolashankar', 'Vispra', 'Bolashankar.Vispra@credible.com','879295478','082193021', 'Balistin', 'ASM', 'Asmitratic', '1964-02-12')
INSERT INTO user_details Values ('2','Mahashankar', 'Alpati', 'Mahashankar.Alpati@credible.com','8147332447','082193021', 'Balistin', 'ASM', 'Asmitratic', '2003-01-31')