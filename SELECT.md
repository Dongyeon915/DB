use world; -- USE DB명 없이 바로 접근 가능 명령어 
show tables; -- show tables 현재 테이블 구조 확인 
select * from city; -- city테이블 내부 전체 조회 *(전체)
select Name from city where "Kabul"; -- where 조건 
select * from city;
select ID FROM city where ID = 1;
select * from city where Name='Kabul';
select * from city where Population > 2000000;
select * from city order by Name desc;
select * from city limit 10, 10; -- limi 페이징시 사용 10 page -> 20 page까지
select * from city limit 20, 10; -- 20 -> 30
select * from city limit 30, 20; -- 30 -> 50
-- ------------------------------------------------
SELECT ID AS '아이디', Name AS '이름' from city; -- 컬럼을 AS 뒤 이름으로 재정의 후 출력함

SELECT * FROM city;

SELECT ID AS '아이디',Name AS '이름' -- ID는 아이디로 변경하고 Name은 이름으로 변경하라
FROM city -- city테이블에서
where ID = 1 OR 3 -- ID값이 1이나 3인것을
order by Name = 'Kabul' -- Name이 Kabul인 기준으로
desc -- 내림차순 정렬하고
limit 0, 10; -- 0~10 까지만 출력하라
-- -------------------------------------------------
SELECT * FROM city;
SELECT ID,Name FROM city where ID = 1 AND ID = 1; -- AND 그리고
SELECT ID,Name FROM city where ID = 1 or ID = 2; -- OR 이거나 둘다 출력
SELECT * FROM city where Population > 30000 AND (ID = 1 OR ID = 3); -- where절이 true여야 뒤를 비교 한다
SELECT * FROM city where Population between 1 and 100000 limit 0, 10; -- 1 보다 크고 100000보다 적은 인구수를 0~10까지 출력
SELECT * FROM city where Name like 'd%'; -- d 이후 0~n개 문자 모두 출력  %(0~n)
SELECT * FROM city where Name like 'a%b'; -- a 문자이후로 n개만큼 b로 끝나는걸 출력 ex) al-slb
SELECT * FROM city where Name like '%c%'; -- c를 포함한 단어
SELECT * FROM city where Name like '%b'; -- n개만큼 앞에 문자열중 b로 끝나는걸 출력 ex) zagreb
SELECT * FROM city where Name like '__b'; -- _는 앞에 글자수 만큼을 표시한다 ex) acb
SELECT CountryCode FROM  city group by CountryCode; -- 중복제거된 그룹으로 출력 (특정 컬럼기준으로 묶어준다)
SELECT * FROM city;
UPDATE city set CountryCode = 'KOR' where ID = 1; 
UPDATE city set Name = 'Dong' where ID = 1;
INSERT INTO city (ID, Name,CountryCode, District, Population) values(null,'gimo','KOR','KOREA',10);
delete FROM city where ID = 2;
SELECT * FROM city where Name = 'gimo';

SELECT CountryCode FROM city where CountryCode = 'KOR';
SELECT distinct CountryCode from city where CountryCode = 'KOR';
use world;
show tables;
select distinct CountryCode from city where CountryCode = 'KOR';
show tables;
SELECT * from city; 
insert  into city( ID, Name, CountryCode, District, Population) values (15623,'dddong','KOR','koko',121235);
SELECT * FROM city where ID = 15623;
delete  from city where ID = 15623; 
delete from city where ID = 3;
select * from city where ID = 3;
SELECT * FROM city where CountryCode = 'KOR' AND Population >= 1000000;
SELECT * FROM city where CountryCode = 'KOR' OR CountryCode = 'CHN' OR CountryCode = 'JPN';
SELECT * FROM city where CountryCode != 'KOR' AND Population >= 1000000;
SELECT * FROM city where CountryCode != 'KOR' AND Population >= 1000000;
SELECT * FROM city where CountryCode in ('KOR','CHN','JPN');
SELECT * FROM city where CountryCode = 'KOR' or CountryCode = 'CHN' or CountryCode = 'JPN' order by CountryCode = 'KOR' desc;
SELECT * FROM city where CountryCode = 'KOR' AND (Population between 1000000 and 5000000);
SELECT * FROM city where CountryCode = 'KOR' AND (Population >= 1000000 and Population <= 5000000);
SELECT * FROM city where CountryCode = 'KOR' order by Population desc;
SELECT CountryCode, Population FROM city order by CountryCode, Population desc;
SELECT CountryCode, Population FROM city order by CountryCode, Population desc;
SELECT * from city where CountryCode = 'KOR' order by Population desc limit 10;
SELECT * FROM city where CountryCode = 'KOR' order by Population desc limit 10;
SELECT count(*) from city where CountryCode = 'KOR';
SELECT sum(Population) from city where CountryCode = 'KOR';
SELECT avg(Population) from city where CountryCode = 'KOR';
SELECT max(Population) from city where CountryCode = 'KOR';
SELECT min(Population) from city where CountryCode = 'KOR';
SELECT length(Name) from country;
SELECT upper(mid(Name,1,3))from country;
SELECT round(LifeExpentancy,0)from country;
