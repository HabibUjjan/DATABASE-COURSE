create database One_To_Many_Project;
use One_To_Many_Project;

-- Example One--
create table Schools (
    school_id int primary key,
    school_name varchar(100),
    location varchar(100)
);

create table Students (
    student_id int primary key,
    student_name varchar(100),
    school_id int,
    foreign key(school_id) references Schools(school_id)
);

create table Subjects (
    subject_id int primary key,
    subject_name varchar(100),
    student_id int,
    foreign key (student_id) references Students(student_id)
);

insert into Schools (school_id, school_name, location) values (1, 'ABC Public School', 'Karachi');
insert into Students (student_id, student_name, school_id) values(101, 'Ali Khan', 1), (102, 'Sara Ahmed', 1);
insert into Subjects (subject_id, subject_name, student_id) values (1, 'Mathematics', 101),(2, 'Physics', 101),(3, 'Chemistry', 102);

select s.school_name, st.student_name, sj.subject_name
from schools s
inner join students st on s.school_id = st.school_id
inner join subjects sj on st.student_id = sj.student_id;


-- Example Two--
create table Restaurants (
    restaurant_id int primary key,
    restaurant_name varchar(100),
    address varchar(200)
);


create table Customerss (
    customer_id int primary key,
    customer_name varchar(100),
    restaurant_id int,
    foreign key (restaurant_id) references Restaurants(restaurant_id)
);

create table orderss (
    order_id int primary key,
    order_date date,
    customer_id int,
    foreign key (customer_id) references customers(customer_id)
);

insert into restaurants (restaurant_id, restaurant_name, address) values (1, 'Biryani house', 'Karachi');
insert into customers (customer_id, customer_name, restaurant_id) values (101, 'Habib', 1),(102, 'Sakina', 1);
insert into orders (order_id, order_date, customer_id) values (1001, '2025-06-10', 101),(1002, '2025-06-11', 101),(1003, '2025-06-12', 102);

select r.restaurant_name, c.customer_name, o.order_date
from restaurants r
inner join customers c on r.restaurant_id = c.restaurant_id
inner join orders o on c.customer_id = o.customer_id;


-- Example Three --
create table Customers (
    CustomerID int primary key,
    CustomerName varchar(100)
);

create table Orders (
    OrderID int primary key,
    OrderDate date,
    CustomerID int,
    foreign key (CustomerID) references Customers(CustomerID)
);


insert into Customers (CustomerID, CustomerName) values (1, 'Ali');
insert into Customers (CustomerID, CustomerName) values (2, 'Sara');
insert into Orders (OrderID, OrderDate, CustomerID) values (1, '2023-01-01', 1);
insert into Orders (OrderID, OrderDate, CustomerID) values (2, '2023-01-02', 2);


select Customers.CustomerName, Orders.OrderDate
from Customers
inner join Orders on Customers.CustomerID = Orders.CustomerID;


-- Example Four --
create table Products (
    ProductID int primary key,
    ProductName varchar(100),
    Price decimal(10, 2)
);

create table  OrderDetails (
    OrderDetailID int primary key,
    OrderID int,
    ProductID int,
    Quantity int,
    foreign key (OrderID) references Orders(OrderID),
    foreign key (ProductID) references Products(ProductID)
);

insert into Products (ProductID, ProductName, Price) values (1, 'Product A', 100.00);
insert into Products (ProductID, ProductName, Price) values (2, 'Product B', 150.00);
insert into  OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) values (1, 1, 1, 2);
insert into  OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) values (2, 1, 2, 1);

select Products.ProductName, OrderDetails.Quantity
from Products
inner join OrderDetails on Products.ProductID = OrderDetails.ProductID;


-- Example Five --
create table categories (
    categoryid int primary key,
    categoryname varchar(100)
);

create table productcategories (
    productcategoryid int primary key,
    productid int,
    categoryid int,
    foreign key (productid) references products(productid),
    foreign key (categoryid) references categories(categoryid)
);


insert into categories (categoryid, categoryname) values (1, 'electronics');
insert into categories (categoryid, categoryname) values (2, 'clothing');
insert into productcategories (productcategoryid, productid, categoryid) values (1, 1, 1);
insert into productcategories (productcategoryid, productid, categoryid) values (2, 2, 2);


select categories.categoryname, products.productname
from categories
inner join productcategories on categories.categoryid = productcategories.categoryid
inner join products on productcategories.productid = products.productid;

-- Example Six --
create table suppliers (
    supplierid int primary key,
    suppliername varchar(100)
);

create table supplierproducts (
    supplierproductid int primary key,
    supplierid int,
    productid int,
    foreign key (supplierid) references suppliers(supplierid),
    foreign key (productid) references products(productid)
);

insert into suppliers (supplierid, suppliername) values (1, 'supplier a');
insert into suppliers (supplierid, suppliername) values (2, 'supplier b');
insert into supplierproducts (supplierproductid, supplierid, productid) values (1, 1, 1);
insert into supplierproducts (supplierproductid, supplierid, productid) values (2, 2, 2);

select suppliers.suppliername, products.productname
from suppliers
inner join supplierproducts on suppliers.supplierid = supplierproducts.supplierid
inner join products on supplierproducts.productid = products.productid;

-- Example Seven -- 
create table employees (
    employeeid int primary key,
    employeename varchar(100)
);

create table employeeorders (
    employeeorderid int primary key,
    employeeid int,
    orderid int,
    foreign key (employeeid) references employees(employeeid),
    foreign key (orderid) references orders(orderid)
);

insert into employees (employeeid, employeename) values (1, 'employee a');
insert into employees (employeeid, employeename) values (2, 'employee b');
insert into employeeorders (employeeorderid, employeeid, orderid) values (1, 1, 1);
insert into employeeorders (employeeorderid, employeeid, orderid) values (2, 2, 2);

select employees.employeename, orders.orderdate
from employees
inner join employeeorders on employees.employeeid = employeeorders.employeeid
inner join orders on employeeorders.orderid = orders.orderid;

-- Example Eight --
create table shippers (
    shipperid int primary key,
    shippername varchar(100)
);

create table shippingorders (
    shippingorderid int primary key,
    shipperid int,
    orderid int,
    foreign key (shipperid) references shippers(shipperid),
    foreign key (orderid) references orders(orderid)
);

insert into shippers (shipperid, shippername) values (1, 'shipper a');
insert into shippers (shipperid, shippername) values (2, 'shipper b');
insert into shippingorders (shippingorderid, shipperid, orderid) values (1, 1, 1);
insert into shippingorders (shippingorderid, shipperid, orderid) values (2, 2, 2);

select shippers.shippername, orders.orderdate
from shippers
inner join shippingorders on shippers.shipperid = shippingorders.shipperid
inner join orders on shippingorders.orderid = orders.orderid;

-- Example Nine --
create table carts (
    cartid int primary key,
    customerid int,
    foreign key (customerid) references customers(customerid)
);

create table cartitems (
    cartitemid int primary key,
    cartid int,
    productid int,
    foreign key (cartid) references carts(cartid),
    foreign key (productid) references products(productid)
);

insert into carts (cartid, customerid) values (1, 1);
insert into carts (cartid, customerid) values (2, 2);
insert into cartitems (cartitemid, cartid, productid) values (1, 1, 1);
insert into cartitems (cartitemid, cartid, productid) values (2, 2, 2);

select carts.cartid, products.productname
from carts
inner join cartitems on carts.cartid = cartitems.cartid
inner join products on cartitems.productid = products.productid;


-- Example Ten -- 
create table shops (
    shop_id int primary key,
    shop_name varchar(100),
    category varchar(100)
);

create table products (
    product_id int primary key,
    product_name varchar(100),
    price int,
    shop_id int,
    foreign key (shop_id) references shops(shop_id)
);

create table reviews (
    review_id int primary key,
    comment text,
    rating int,
    product_id int,
    foreign key (product_id) references products(product_id)
);

insert into shops (shop_id, shop_name, category) values (1, 'mobile planet', 'electronics');
insert into products (product_id, product_name, price, shop_id) values (101, 'samsung s23', 200000, 1),(102, 'iphone 15', 250000, 1);
insert into reviews (review_id, comment, rating, product_id) values (1, 'great phone!', 5, 101),(2, 'battery could be better', 4, 101),(3, 'excellent performance', 5, 102);

select s.shop_name, p.product_name, r.comment, r.rating
from shops s
inner join products p on s.shop_id = p.shop_id
inner join reviews r on p.product_id = r.product_id
where s.shop_id = 1;










