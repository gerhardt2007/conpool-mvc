insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('nstratos', HASH('SHA256', STRINGTOUTF8('UltraSecurePassNot'), 1000), 'Stratos', 'Neiros', '1986-03-10', 'male', 'Greece', 'Learning Spring!');
insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('lionmark', HASH('SHA256', STRINGTOUTF8('1234'), 1000), 'Mark', 'Lion', '1980-07-06', 'male', 'UK', 'Hakuna matata');
insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('natoikon', HASH('SHA256', STRINGTOUTF8('5678'), 1000), 'Natalia', 'Oikonomopoulou', '1990-04-28', 'female', 'Greece', 'I love cats!');
insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('ruberd', HASH('SHA256', STRINGTOUTF8('wubwubwub'), 1000), 'David', 'Ruberfield', '1978-09-13', 'male', 'Holland', 'Lorem Ipsum');

