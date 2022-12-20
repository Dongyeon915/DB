use user1220;
show tables;
SELECT * FROM member;
SELECT * FROM product;

CREATE TABLE add_option(
	option_num int not null primary key auto_increment,
    carve varchar(20) null,
    gift_wrapping varchar(10),
    bag boolean not null,
    message_card boolean not null
);

show tables;
SELECT * FROM add_option;
INSERT INTO add_option values(1,'DongYeon',true,false,'선물고마웡');

SELECT m.name,p.title FROM member as m join product as p on m.join_id = p.consumer_id;
SELECT p.consumer_id,a.message_card FROM product as p join add_option as a on p.product_num = option_num;
