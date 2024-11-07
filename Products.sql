create table Categories(
	CategoryId int primary key identity (1,1),
	CategoryName nvarchar(50) not null
)

create table Colors(
	ColorId int primary key identity (1,1),
	ColorName nvarchar(50) not null 
)

create table Products (
	ProductId int primary key identity (1,1),
	ProductName nvarchar(50) Not null,
	ProductPrice decimal(10,2),
	ProductCost decimal(10,2),
	CategoryId int,
	foreign key (CategoryId) references Categories(CategoryId)
)


create table Product_Colors(
	ProductId int,
	ColorId int,
	foreign key (ProductId) references Products(ProductId),
	foreign key (ColorId) references Colors(ColorId),
	Primary key(ProductId, ColorId)
)


insert into Colors
values ('red'), ('blue'), ('black')

insert into Categories
values ('Computer'), ('Telephone'), ('Tablet')


insert into Products
values ('Hp Victus', 1697, 1300, 1),
('Samsung A51', 610, 450, 2),
('Samsung Tab 4', 450, 280, 3),
('Acer Nitro 5', 1840, 1250, 1)


insert into Product_Colors
values (1,2),(1,3),
(2,2),
(3,1),(3,2),
(4,1),(4,3)


select P.ProductName, Cate.CategoryName, Col.ColorName from Products as P
join Categories as Cate
on P.CategoryId=Cate.CategoryId
join Product_Colors PC 
on P.ProductId = PC.ProductId
join Colors as Col
on PC.ColorId=Col.ColorId













select * from Products
select * from Categories
select * from Colors
select * from Product_Colors