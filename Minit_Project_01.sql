--Create a videos table.

CREATE TABLE Videos(
					videoID int NOT null,
					title varchar(255),
					duration_in_minutes int,
					url varchar(255),
					PRIMARY KEY (VideoID)
					);

SELECT * FROM Videos;

-- Create Reviewers table.

CREATE TABLE Reviewers (
						user_id int NOT NULL,
						f_name varchar(255),
						l_name varchar (255),
						rating int,
						review varchar(255),
						VideoID int NOT NULL,
						PRIMARY KEY (user_id)
						);
						
SELECT * FROM Reviewers;

--fill up Videos table
INSERT INTO Videos VALUES (1, 'Blooming Flowers Timelapse','20','https://www.youtube.com/watch?v=pZVdQLn_E5w&ab_channel=NextObserver');
INSERT INTO Videos VALUES (2, 'Full Moon Video HD','5','https://www.youtube.com/watch?v=dVYl5ImNjow&ab_channel=FreeHDvideos-nocopyright');
INSERT INTO Videos VALUES (3, 'Stars 101','3','https://www.youtube.com/watch?v=EFO_bsg1sw8&ab_channel=NationalGeographic');

--fill up Reviewers table
INSERT INTO Reviewers VALUES (1, 'Bob','Row',5,'Amazing video!!',1);
INSERT INTO Reviewers VALUES (2, 'Ashley','Asher', 4, 'Wow, this is great.',2);
INSERT INTO Reviewers VALUES (3, 'Robert','Felix',3, 'This is pretty cool!', 3);
INSERT INTO Reviewers VALUES (4, 'Derek','Rye',2, 'Not that interesting...', 1);
INSERT INTO Reviewers VALUES (5, 'Sylvia','Tish',5, 'Cool video!', 2);



select * from Videos as v
JOIN Reviewers as r
ON v.videoid=r.videoid;




