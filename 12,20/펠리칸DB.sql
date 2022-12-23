use user1220;
show tables;
SELECT * FROM add_option;
desc add_option;
use world;
show tables;
SELECT * FROM country;
SELECT CountryCode FROM city where countryCode = 'KOR';
SELECT distinct countryCode from city where countryCode = 'kor';
SELECT * FROM city where countrycode = 'kor' and population >= 1000000;
SELECT * FROM city where countrycode = 'kor' or countrycode = 'chn' or countrycode = 'jpn';
SELECT * FROM city where countrycode != 'kor' and population >- 1000000;
SELECT * FROM city where countrycode in ('kor','chn','jpn');
SELECT * FROM city where countrycode = 'kor' order by population desc;
SELECT countrycode,population FROM city order by countrycode,population desc;
SELECT * FROM city where countrycode = 'kor' order by population desc limit 10;
SELECT count(*) from city where countrycode = 'kor';
SELECT sum(population) from city where countrycode = 'kor';
select name,population from city 
		where population > 
			(select avg(population) from city where countrycode='kor') 
		order by population desc;

use user1220;
CREATE TABLE manager (
	manager_name varchar(20) not null,
    manager_id	 varchar(20) not null primary key,
    manager_password int not null,
    manager_email varchar(100) not null,
    manager_phone varchar(20) not null
);
SELECT * FROM manager;
INSERT INTO manager values('이병헌','lee',1234,'lee@naver.com','010-956-7656');
SELECT  mana.manager_num,mem.name FROM manager as mana join member as mem where mana.manager_num = mem.join_id;