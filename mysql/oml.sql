INSERT INTO article(articleContent, articleId, articleImage, articleReporter, articleSubtitle, articleTitle);
VALUES ("content", UNHEX("ba98a54f7a4e4810a0d40eac98c88f90"), "image", john doe, "this is an article subtitle", "this is an article title");
INSERT INTO user(userAboutMe, userEmail, userId, userImage, userInterests, userLocation, userName);
VALUES ("about me", email@email.com, UNHEX("acd927be72174a898e499a5f43367d52"), image, interests, New Mexico, johndoe1);
INSERT INTO category(categoryId, categoryTitle, categorySubtitle);
VALUES (UNHEX("6874f3cc3b094a59ba2ec245d6c7197b"), "this is a category title", "this is a category subtitle");
INSERT INTO comment(commentId, commentUserId, commentArticleId, commentContent);
VALUES (UNHEX("97041791f0754a4d90adb4ffd77c7081"), UNHEX("acd927be72174a898e499a5f43367d52"), UNHEX("ba98a54f7a4e4810a0d40eac98c88f90"), content;

UPDATE user SET userAboutMe= UNHEX("acd927be72174a898e499a5f43367d52");

DELETE FROM comment WHERE commentId= UNHEX("97041791f0754a4d90adb4ffd77c7081");

SELECT articleContent, articleId, articleImage, articleReporter, articleSubtitle, articleTitle from article