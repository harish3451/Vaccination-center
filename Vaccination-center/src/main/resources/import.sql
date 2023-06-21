insert into user_details(username, password) values('admin','password');

insert into city values(501,'BZA'),(502,'HYD');

insert into vaccination_center(id,center_name,city_id) values(1004,'KHB', 501);

insert into citizens(center_id,id,name) values(1004,201,'harish');