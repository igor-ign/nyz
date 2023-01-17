DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS Follow;
DROP TABLE IF EXISTS "user";

CREATE TABLE "user"(
	id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	name VARCHAR(100) NOT NULL,
	profile_picture VARCHAR(500),
	email VARCHAR(100) NOT NULL,
	password VARCHAR(500) NOT NULL

);

CREATE TABLE Post(
	id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	author_id INTEGER NOT NULL,
	author_name VARCHAR(100) NOT NULL,
	author_email VARCHAR(100) NOT NULL,
	author_picture VARCHAR(500),
	title VARCHAR(80) NOT NULL,
	description VARCHAR(200) NOT NULL,
	post_content VARCHAR(500) NOT NULL
	
);
ALTER TABLE Post ADD CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES "user";

CREATE TABLE Follow(
	id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY NOT NULL,
	follower_id INTEGER NOT NULL,
	followed_id INTEGER NOT NULL
	
);

INSERT INTO "user" (name, profile_picture, email, password) values('Igor Ignácio', '', 'igor@hotmail.com', '$2a$10$QSWmPEXggG6aZw4iJ.DYnO7Y2IcDMNGbfRWViO3euRbf9iOnN5XfC');
INSERT INTO "user" (name, profile_picture, email, password) values('John Laimes', '', 'john@hotmail.com', '$2a$10$QSWmPEXggG6aZw4iJ.DYnO7Y2IcDMNGbfRWViO3euRbf9iOnN5XfC');
INSERT INTO "user" (name, profile_picture, email, password) values('Jesse Pattkins', '', 'jesse@hotmail.com', '$2a$10$QSWmPEXggG6aZw4iJ.DYnO7Y2IcDMNGbfRWViO3euRbf9iOnN5XfC');
INSERT INTO "user" (name, profile_picture, email, password) values('Lenny Hawkings', '', 'lenne@hotmail.com', '$2a$10$QSWmPEXggG6aZw4iJ.DYnO7Y2IcDMNGbfRWViO3euRbf9iOnN5XfC');
INSERT INTO "user" (name, profile_picture, email, password) values('Lenny Philips', '', 'lenphil@hotmail.com', '$2a$10$QSWmPEXggG6aZw4iJ.DYnO7Y2IcDMNGbfRWViO3euRbf9iOnN5XfC');

INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(1,'Igor Ignácio', 'igor@hotmail.com', '', 'How to learn Javascript', 'In this post I am teaching you the basics about how to learn JS', 'If you want to learn Javascript you need to have a clear roadmap in order to know what path you should follow, also you need to be consistent and focused.');
INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(4, 'Lenny Hawkings', 'lenne@hotmail.com', '', 'Money management, do you know how it works?', 'The better you manage your money, the more you will have in the future.', 'You need to know what is really important for you and what is not in order to waste less money. We usually spend our money in things that we will not even use.');
INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(3, 'Jesse Pattkins', 'jesse@hotmail.com', '', 'Benefits of exercise for developers', 'The more you take care about your health the better you will be when you get older', 'Developers tend to stay in the same position all day, but do you know that this is not good for your health? You need to practice some exercise in order to make your body move.');
INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(2, 'John Laimes', 'john@hotmail.com', '', 'The importance of LinkedIn for getting a job', 'A good LinkedIn profile draw recruiters attention.', 'If you have a rich LinkedIn profile you have more chances to receive a job offer. You should list in your profile all of your job experience, certificates and have a good about me.');
INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(2, 'John Laimes', 'john@hotmail.com', '', 'How to use stock market at your favor.', 'If you dont want to depend on the government in order to receive your retirement salary in the future, this post is for you.', 'Stock market is very useful because in the long run it ensures you that you will have a passive income, but only if you work hard and study how to invest your money correctly');
INSERT INTO Post (author_id, author_name, author_email, author_picture, title, description, post_content) VALUES(2, 'John Laimes', 'john@hotmail.com', '', 'Why you are always tired?', 'If you have a good sleep but always wake up tired this post is for you.', 'In the social media era we have a lot of options that can entertain us like Facebook, TikTok, Twitter, Instagram and more. With this high exposure to social media people stay hours and more hours looking at the phone screen, something that might disturb your rest. If you are the kind of person that always check your socials before sleep you are the guilty for waking up tired. Our phone throws blue light into our eye and it makes our brain alert, something that can change our sleep quality.');

INSERT INTO Follow (follower_id, followed_id) values (1, 2);
INSERT INTO Follow (follower_id, followed_id) values (1, 4);