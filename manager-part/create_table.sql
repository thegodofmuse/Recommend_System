use manager_part;
CREATE TABLE mp_products(
	p_id int primary KEY,
    p_name varchar(50),
    p_title varchar(50),
    p_desc varchar(100),
    p_price DOUBLE,
    p_image varchar(100),
    p_publisher varchar(50),
    p_publish_time varchar(50),
    p_flag varchar(2),
    p_category_id int,
    constraint mp_products_fk foreign key (p_category_id) references mp_category (c_id)
    
);
