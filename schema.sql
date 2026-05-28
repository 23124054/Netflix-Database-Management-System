 create database netflix_db;

  use netflix_db;

 create table users(user_id int primary key AUTO_INCREMENT,
 name varchar(100) not null,
 email varchar(100) UNIQUE not null,
 country varchar(100) not null,
 join_date DATE,
 age int not null,
 gender varchar (20) not null);


 create table movies (movie_id int primary key AUTO_INCREMENT,
 title varchar(500) not null,
 genre varchar (100) not null,
 release_year YEAR not null,
 durations_minutes int not null,
 language varchar (200) not null,
 rating decimal(2,1));


 create table subscriptions_plan(plan_id int primary key AUTO_INCREMENT,
 plan_name varchar (200) NOT NULL,
 price decimal (10,2),
 duration_months int NOT NULL,
 video_quality varchar(50) NOT NULL);


 create table User_Subscriptions(subscription_id int primary key AUTO_INCREMENT,
 user_id int not null,
 plan_id int not null,
 start_date DATE,
 end_date DATE,
 payment_status varchar(50) not null,
 foreign key(user_id) REFERENCES users(user_id),
 foreign key(plan_id) REFERENCES subscriptions_plan(plan_id));


 create table watch_history(history_id int primary key AUTO_INCREMENT,
 user_id int not null,
 movie_id int not null,
 watched_date DATE,
 watch_duration_minutes int not null,
 foreign key(user_id) REFERENCES users(user_id),
 foreign key(movie_id) REFERENCES movies(movie_id));


 create table ratings(rating_id int primary key AUTO_INCREMENT,
 user_id int not null,
 movie_id int not null,
 rating decimal(2,1) not null,
 review varchar(20) not null,
 rating_date DATE,
 foreign key (user_id) REFERENCES users(user_id),
 foreign key (movie_id) REFERENCES movies (movie_id));