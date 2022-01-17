CREATE TABLE Users(
	email varchar(20) not null primary key,
	username varchar(15),
	password varchar(8)
);

CREATE TABLE Posts(
	postNo integer(25) not null primary key,
	createdDate integer(11) not null,
	content varchar(255),
	email varchar(20) not null,
	foreign key(email) references Users(email)
);

CREATE TABLE Comments(
	commentNo integer(25) not null primary key,
	createdDate integer(11) not null,
	content varchar(255),
	postNo integer(25) not null,
	email varchar(20) not null,
	foreign key(email) references Users(email),
	foreign key(postNo) references Post(postNo)
);