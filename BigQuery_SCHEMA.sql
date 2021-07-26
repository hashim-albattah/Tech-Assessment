CREATE TABLE IF NOT EXISTS techassessment.territories (
    TerritoryID INTEGER NOT NULL ,
    TerritoryDescription STRING  NOT NULL ,
    RegionID INT  NOT NULL
);


CREATE TABLE IF NOT EXISTS techassessment.suppliers (
    SupplierID INTEGER  NOT NULL ,
    CompanyName STRING  NOT NULL ,
    ContactName STRING  NOT NULL ,
    ContactTitle STRING  NOT NULL ,
    Address STRING  NOT NULL ,
    City STRING  NOT NULL ,
    Region STRING  NOT NULL ,
    PostalCode STRING  NOT NULL ,
    Country STRING  NOT NULL ,
    Phone STRING  NOT NULL ,
    Fax STRING  NOT NULL ,
    HomePage STRING  NOT NULL
);



CREATE TABLE IF NOT EXISTS techassessment.shippers (
    ShipperID INTEGER  NOT NULL ,
    CompanyName STRING  NOT NULL ,
    Phone STRING  NOT NULL
);



CREATE TABLE IF NOT EXISTS techassessment.regions (
    RegionID INTEGER  NOT NULL ,
    RegionDescription STRING  NOT NULL
);



CREATE TABLE IF NOT EXISTS techassessment.orders (
    OrderID INTEGER  NOT NULL ,
    CustomerID STRING  NOT NULL ,
    EmployeeID INTEGER  NOT NULL ,
    OrderDate TIMESTAMP  NOT NULL ,
    RequiredDate TIMESTAMP  NOT NULL ,
    ShippedDate STRING  NOT NULL ,
    ShipVia INTEGER  NOT NULL ,
    Freight FLOAT64  NOT NULL ,
    ShipName STRING  NOT NULL ,
    ShipAddress STRING  NOT NULL ,
    ShipCity STRING  NOT NULL ,
    ShipRegion STRING ,
    ShipPostalCode STRING  NOT NULL ,
    ShipCountry STRING  NOT NULL
);



CREATE TABLE IF NOT EXISTS techassessment.order_details (
    OrderID INTEGER  NOT NULL ,
    ProductID INTEGER  NOT NULL ,
    UnitPrice FLOAT64  NOT NULL ,
    Quantity INTEGER  NOT NULL ,
    Discount FLOAT64  NOT NULL 
);



CREATE TABLE IF NOT EXISTS techassessment.employees (
    EmployeeID INTEGER  NOT NULL ,
    LastName STRING  NOT NULL ,
    FirstName STRING  NOT NULL ,
    Title STRING  NOT NULL ,
    TitleOFCourtesy STRING  NOT NULL ,
    BirthDate TIMESTAMP  NOT NULL ,
    HiredDate TIMESTAMP  NOT NULL ,
    Address STRING  NOT NULL ,
    City STRING  NOT NULL ,
    Region STRING ,
    PostalCode STRING  NOT NULL ,
    Country STRING  NOT NULL ,
    HomePHone STRING  NOT NULL ,
    Extension INTEGER  NOT NULL ,
    Photo FLOAT64  NOT NULL ,
    Notes STRING  NOT NULL ,
    ReportsTo STRING ,
    PhotoPath STRING  NOT NULL 
);



CREATE TABLE IF NOT EXISTS techassessment.employee_territories (
    EmployeeID INTEGER  NOT NULL ,
    TerritoryID INTEGER  NOT NULL 
);



CREATE TABLE IF NOT EXISTS techassessment.customer_list (
    CustomerID STRING  NOT NULL ,
    CompanyName STRING  NOT NULL ,
    ContactName STRING  NOT NULL ,
    ContactTitle STRING  NOT NULL ,
    Address STRING  NOT NULL ,
    City STRING  NOT NULL ,
    Region STRING ,
    PostalCode STRING  NOT NULL ,
    Country STRING  NOT NULL ,
    Phone STRING  NOT NULL ,
    Fax STRING
);



CREATE TABLE IF NOT EXISTS techassessment.categories (
    CategoryID INTEGER  NOT NULL ,
    CategoryName STRING  NOT NULL ,
    Description STRING  NOT NULL ,
    Picture STRING  NOT NULL
);

