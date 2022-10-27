--For table song
CREATE TABLE song (
	song_title varchar(255) NOT NULL,
	average_rating int NOT NULL,
	s_artist_name varchar(255) NOT NULL,
	s_album_name varchar(255) NOT NULL
);
ALTER TABLE song
ADD PRIMARY KEY (song_title);

--For table album
CREATE TABLE album (
	album_name varchar(255) NOT NULL,
	album_cover varchar(255) NOT NULL,
	release_date varchar(255) NOT NULL
);
ALTER TABLE album
ADD PRIMARY KEY (album_name);

--For table artist
CREATE TABLE artist (
	artist_name varchar(255) NOT NULL,
	profile_picture bit NOT NULL
);
ALTER TABLE artist
ADD PRIMARY KEY (artist_name);

--For table lib
CREATE TABLE lib (
	uid int NOT NULL,
	l_song_title varchar(255) NOT NULL,
	l_album_name varchar(255) NOT NULL,
	l_artist_name varchar(255) NOT NULL
);
ALTER TABLE lib
ADD PRIMARY KEY (uid);

--For table users
CREATE TABLE users (
	username varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	u_uid int NOT NULL
);
ALTER TABLE users
ADD PRIMARY KEY (username);
