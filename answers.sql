-- Question One answers
create table ProductDetail(
OrderID int,
CustomerName varchar(100),
Products varchar(100)
);

insert into ProductDetail(OrderID, CustomerName, Products)
values
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- Question Two answers
create table Orders(
OrderID int primary key,
CustomerName varchar(100)
);

insert into Orders(OrderID, CustomerName)
values
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

create table Product(
OrderID int,
Product varchar(100),
Quantity int,
primary key (OrderID, Product),
foreign key (OrderID) references Orders(OrderID)
);

insert into Product(OrderID, Product, Quantity)
values
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
