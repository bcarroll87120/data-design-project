ALTER DATABASE bcarroll3 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS article;

CREATE TABLE article (
   articleId BINARY(16) NOT NULL,
	articleTitle BINARY(16) NOT NULL,
	articleSubtitle VARCHAR(128) NOT NULL,
	articleImage VARCHAR(255),
	articleContent(text) NOT NULL,
	articleReporter VARCHAR(32) NOT NULL,

   INDEX,
   PRIMARY KEY (articleId)
);

CREATE TABLE user (
	userId BINARY(16) NOT NULL,
	userName VARCHAR(32) NOT NULL,
	userLocation VARCHAR(16),
	userAboutMe VARCHAR(128),
	userInterests VARCHAR(128),
	userImage VARCHAR(255),
	userEmail VARCHAR(32),

UNIQUE (userName),
UNIQUE (userEmail),
PRIMARY KEY (userId)
);

CREATE TABLE category (
	categoryId BINARY(16) NOT NULL,
	categoryTitle VARCHAR(16) NOT NULL,
	categorySubtitle VARCHAR(16) NOT NULL,

PRIMARY KEY (categoryId)
);

CREATE TABLE comment (
	commentId BINARY(16) NOT NULL,
	commentUserId BINARY(16) NOT NULL,
	commentArticleId BINARY (16) NOT NULL,
	commentContent VARCHAR(128) NOT NULL,

INDEX (commentUserId),
INDEX (commentArticleId),
FOREIGN KEY (commentUserId) REFERENCES user(userId),
FOREIGN KEY (commentArticleId) REFERENCES article(articleId),
PRIMARY KEY (commentId)
);