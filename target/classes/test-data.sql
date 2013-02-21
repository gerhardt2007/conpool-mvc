insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('nstratos', HASH('SHA256', STRINGTOUTF8('UltraSecurePass'), 1000), 'Stratos', 'Neiros', '1986-03-10', 'male', 'Greece', 'Learning Spring!');
insert into userr (username, password, first_name, last_name, birth_date, gender, country, about_you) values ('lionmark', HASH('SHA256', STRINGTOUTF8('123'), 1000), 'Mark', 'Lion', '1980-07-06', 'male', 'UK', 'Test user');
--insert into userr (username, password, first_name, last_name, birth_date) values ('nstratos', 'UltraSecurePass', 'Stratos', 'Neiros', '1986-03-10');
--insert into userr (username, first_name, last_name, birth_date) values ('lionmark', '123', 'Mark', 'Lion', '1980-07-06');

