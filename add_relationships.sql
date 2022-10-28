--For table artist
ALTER TABLE artist
ADD PRIMARY KEY (artist_name);

COMMIT WORK;

--For table album
ALTER TABLE album
ADD PRIMARY KEY (album_name);

ALTER TABLE album
ADD FOREIGN KEY (a_artist_name) references artist;

COMMIT WORK;

--For table song
ALTER TABLE song
ADD PRIMARY KEY (song_title);

ALTER TABLE song
ADD FOREIGN KEY (s_artist_name) references artist;

ALTER TABLE song
ADD FOREIGN KEY (s_album_name) references album;

COMMIT WORK;

--For table lib
ALTER TABLE lib
ADD FOREIGN KEY (l_song_title) references song;

ALTER TABLE lib
ADD FOREIGN KEY (l_artist_name) references artist;

ALTER TABLE lib
ADD FOREIGN KEY (l_album_name) references album;

COMMIT WORK;

--For table users
ALTER TABLE users
ADD FOREIGN KEY (uid) references lib;

ALTER TABLE users
ADD PRIMARY KEY (u_uid);

COMMIT WORK;
