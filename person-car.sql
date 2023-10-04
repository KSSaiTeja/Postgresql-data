create table car (
	id bigserial not null primary key,
	make VARCHAR(9) not null,
	model VARCHAR(9) not null,
	price DECIMAL(7,2) not null
);

insert into car (make, model, price) values ('Honda', 'Silverado', 897.04);
insert into car (make, model, price) values ('Honda', 'Mustang', 798.07);
insert into car (make, model, price) values ('Ford', 'Mustang', 897.08);
insert into car (make, model, price) values ('Chevrolet', 'Civic', 872.07);
insert into car (make, model, price) values ('Toyota', 'Civic', 457.83);

create table person (
	id bigserial not null primary key,
	first_name VARCHAR(50)not null,
	last_name VARCHAR(50)not null,
	gender VARCHAR(50)not null,
	email VARCHAR(50)not null,
	date_of_birth DATE not null,
	country_of_birth VARCHAR(50) not null,
    car_id bigint references car (id),
    UNIQUE(car_id)
);






insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Dorita', 'Lushey', 'Female', 'dlushey0@parallels.com', '5/20/2023', 'Indonesia');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Venita', 'Marron', 'Female', 'vmarron1@yahoo.com', '10/29/2022', 'Brazil');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Tanya', 'Dorrins', 'Female', 'tdorrins2@liveinternet.ru', '9/23/2022', 'Philippines');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Baillie', 'Merveille', 'Male', 'bmerveille3@ning.com', '1/22/2023', 'Russia');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Eddi', 'Bosward', 'Female', 'ebosward4@pcworld.com', '6/30/2023', 'Cuba');