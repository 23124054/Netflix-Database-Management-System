alter table users add column phone_number varchar(100) not null;

     alter table ratings modify column review varchar(100);

     rename table subscriptions_plan to subscription_plans;

     alter table users rename column country to countries;

     alter table users drop column age;

     drop table watch_history;

     truncate table ratings;

     insert into users
     (user_id,name,email,countries,join_date,gender,phone_number)
     values
     (6,'vijay','vj324@gmail.com','india','2026-05-28','male','9489445515');

     update user_subscriptions set payment_status='paid' where subscription_id=2;

     delete from ratings where rating_id='3';
