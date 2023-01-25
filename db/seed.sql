\c songs_dev;

INSERT INTO songs (name, artist, album, time, is_favorite) VALUES
('Come and See Me', 'PARTYNEXTDOOR', 'PARTYNEXTDOOR 3', '3:55', false),
('Friend Of Mine', 'Kelly Price', 'Soul Of A Woman', '6:18', true),
('Trust And Believe', 'Keyshia Cole', 'Woman To Woman', '4:13', true),
('Mockingbird', 'Eminem', 'Curtain Call', '4:11', false),
('21 Questions', '50 Cent', 'Get Rich Or Die Trying', '3:44', false);


INSERT INTO reviews (bookmark_id, reviewer, title, content, rating )
VALUES
('1', 'Evan', 'My Favorite', 'This website crushes it when it comes to awesome explanations', 3),
('2', 'Evan', 'My Favorite', 'This website crushes it when it comes to inspiring me', 3),
('3', 'Evan', 'My Least Favorite', 'This website crushes it when it comes to destroying my patience', 5),
('2', 'Juliana', 'I Love Going Here', 'I finally learned how to properly fold a fitted sheet', 5),
('2', 'David', 'Cool Site', 'But I got way into adding decorative pillows everywhere', 1),
('2', 'Mr. Mingo', 'So Helpful', 'I got some awesome recommendations for a ceiling fan and some spoons', 3),
('2', 'Alison', 'A lifesaver!','Helped me get my stove cleaner than I ever imagiend possible!', 4),
('3', 'Hannah', 'Insert Confetti Emoji Here', 'I survived 6 hours at the DMV!', 4),
('3', 'Gabi', 'My Friend Hannah', 'Gets a discount if I leave a positive review, so here it is', 5);