CREATE TABLE song (
	song_title varchar(255) NOT NULL,
	average_rating int NOT NULL,
	s_artist_name varchar(255) NOT NULL,
	s_album_name varchar(255) NOT NULL
);

CREATE TABLE album (
	album_name varchar(255) NOT NULL,
	album_cover varchar(255) NOT NULL,
	release_date varchar(255) NOT NULL,
	a_artist_name varchar(255) NOT NULL,
);

CREATE TABLE artist (
	artist_name varchar(255) NOT NULL,
	profile_picture varchar(255) NOT NULL
);

CREATE TABLE lib (
	uid int NOT NULL,
	l_song_title varchar(255) NOT NULL,
	l_album_name varchar(255) NOT NULL,
	l_artist_name varchar(255) NOT NULL
);

CREATE TABLE users (
	username varchar(255) NOT NULL,
	u_password varchar(255) NOT NULL,
	u_uid int NOT NULL
);
