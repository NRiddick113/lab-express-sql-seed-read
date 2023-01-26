\c songs_dev;

INSERT INTO songs (name, artist, album, time, is_favorite) VALUES
('Come and See Me', 'PARTYNEXTDOOR', 'PARTYNEXTDOOR 3', '3:55', false),
('Friend Of Mine', 'Kelly Price', 'Soul Of A Woman', '6:18', true),
('Trust And Believe', 'Keyshia Cole', 'Woman To Woman', '4:13', true),
('Mockingbird', 'Eminem', 'Curtain Call', '4:11', false),
('21 Questions', '50 Cent', 'Get Rich Or Die Trying', '3:44', false);


INSERT INTO reviews (song_id, reviewer, genre, content, rating )
VALUES
('1', 'Evan', 'hip hop', 'This song makes me wanna dance', 3),
('1', 'Evan', 'hip hop', 'This is party music', 3),
('3', 'Evan', 'R&B', 'i love this song', 5),
('4', 'Juliana', 'rap', 'the rapper is really talented', 5),
('2', 'David', 'R&B', 'too emotional and slow', 1),
('4', 'Mr. Mingo', 'rap', 'Too much cursing but i like it', 3),
('2', 'Alison', 'R&B','Speaks to me are a women', 4),
('3', 'Hannah', 'R&B', 'I felt this song!', 4),
('5', 'Gabi', 'rap', '50 Cent is the best Rapper!', 5);