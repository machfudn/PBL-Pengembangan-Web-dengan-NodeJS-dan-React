-- 1. buat database dengan nama "myshop"
create database myshop;

-- menggunakan database myshop
use myshop;

-- 2. buat tabel-tabel seperti skema database yang ditentukan
-- tabel categories
create table categories(
id int auto_increment primary key,
name varchar(100) not null
);
-- tabel users
create table users(
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) not null,
password varchar(100) not null
);
-- tabel items
create table items(
id int auto_increment primary key,
name varchar(100) not null,
description text not null,
price decimal(15,2) not null,
stock int not null,
category_id int,
user_id int,
foreign key(category_id) references categories(id),
foreign key(user_id) references users(id)
);

-- 3. isi tabel dengan data yang ditentukan
-- tabel users
insert into users values
(1,'John Doe','john@doe.com','john123'),
(2,'Jane Doe','jane@doe.com','jane123'),
(3,'Alice','alice@example.com','alicepwd'),
(4,'Bob','bob@example.com','bobpws');
-- tabel categories
insert into categories values
(1,'gadget'),
(2,'cloth'),
(3,'men'),
(4,'women'),
(5,'branded'),
(6,'electronics'),
(7,'fashion');
-- tabel items
insert into items values
(1,'Sumsang b50','hape keren dari merek sumsang',4000000,100,1,1),
(2,'Uniklooh','baju keren dari brand ternama',500000,50,2,2),
(3,'IMHO Watch','jam tangan anak yang jujur banget',2000000,10,1,1),
(4,'Nike Shoes','sepatu olahraga nyaman dan stylish',1500000,70,5,3),
(5,'Apple Iphone','smartphone canggih dan populer',12000000,30,6,4),
(6,'Leather Jacket','jaket kulit untuk pria',2500000,15,7,3);

-- 4. menampilkan seluruh data users kecuali password
select id,name,email from users;

-- 5. menampilkan seluruh data items yang memiliki harga diatas 1000000
select * from items where price > 1000000;

-- 6. menampilkan tabel items yang memiliki nama serupa atau mirip dengan kata kunci "uniklo","watch"atau "sang"
select * from items where name like '%uniklo%'
or name like '%watch%'
or name like '%sang%';

-- 7. ubah data pada tabel items untuk item dengan nama sumsang, ubah harganya menjadi 2500000
update items set price = 2500000 where name like '%sumsang%';

-- 8. menampilkan category name yang lebih dari 1 item beserta jumlah itemnya 
select c.name as "Category Name",
count(i.id) as "Item Count"
from categories c
join items i on c.id = i.category_id
group by c.name
having count(i.id) > 1;

-- 9. menampilkan owner name dan rata rata harga item yang di dimiliki
select u.name as "Owner Name",
round(avg(i.price),0) as "AVG Price"
from users u
join items i on u.id = i.user_id
group by u.name;

-- 10. menampilkan item dengan stok kurang dari 20 beserta nama kategori dan nama pemiliknya
select i.name as "Item Name",
c.name as "Category Name",
u.name as "Owner Name"
from items i
join categories c on i.category_id = c.id
join users u on i.user_id = u.id
where i.stock < 20;

-- 11. menampilkan daftar nama users, nama items dan stock item untuk semua item yang stock lebih dari 50
select u.name AS "User Name",
i.name as "Item Name",
i.stock as "Stock"
from items i
join users u on i.user_id = u.id
where i.stock > 50;

-- 12. menampilkan nama pemilik yang memiliki item dengan harga tertinggi, beserta nama item dan harganya
select u.name as "Owner Name",
i.name as "Item Name",
round(i.price,0) as "Price"
from items i
join users u on i.user_id = u.id
order by i.price desc
limit 1;

-- 13. menampilkan nama pemilik dan total harga semua item yang dimilikinya (harga * stock) urutkan dari total harga terbesar
select u.name as "Owner Name",
round(sum(i.price * i.stock),0) as "Total Value"
from users u
join items i on u.id = i.user_id
group by u.name
order by `Total Value` desc;

-- 14. membuat view dengan nama view_item_details yang menampilkan:
-- items.id, items.name, items.description, items.price, items.stock, categories.name sebagai category_name, users.name sebagai owners_name, users.email sebagai owner_email
create view view_item_details as
select i.id,
i.name,
i.description,
round(i.price,0) as price,
i.stock,
c.name as category_name,
u.name as owner_name,
u.email as owner_email
from items i
join categories c on i.category_id = c.id
join users u on i.user_id = u.id;

-- 15. menampilkan view yang dibuat sebelumnya(view_item_details)
select id as ID,
name as "Product Name",
description as Description,
price as Price,
stock as Stock,
category_name as "Category Name",
owner_name as "Owner Name",
owner_email as "Owner Email"
from view_item_details;

-- 16. menampilkan nama pemilik dan total stock semua item yang dimiliki oleh masing masing users dari tabel view sebelumnya dan urutkan dari stock terbanyak ke sedikit
select owner_name as "Owner Name",
sum(stock) as "Total Stock"
from view_item_details
group by owner_name
order by `Total Stock` desc;

-- 17. Tampilkan nama item, kategori, dan email pemilik untuk item yang harganya lebih dari 1.000.000.
select name as "Product Name",
category_name as "Category Name",
owner_email as "Owner Email"
from view_item_details
where price > 1000000;

-- 18. Buat view bernama view_owner_stock yang menampilkan nama pemilik dan total stok item yang dimilikinya. Tampilkan hasilnya.
-- membuat view view_owner_stock
create view view_owner_stock as
select u.name as owner_name,
sum(i.stock) as total_stock
from users u
join items i on u.id = i.user_id
group by u.name;
-- menampilkan view view_owner_stock
select owner_name as "Owner Name",
total_stock as "Total Stock"
from view_owner_stock
order by `Total Stock` desc;

-- 19. Hapus view_owner_stock
drop view view_owner_stock;

-- 20. Perintah – perintah diatas, lampirkan dalam file myshop.sql dan export databasenya ke file sql(myshop-db.sql)
-- gunakan perintah ini pada cmd atau terminal : mysqldump -u root -p myshop > myshop-db.sql
