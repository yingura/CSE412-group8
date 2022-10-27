--For table song
ALTER TABLE song
ADD PRIMARY KEY (song_title);

COMMIT WORK;

ALTER TABLE song
ADD FOREIGN KEY (s_artist_name) references artist;

COMMIT WORK;

ALTER TABLE song
ADD FOREIGN KEY (s_album_name) references album;

COMMIT WORK;

--For table album
ALTER TABLE album
ADD PRIMARY KEY (album_name);

COMMIT WORK:

ALTER TABLE album
ADD FOREIGN KEY (a_artist_name) references artist;

COMMIT WORK;

--For table artist
ALTER TABLE artist
ADD PRIMARY KEY (artist_name);

COMMIT WORK;

--For table lib
ALTER TABLE lib
ADD PRIMARY KEY (uid);

COMMIT WORK;

ALTER TABLE lib
ADD FOREIGN KEY (l_song_title) references song;

COMMIT WORK;

ALTER TABLE lib
ADD FOREIGN KEY (l_artist_name) references artist;

COMMIT WORK;

ALTER TABLE lib
ADD FOREIGN KEY (l_album_name) references album;

COMMIT WORK;

--For table users
ALTER TABLE users
ADD PRIMARY KEY (username);

COMMIT WORK;

ALTER TABLE users
ADD FOREIGN KEY (u_uid) references lib;

COMMIT WORK;
