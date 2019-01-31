INSERT INTO category(categoryId, categoryTitle, categorySubtitle) VALUES (UNHEX("6874f3cc3b094a59ba2ec245d6c7197b"), "this is a category title", "this is a category subtitle");
INSERT INTO article(articleId, articleCategoryId , articleContent, articleImage, articleReporter, articleTitle) VALUES (UNHEX("ba98a54f7a4e4810a0d40eac98c88f90"), UNHEX("6874f3cc3b094a59ba2ec245d6c7197b"), "content", "image", "john doe", "this is an article title");
INSERT INTO user(userId, userAboutMe, userEmail, userImage, userInterests, userLocation, userName) VALUES (UNHEX("acd927be72174a898e499a5f43367d52"), "about me", "email@email.com", "image", "interests", "New Mexico", "johndoe1");
INSERT INTO comment(commentId, commentUserId, commentArticleId, commentContent) VALUES (UNHEX("7560772355114ae589e857f06ada2b93"), '0xACD927BE72174A898E499A5F43367D52', UNHEX("ba98a54f7a4e4810a0d40eac98c88f90"), "content");

UPDATE user SET userAboutMe= UNHEX("acd927be72174a898e499a5f43367d52");

DELETE FROM comment WHERE commentId= UNHEX("97041791f0754a4d90adb4ffd77c7081");

SELECT articleContent, articleId, articleImage, articleReporter, articleTitle from article WHERE articleId = UNHEX("ba98a54f7a4e4810a0d40eac98c88f90");

SELECT article.articleContent, article.articleId, article.articleImage, article.articleReporter, article.articleTitle FROM article INNER JOIN category on article.articleId = category.categoryId where article.articleContent= "blah";