ALTER DATABASE bcarroll3 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS category;

CREATE TABLE category (
	categoryId BINARY(128) NOT NULL,
	categorySubtitle VARCHAR(128) NOT NULL,
	categoryTitle VARCHAR(128) NOT NULL,

	PRIMARY KEY (categoryId)
);

CREATE TABLE user (
	userId BINARY(16) NOT NULL,
	userAboutMe VARCHAR(128),
	userEmail VARCHAR(32),
	userImage VARCHAR(255),
	userInterests VARCHAR(128),
	userLocation VARCHAR(16),
	userName VARCHAR(32) NOT NULL,

UNIQUE (userName),
UNIQUE (userEmail),
PRIMARY KEY (userId)
);

CREATE TABLE article (
	articleId BINARY(16) NOT NULL,
	articleCategoryId BINARY(16) NOT NULL,
	articleContent text NOT NULL,
	articleImage VARCHAR(255),
	articleReporter VARCHAR(32) NOT NULL,
	articleTitle VARCHAR(128) NOT NULL,
	INDEX (articleCategoryId),
	PRIMARY KEY (articleId),
	FOREIGN KEY (articleCategoryId) REFERENCES category(categoryId)
);

CREATE TABLE comment (
	commentId BINARY(128) NOT NULL,
	commentArticleId BINARY(128) NOT NULL,
	commentUserId BINARY(128) NOT NULL,
	commentContent VARCHAR(128) NOT NULL,

INDEX (commentUserId),
INDEX (commentArticleId),
FOREIGN KEY (commentUserId) REFERENCES user(userId),
FOREIGN KEY (commentArticleId) REFERENCES article(articleId),
PRIMARY KEY (commentId)
);