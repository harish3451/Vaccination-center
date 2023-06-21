insert into user_details(username, password) values('admin','password');

insert into city values(501,'BZA'),(502,'HYD');

insert into vaccination_center(id,center_name,city_id) values(1004,'KHB', 501);

insert into doses values(0,'Not Vaccinated'),(1,'Partially Vaccinated'),(2,'Fully Vaccinated');
insert into citizens(center_id,id,name,dose_number_of_dose) values(1004,201,'harish',2);