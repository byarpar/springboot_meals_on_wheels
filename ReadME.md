<img width="802" alt="Screenshot 2024-05-03 at 6 15 12 PM" src="https://github.com/byarpar/react_portfolio_byarpar/assets/109275887/14a03c48-97d5-4815-bf47-338634a4d970">
<img width="819" alt="Screenshot 2024-05-03 at 6 17 20 PM" src="https://github.com/byarpar/react_portfolio_byarpar/assets/109275887/18c46d9d-055e-42ae-86e9-7568955b2f68">
[
<img width="810" alt="Screenshot 2024-05-03 at 6 18 49 PM" src="https://github.com/byarpar/react_portfolio_byarpar/assets/109275887/fb564fce-b139-4a16-80ba-047c2f31083b">
](url)
<img width="819" alt="Screenshot 2024-05-03 at 6 20 14 PM" src="https://github.com/byarpar/react_portfolio_byarpar/assets/109275887/22effdd7-038a-485f-93d3-7d0b6f846c9a">
<img width="733" alt="Screenshot 2024-05-03 at 6 21 02 PM" src="https://github.com/byarpar/react_portfolio_byarpar/assets/109275887/bad241e8-7f90-40c3-9d64-5ae86b5f523e">



# Running SpringBoot Car Portal Application

# step 1
CREATE SCHEMA `springboot_carportal_db` DEFAULT CHARACTER SET utf8 ;

# step 2
Developed Entity & update application.prorperties

# step 3
Run Springboot application & will create the tables in your database.

# step 4 - insert data into Role Table
INSERT INTO `springboot_carportal_db`.`role` (`id`, `description`, `name`) VALUES ('1', 'for admin', 'Administrator');
INSERT INTO `springboot_carportal_db`.`role` (`id`, `description`, `name`) VALUES ('2', 'for user', 'Users');

# step 5 - Develop Repository for each entity

# step 6 - insert data into Car table and User Role Table
INSERT INTO `springboot_carportal_db`.`car_user` (`id`, `name`, `password`, `user_name`) VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `springboot_carportal_db`.`user_role` (`user_id`, `role_id`) VALUES ('1', '1');


# step 7 - Developed Spring Security. 

# step 8 - Developed the required controller, service classes and JSP pages based on your scenario.

# step 9 - Run as application & check On Browser
http://localhost:8080/
