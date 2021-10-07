CREATE DATABASE BBESTCARE
go

IF OBJECT_ID('Customer') IS NOT NULL
	DROP TABLE Customer
GO
CREATE TABLE Customer
(
	Phone				VARCHAR(12)  not null,
	Password			VARCHAR(250) not null,
	Fullname			NVARCHAR(50) null,
	Email				NVARCHAR(50)  null,
	Address				NVARCHAR(50)  null,
	BirthdayBaby		NVARCHAR(50)  NULL,
	Note				NVARCHAR(250) null,
	CONSTRAINT PK_Customer PRIMARY KEY(Phone),
)
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0962064263',N'123',N'Lê Sỹ Chính','chinhlsph08831@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000',N'Hello Chính');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0123456789',N'123',N'Nguyễn Hoàng Anh','anhnh08787@fpt.edu.vn',N'126 Hoàng Cầu','13/10/2000',N'Hello Anh');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987654321',N'123',N'Nguyễn Duy Quân','quannd8827@fpt.edu.vn',N'Khương Trung','30/01/2000',N'Hello Quân');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987654367',N'123',N'Cao Trọng Giáp','giapct1234@fpt.edu.vn',N'126 Nguyễn Đổng Chi','10/10/1998',N'Hello Giáp');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987654322',N'123',N'Trần Trung Hiếu','hieu123@fpt.edu.vn',N'126 Hoàng Cầu','15/07/2000',N'Hello Hiếu');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987655354',N'123',N'Phạm Ngọc Thúy','thuy@fpt.edu.vn',N'Khương Trung','05/08/1999',N'Hello Thúy');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0946566743',N'123',N'Đoàn Ngọc Thơm','thom@fpt.edu.vn',N'126 Nguyễn Đổng Chi','10/07/2000',N'Hello Thơm');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0967745353',N'123',N'Trịnh Phương Oanh','oanh@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000',N'Hello Oanh');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0465475854',N'123',N'Vũ Ngọc Duy','duy11@fpt.edu.vn',N'Khương Trung','05/07/2000',N'Hello Duy');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0124463654',N'123',N'Trần Quang Hiệu','hieu12@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000',N'Hello Hiệu');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0123478675',N'123',N'Phan Thị Lan Anh','lananh@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000',N'Hello Anh');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987475674',N'123',N'Nguyễn Hải Long','hailong@fpt.edu.vn',N'Khương Trung','05/07/2000',N'Hello Long');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0966754636',N'123',N'Phạm Quốc Chính','chinh@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000',N'Hello Chính');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0123567464',N'123',N'Đinh Văn Dương','duong@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000',N'Hello Dương');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0982354757',N'123',N'Trần Thành Tiên','tien@fpt.edu.vn',N'Khương Trung','05/07/2000',N'Hello Tiên');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0960785454',N'123',N'Bùi Thành Tâm','tam@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000',N'Hello Tâm');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0126454534',N'123',N'Phan Quốc Trung','trung@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000',N'Hello Trung');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0912434564',N'123',N'Trần Văn Hiệp','hiep@fpt.edu.vn',N'Khương Trung','05/07/2000',N'Hello Hiệp');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987979789',N'123',N'Phạm Duy','duy1234@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000',N'Hello Duy');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0980788668',N'123',N'Đinh Hoàng Đạo','daoabc@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000',N'Hello Đạo');
select * from Customer
IF OBJECT_ID('Staff') IS NOT NULL
	DROP TABLE Staff
GO
CREATE TABLE Staff
(
	Phone				VARCHAR(12) not null,
	Password			VARCHAR(250) not null,
	Fullname			NVARCHAR(50) NOT NULL,
	BirthDay			NVARCHAR(50) NOT NULL,
	Gender				NVARCHAR(50) NOT NULL,
	Email				NVARCHAR(50) NOT NULL,
	Address				NVARCHAR(100) NOT NULL,
	HomeTown			NVARCHAR(50) NOT NULL,
	Images				NVARCHAR(100) NOT NULL,
	PeopleID			VARCHAR(12)  NOT NULL,
	AccountNumberBank	VARCHAR(14)  NOT NULL,
	Experience			NVARCHAR(50) NOT NULL,
	Degree				NVARCHAR(50) NOT NULL,
	Role				NVARCHAR(50) NULL,
	Status				NVARCHAR(250)NULL,
	CONSTRAINT PK_Staff PRIMARY KEY(Phone),
)
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0987555543','123',N'Đinh Văn Dương',N'23/10/2000',N'Nam','duong@gmail.com',N'Thanh Xuân',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0108867555','123',N'Nguyễn Hải Long', N'05/04/2000',N'Nam','long@gmail.com',N'Cầu Giấy',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0962235456','123', N'Đinh Hoàng Đạo',N'13/10/2000',N'Nam','daoabc@gmail.com',N'Thanh Xuân',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0117685746','123',N'Phạm Quốc Chính',N'08/07/2000',N'Nam','chinh123@gmail.com',N'Nam Từ Liêm',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0988866600','123',N'Phan Quốc Trung',N'08/07/2000',N'Nam','trung@gmail.com',N'126 Nguyễn Đổng Chi',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0123646444','123',N'Bùi Thành Tâm', N'08/07/2000',N'Nam','tam@gmail.com',N'Nam Từ Liêm',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0979456347','123', N'Trần Thành Tiên',N'08/07/2000',N'Nam','tien@gmail.com',N'Cầu Giấy',N'Hà Nam','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0346455746','123',N'Phạm Duy',N'08/07/2000',N'Nam','duy123@gmail.com',N'Thanh Xuân',N'Hà Nam','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0980564663','123',N'Trần Văn Hiệp',N'08/07/2000',N'Nam','hiep@gmail.com',N'Nam Từ Liêm',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0174346547','123',N'Trần Quang Hiệu', N'08/07/2000',N'Nam','hieu113@gmail.com',N'Nam Từ Liêm',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0923544768','123', N'Phan Thị Lan Anh',N'08/07/2000',N'Nam','lananh@gmail.com',N'Cầu Giấy',N'Hà Nam','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0178567464','123',N'Trịnh Phương Oanh',N'08/07/2000',N'Nam','oanh@gmail.com',N'Thanh Xuân',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0154654768','123',N'Vũ Ngọc Duy',N'08/07/2000',N'Nam','duy321@gmail.com',N'Nam Từ Liêm',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0124354657','123',N'Phạm Ngọc Thơm', N'11/11/2000',N'Nam','thom@gmail.com',N'Nam Từ Liêm',N'Nam Định','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0783747785','123', N'Phạm Ngọc Thúy',N'07/10/2000',N'Nam','thuy@gmail.com',N'Nam Từ Liêm',N'Nam Định','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0145685578','123',N'Trần Trung Hiếu',N'18/07/2000',N'Nam','hieu000@gmail.com',N'Cầu Giấy',N'Nam Định','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0982465768','123',N'Cao Trọng Giáp',N'10/10/1998',N'Nam','giapct@gmail.com',N'Thanh Xuân',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0657345346','123',N'Lê Sỹ Chính', N'08/07/2000',N'Nam','chinhls@gmail.com',N'Nam Từ Liêm',N'Hà Nam','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0123456789','123', N'Nguyễn Hoàng Anh',N'13/10/2000',N'Nam','anhnh@gmail.com',N'Thanh Xuân',N'Nam Định','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0987654321','123',N'Nguyễn Duy Quân',N'30/01/2000',N'Nam','quannd@gmail.com',N'Cầu Giấy',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Waiting');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0393883824','00683993',N'Nguyễn Duy Quân',N'30/01/2000',N'Nam','quannd@gmail.com',N'Nam Từ liêm',N'Hà Tĩnh','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');

insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'1010101010','123',N'Nguyễn Duy ',N'30/01/2000',N'Nam','quannd@gmail.com',N'Nam Từ liêm',N'Hà Tĩnh','a1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','Passed');


select * from Staff 

IF OBJECT_ID('LichNhanVien') IS NOT NULL
	DROP TABLE LichNhanVien
GO
CREATE TABLE LichNhanVien
(
	ID					int identity(1,1) not null,
	Phone				varchar(12) not null,
	Fullname			Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Slot				Nvarchar(100) not null,
	Note				Nvarchar(100) not null,
	CONSTRAINT PK_LichNhanVien PRIMARY KEY(ID),
	FOREIGN KEY(Phone) REFERENCES Staff,
)
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0987654321',N'Nguyễn Duy Quân',N'Nam Từ Liêm',N'Trung Văn',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0987654321',N'Nguyễn Duy Quân',N'Nam Từ Liêm',N'Trung Văn',N'2021-01-19',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0987654321',N'Nguyễn Duy Quân',N'Nam Từ Liêm',N'Trung Văn',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0987654321',N'Nguyễn Duy Quân',N'Nam Từ Liêm',N'Trung Văn',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0987654321',N'Nguyễn Duy Quân',N'Nam Từ Liêm',N'Trung Văn',N'2021-01-16',N'1',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Nguyễn Hoàng Anh',N'Thanh Xuân',N'Thượng Đình',N'2021-01-19',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0123456789',N'Nguyễn Hoàng Anh',N'Thanh Xuân',N'Thượng Đình',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Nguyễn Hoàng Anh',N'Thanh Xuân',N'Thượng Đình',N'2021-01-19',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Nguyễn Hoàng Anh',N'Thanh Xuân',N'Thượng Đình',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0123456789',N'Nguyễn Hoàng Anh',N'Thanh Xuân',N'Thượng Đình',N'2021-01-16',N'2',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0657345346',N'Lê Sỹ Chính',N'Bắc Từ Liêm',N'Phúc Diễn',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0657345346',N'Lê Sỹ Chính',N'Bắc Từ Liêm',N'Phúc Diễn',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0657345346',N'Lê Sỹ Chính',N'Bắc Từ Liêm',N'Phúc Diễn',N'2021-01-19',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0657345346',N'Lê Sỹ Chính',N'Bắc Từ Liêm',N'Phúc Diễn',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0657345346',N'Lê Sỹ Chính',N'Bắc Từ Liêm',N'Phúc Diễn',N'2021-01-16',N'3',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0982465768',N'Cao Trọng Giáp',N'Thanh Xuân',N'Thanh Xuân',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0982465768',N'Cao Trọng Giáp',N'Thanh Xuân',N'Thanh Xuân',N'2021-01-19',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0982465768',N'Cao Trọng Giáp',N'Thanh Xuân',N'Thanh Xuân',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0982465768',N'Cao Trọng Giáp',N'Thanh Xuân',N'Thanh Xuân',N'2021-01-19',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0982465768',N'Cao Trọng Giáp',N'Thanh Xuân',N'Thanh Xuân',N'2021-01-16',N'4',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0145685578',N'Trần Trung Hiếu',N'Hoàn Kiếm',N'Cửa Nam',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0145685578',N'Trần Trung Hiếu',N'Hoàn Kiếm',N'Cửa Nam',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0145685578',N'Trần Trung Hiếu',N'Hoàn Kiếm',N'Cửa Nam',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0145685578',N'Trần Trung Hiếu',N'Hoàn Kiếm',N'Cửa Nam',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0145685578',N'Trần Trung Hiếu',N'Hoàn Kiếm',N'Cửa Nam',N'2021-01-16',N'3',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0783747785',N'Phạm Ngọc Thúy',N'Hoàn Kiếm',N'Chương Dương',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0783747785',N'Phạm Ngọc Thúy',N'Hoàn Kiếm',N'Chương Dương',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0783747785',N'Phạm Ngọc Thúy',N'Hoàn Kiếm',N'Chương Dương',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0783747785',N'Phạm Ngọc Thúy',N'Hoàn Kiếm',N'Chương Dương',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0783747785',N'Phạm Ngọc Thúy',N'Hoàn Kiếm',N'Chương Dương',N'2021-01-16',N'1',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0124354657',N'Phạm Ngọc Thơm',N'Tây Hồ',N'Hoàn Kiếm',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0124354657',N'Phạm Ngọc Thơm',N'Tây Hồ',N'Hoàn Kiếm',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0124354657',N'Phạm Ngọc Thơm',N'Tây Hồ',N'Hoàn Kiếm',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0124354657',N'Phạm Ngọc Thơm',N'Tây Hồ',N'Hoàn Kiếm',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0124354657',N'Phạm Ngọc Thơm',N'Tây Hồ',N'Hoàn Kiếm',N'2021-01-16',N'2',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0154654768',N'Vũ Ngọc Duy',N'Hà Đông',N'Hoàn Kiếm',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0154654768',N'Vũ Ngọc Duy',N'Hà Đông',N'Hoàn Kiếm',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0154654768',N'Vũ Ngọc Duy',N'Hà Đông',N'Hoàn Kiếm',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0154654768',N'Vũ Ngọc Duy',N'Hà Đông',N'Hoàn Kiếm',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0154654768',N'Vũ Ngọc Duy',N'Hà Đông',N'Hoàn Kiếm',N'2021-01-16',N'4',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0178567464',N'Trịnh Phương Oanh',N'Hai Bà Trưng',N'Đống Đa',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0178567464',N'Trịnh Phương Oanh',N'Hai Bà Trưng',N'Đống Đa',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0178567464',N'Trịnh Phương Oanh',N'Hai Bà Trưng',N'Đống Đa',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0178567464',N'Trịnh Phương Oanh',N'Hai Bà Trưng',N'Đống Đa',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0178567464',N'Trịnh Phương Oanh',N'Hai Bà Trưng',N'Đống Đa',N'2021-01-16',N'1',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0923544768',N'Phan Thị Lan Anh',N'Đống Đa',N'Đống Đa',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0923544768',N'Phan Thị Lan Anh',N'Đống Đa',N'Đống Đa',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0923544768',N'Phan Thị Lan Anh',N'Đống Đa',N'Đống Đa',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0923544768',N'Phan Thị Lan Anh',N'Đống Đa',N'Đống Đa',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0923544768',N'Phan Thị Lan Anh',N'Đống Đa',N'Đống Đa',N'2021-01-16',N'2',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0174346547',N'Trần Quang Hiệu',N'Cầu Giấy',N'Đống Đa',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0174346547',N'Trần Quang Hiệu',N'Cầu Giấy',N'Đống Đa',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0174346547',N'Trần Quang Hiệu',N'Cầu Giấy',N'Đống Đa',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0174346547',N'Trần Quang Hiệu',N'Cầu Giấy',N'Đống Đa',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0174346547',N'Trần Quang Hiệu',N'Cầu Giấy',N'Đống Đa',N'2021-01-16',N'3',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0980564663',N'Trần Văn Hiệp',N'Ba Đình',N'Đống Đa',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0980564663',N'Trần Văn Hiệp',N'Ba Đình',N'Đống Đa',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0980564663',N'Trần Văn Hiệp',N'Ba Đình',N'Đống Đa',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0980564663',N'Trần Văn Hiệp',N'Ba Đình',N'Đống Đa',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0980564663',N'Trần Văn Hiệp',N'Ba Đình',N'Đống Đa',N'2021-01-16',N'4',N'Chưa làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0346455746',N'Phạm Duy',N'Hà Nội',N'Hoàng Mai',N'2021-01-18',N'1',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0346455746',N'Phạm Duy',N'Hà Nội',N'Hoàng Mai',N'2021-01-18',N'2',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0346455746',N'Phạm Duy',N'Hà Nội',N'Hoàng Mai',N'2021-01-18',N'3',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0346455746',N'Phạm Duy',N'Hà Nội',N'Hoàng Mai',N'2021-01-18',N'4',N'Chưa làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0346455746',N'Phạm Duy',N'Hà Nội',N'Hoàng Mai',N'2021-01-16',N'1',N'Chưa làm');

select * from LichNhanVien
IF OBJECT_ID('Rate') IS NOT NULL
	DROP TABLE Rate
GO
CREATE TABLE Rate
(
	ID					int identity(1,1) not null,
	Star				Nvarchar(100) null,
	Dated				Date null,
	Phone				VARCHAR(12) not null,
	NameCustomer		NVARCHAR(50) null,
	Note				NVARCHAR(100) null,
	CONSTRAINT PK_Rate PRIMARY KEY(ID),
	FOREIGN KEY(Phone) REFERENCES Customer(Phone),
)
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987655354',N'Phạm Ngọc Thúy',N'Dịch vụ rất tốt');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987979789',N'Phạm Duy',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987654367',N'Cao Trọng Giáp',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987654322',N'Trần Trung Hiếu',N'Dịch vụ rất tốt');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987654321',N'Nguyễn Duy Quân',N'Tư vấn nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0987475674',N'Nguyễn Hải Long',N'Dịch vụ rất tốt');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0123456789',N'Nguyễn Hoàng Anh',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0982354757',N'Trần Thành Tiên',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0980788668',N'Đinh Hoàng Đạo',N'Tư vấn nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0967745353',N'Trịnh Phương Oanh',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Bình thường',GETDATE(),'0966754636',N'Phạm Quốc Chính',N'Nên thêm nhiều dịch vụ hơn');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0962064263',N'Lê Sỹ Chính',N'Nhân viên chăm sóc chu đáo');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Bình thường',GETDATE(),'0960785454',N'Bùi Thành Tâm',N'Nhân viên thân thiện');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0946566743',N'Đoàn Ngọc Thơm',N'Tôi sẽ ủng hộ tiếp');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0912434564',N'Trần Văn Hiệp',N'Nhân viên chăm sóc chu đáo');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Bình thường',GETDATE(),'0465475854',N'Vũ Ngọc Duy',N'Nên thêm nhiều dịch vụ hơn');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0126454534',N'Phan Quốc Trung',N'Tốt');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0124463654',N'Trần Quang Hiệu',N'Nhân viên chăm sóc chu đáo');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0123567464',N'Đinh Văn Dương',N'Nhân viên rất nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0123478675',N'Phan Thị Lan Anh',N'Tư vấn nhiệt tình');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0465475854',N'Vũ Ngọc Duy',N'Dịch vụ rất tốt');
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Rất hài lòng',GETDATE(),'0962064263',N'Lê Sỹ Chính',N'Dịch vụ rất tốt');

select * from Rate

IF OBJECT_ID('Orders') IS NOT NULL
	DROP TABLE Orders
GO
CREATE TABLE Orders
(
	ID					int identity(1,1) not null,
	Date				Date not null,
	Phone				VARCHAR(12) not null,

	CONSTRAINT PK_Orders PRIMARY KEY(ID),
)

insert into Orders(Date,Phone) Values (GETDATE(),'0987763552')
select * from orders

IF OBJECT_ID('OrderDetail') IS NOT NULL
	DROP TABLE OrderDetail
GO
CREATE TABLE OrderDetail
(
	ID					int identity(1,1) not null,
	ID_Orders			int not null,
	Email				Nvarchar(100) not null,
	Phone				VARCHAR(12) not null,
	City				Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Street				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Slot				int not null,
	Price				int not null,
	Staff				VARCHAR(12) null,
	Note				Nvarchar(100) null,
	CONSTRAINT PK_OrderDetail PRIMARY KEY(ID),
	---FOREIGN KEY(ID_Orders) REFERENCES Orders,
)

insert into OrderDetail values((select Max(ID) from Orders),N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Hoàn thành');



select * from LichNhanVien where dated='2021-01-18'


CREATE TABLE History(
	HistoryId			int Identity(1,1),
	ReferenceId			int,
	Email				Nvarchar(100) not null,
	Phone				Nvarchar(100) not null,
	City				Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Street				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Price				int not null,
	Slot				Nvarchar(100) not null,
	Staff				Nvarchar(100) null,
	Note				Nvarchar(100) null,
	InsertOrder VARCHAR(50)  null,
	UpdatedOrder VARCHAR(50)  null,
	DeleteOrder VARCHAR(50)  null,
	)
	go
	CREATE TRIGGER dbo.OrdersChanges100
    ON dbo.OrderDetail
AFTER UPDATE, DELETE
AS

IF EXISTS (
  SELECT * FROM Inserted
)
  -- UPDATE Statement was executed
  INSERT INTO History(
	ReferenceId,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,
	Price,
	Staff,
	Note,
	UpdatedOrder
  )
  SELECT
    d.ID,
    d.Email,
	d.Phone,	
	d.City,		
	d.District,
	d.Ward,		
	d.Street,	
	d.Dated,					
	d.Slot,
	d.Price,
	d.Staff,
	d.Note,
    i.id
  FROM Deleted d
  INNER JOIN Inserted i ON i.id = d.ID
ELSE
  -- DELETE Statement was executed
  INSERT INTO History(
	ReferenceId,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,
	Price,
	Staff,
	Note,
	DeleteOrder
  )
  SELECT
	ID,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,	
	Price,
	Staff,
	Note,
	Id
  FROM Deleted

GO




 ---SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3'


 ---(Select 12000*(SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3')from OrderDetail)
 
 ---(SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3');
 ---, 120000*(SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = (select Max(ID) from Orders))