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

SELECT ID AS '아이디', Name AS '이름' from city; -- 컬럼을 AS 뒤 이름으로 재정의 후 출력함

SELECT * FROM city;

SELECT ID AS '아이디',Name AS '이름' -- ID는 아이디로 변경하고 Name은 이름으로 변경하라
FROM city -- city테이블에서
where ID = 1 OR 3 -- ID값이 1이나 3인것을
order by Name = 'Kabul' -- Name이 Kabul인 기준으로
desc -- 내림차순 정렬하고
limit 0, 10; -- 0~10 까지만 출력하라