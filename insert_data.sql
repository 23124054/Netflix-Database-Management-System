USE netflix_db;

insert into users (name,email,country,join_date,age,gender)
     values
     ('anu','anu3@gmail.com','india','2026-01-01',23,'female'),
     ('britto','britto3@gmail.com','usa','2026-02-18',37,'male'),
     ('christopher','christo3@gmail.com','africa','2026-02-27',56,'male'),
     ('lena','lena033@gmail.com','uk','2026-03-07',42,'female'),
     ('subasri','subasri03@gmail.com','india','2026-04-25',28,'female');

     insert into movies (title,genre,release_year,durations_minutes,language,rating)
     values
     ('soorarai pottru','biography',2020,153,'TAMIL',8.7);
     ('chennai express','comedy',2013,141,'HINDI',7.5),
     ('pushpa','action',2021,179,'TELUGU',7.6),
     ('kantara','thriller/folk',2022,148,'KANNADA',8.3),
     ('incendies','war',2010,131,'FRENCH',8.3),
     ('the gods must be crazy','comedy',1980,109,'AFRIKAANS',7.3),
     ('avengers:endgame','action',2019,181,'ENGLISH',8.4),
     ('harry potter and the philosophers stone','fantasy',2001,152,'ENGLISH',7.6);

     insert into subscriptions_plan(plan_name,price,duration_months,video_quality)
     values
     ('standard',499,3,'FULL HD'),
     ('premium',999,6,'4k'),
     ('family plan',1499,12,'ultra HD'),
     ('mobile only',99,1,'SD');

      insert into  User_Subscriptions(user_id,plan_id,start_date,end_date,payment_status)
     values
     (1,2,'2026-01-01','2026-04-01','paid'),
     (2,4,'2026-02-18','2027-02-18','pending'),
     (3,1,'2026-02-27','2026-03-27','failed'),
     (4,3,'2026-03-07','2026-09-07','refunded'),
     (5,5,'2026-04-25','2026-05-25','paid');

     insert into watch_history(user_id,movie_id,watched_date,watch_duration_minutes)
     values
     (1,4,'2026-02-16',153),
     (2,7,'2026-05-16',172),
     (3,6,'2026-02-16',109),
     (4,8,'2026-03-17',130),
     (5,1,'2026-04-28',153),
     (5,2,'2026-04-29',141),
     (1,3,'2026-03-31',179),
     (2,5,'2026-06-03',131);

     insert into ratings(user_id,movie_id,rating,review,rating_date)
     values
     (1,4,9.0,'must watch','2026-02-16'),
     (2,7,8.5,'good','2026-05-16'),
     (3,6,7.9,'very funny','2026-02-16'),
     (4,8,7.9,'interesting','2026-03-17'),
     (5,1,9.9,'excellent movie','2026-04-28'),
     (5,2,9.1,'hillarious one','2026-04-29'),
     (1,3,8.6,'good','2026-03-31'),
     (2,5,8.3,'super movie','2026-06-03');

