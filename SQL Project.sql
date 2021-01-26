-- Part 1
CREATE TABLE videos(
		id INT PRIMARY KEY,
		title VARCHAR(50) NOT NULL,
		length INT NOT NULL,
		url VARCHAR(255) NOT NULL);

INSERT INTO videos (id, title, length, url)
VALUES (1, 'Okey Dokey', 248, 'https://www.youtube.com/watch?v=1M2FrubP_hA');
INSERT INTO videos (id, title, length, url)
VALUES (2, 'Fever', 159, 'https://www.youtube.com/watch?v=8f_Y7b5iiTc');
INSERT INTO videos (id, title, length, url)
VALUES (3, 'I Like Me Better', 197, 'https://www.youtube.com/watch?v=a7fzkqLozwA');
INSERT INTO videos (id, title, length, url)
VALUES (4, 'Untitled, 2014', 228, 'https://www.youtube.com/watch?v=9kaCAbIXuyg');
INSERT INTO videos (id, title, length, url)
VALUES (5, 'LOVE SCENARIO', 211, 'https://www.youtube.com/watch?v=vecSVX1QYbQ');

SELECT * FROM videos

-- Part 2
CREATE TABLE Reviewers(
	name VARCHAR(50) NOT NULL,
	rating INT NULL,
	review VARCHAR(50),
	video_id INT REFERENCES videos);
	
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('teamsj', 5, 'Super catchy', 1);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('ikonstan', 5, 'Luv the spring feelz!!!', 5);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('Sarah', 2, 'Not that great', 1);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('Riley', 5, 'All time fav', 2);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('luvgd', 5, 'Love all their songs', 4);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('Lucas', 4, 'Translate some lyrics plz', 2);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('superhero_1', 2, 'Not my cup of tea', 3);
INSERT INTO Reviewers (name, rating, review, video_id)
VALUES ('cocoloco', 5, 'Hwaiting for comeback', 4);

SELECT * FROM Reviewers
ORDER BY video_id asc

-- Part 3
SELECT * FROM videos
INNER JOIN Reviewers
ON videos.id = Reviewers.video_id
ORDER BY video_id asc