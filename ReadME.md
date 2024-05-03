How to Run

#step 1
CREATE SCHEMA `springboot_carportal_db` DEFAULT CHARACTER SET utf8 ;

#step 2
Developed Entity & update application.prorperties

#step 3
Run Springboot application & will create the tables in your database.

#step 4 - insert data into Role Table
INSERT INTO `springboot_carportal_db`.`role` (`id`, `description`, `name`) VALUES ('1', 'for admin', 'Administrator');
INSERT INTO `springboot_carportal_db`.`role` (`id`, `description`, `name`) VALUES ('2', 'for user', 'Users');

#step 5 - Develop Repository for each entity

#step 6 - insert data into Car table and User Role Table
INSERT INTO `springboot_carportal_db`.`car_user` (`id`, `name`, `password`, `user_name`) VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `springboot_carportal_db`.`user_role` (`user_id`, `role_id`) VALUES ('1', '1');


#step 7 - Developed Spring Security. 

#step 8 - Developed the required controller, service classes and JSP pages based on your scenario.

#step 9 - Run as application & check On Browser
http://localhost:8080/
