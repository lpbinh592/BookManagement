create database BKC_Management
go
use BKC_Management
go
create table CUSTOMER(
cusid int primary key not null,
cusname nvarchar(255),
phone int,
contactname nvarchar(255),
companyname nvarchar(255),
adress nvarchar(255),
city nvarchar(255),
country nvarchar(255)
)
create table SALES(
idsale int primary key not null,
Salename nvarchar(255),
adress nvarchar(255),
city nvarchar(255),
country nvarchar(255),
phone int,
mrgid int
)
create table manager(
mrgid int primary key not null
)
create table SUPPLIERS(
supid int primary key not null,
companyname nvarchar(255),
contactname nvarchar(255),
adress nvarchar(255),
country nvarchar(255),
city nvarchar(255),
phone int,
fax int
)
create table CATEGORIES(
categoryid int primary key not null,
categoryname nvarchar(255),
descr nvarchar(255)
)
create table PRODUCTS(
productid int primary key not null,
productname nvarchar(255),
unitprice int,
supid int,
categoryid int
)
create table ORDERS(
orderid int primary key not null,
orderdate date,
shipperdate date,
shipname nvarchar(255),
shipaddress nvarchar(255),
shipcity nvarchar(255),
shipcountry nvarchar(255),
shippostalcode int,
shipperid int,
cusid int,
idsale int
)
create table ORDERDETAIL(
idorder int primary key not null,
unitprice int,
quanlity nvarchar(255),
discout int,
productid int
)
create table SHIPPER(
shipperid int primary key not null,
company nvarchar(255),
phone int
)
alter table SALES
add constraint FK_SALES_SALES
foreign key (mgrid)
references SALES(mgrid)
alter table PRODUCTS
add constraint FK_PRO_SUP
foreign key (productid)
references PRODUCTS(productid)
alter table PRODUCTS
add constraint FK_PRO_CATE
foreign key (categoryid)
references CATEGORIES(categoryid)
alter table ORDERS
add constraint FK_ORDERS_SHIPPER
foreign key (shipperid)
references SHIPPER(shipperid)
alter table ORDERS
add constraint FK_ORDERS_CUS
foreign key (cusid)
references CUSTOMER(cusid)
alter table ORDERS
add constraint FK_ORDERS_SALES
foreign key (idsale)
references SALES(idsale)
alter table ORDERDETAIL
add constraint FK_ORDERDETAIL_PRO
foreign key (productid)
references PRODUCTS(productid)
alter table PRODUCTS
add constraint FK_PRODUCTS_SUPPLIERS
foreign key (supid)
references SUPPLIERS(supid)
alter table ORDERS
add idorder int
go
alter table ORDERS
add constraint FK_ORDERS_ORDERDETAIL
foreign key (idorder)
references ORDERDETAIL(idorder)
