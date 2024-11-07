create table Roles(
    RoleId int primary key identity(1,1),
    RoleName nvarchar(50) not null
)

create table Users (
    UserId int primary key identity(1,1),
    UserName nvarchar(50) NOT NULL,
    UserPassword nvarchar(100) NOT NULL,
    RoleId int,
    foreign key (RoleId) references Roles(RoleId)
)

INSERT INTO Roles
VALUES ('Admin'), ('Moderator'), ('User')


INSERT INTO Users
VALUES ('Turan', 'password123', 1), 
('Toghrul', 'password456', 2),
('Kanan', 'password789', 3);



select * from Roles
select * from Users

select UserName,UserPassword,RoleName from  Users
join Roles
on Roles.RoleId=Users.RoleId