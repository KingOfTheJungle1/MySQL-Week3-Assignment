CREATE TABLE Users(
	email text primary key not null,
	username text,
	pass text
);

CREATE TABLE Posts(
	postNo integer primary key,
	createdDate date,
	content text,
	email text,
	foreign key(email) references Users(email)
);

CREATE TABLE Comments(
	commentNo integer primary key,
	createdDate date,
	content text,
	postNo integer,
	email text,
	foreign key(email) references Users(email),
	foreign key(postNo) references Post(postNo)
);