drop databases if exists webapp;

create database webapp;

use webapp;

grant select, insert, update, delete on webapp.* to 'root'@'locahhost' identified by 'qweasd';

create table users(
	`id` varchar(50) not null,
	`email` varchar(50) not null,
	`password` varchar(50) not null,
	`admin` boolean not null,
	`name` varchar(50) not null,
	`image` varchar(500) not null,
	`created_at` real not null,
	unique key `index_email`(`email`),
	key `index_created_at`(`created_at`),
	primary key (`id`)
)engine=innodb default charset=utf8;

create table blogs(
	`id` varchar(50) not null,
	`user_id` varchar(50) not null,
	`user_name` varchar(50) not null,
	`user_image` varchar(500) not null,
	`name` varchar(50) not null,
	`summary` varchar(50) not null,
	`content` mediumtext not null,
	`created_at` real not null,
	key `index_created_at`(`created_at`),
	primary key (`id`)
)engine=innodb default charset=utf8;

create table comments(
	`id` varchar(50) not null,
	`blog_id` varchar(50) not null,
	`user_id` varchar(50) not null,
	`user_name` varchar(50) not null,
	`user_image` varchar(500) not null,
	`content` mediumtext not null,
	`created_at` real not null,
	key `index_created_at`(`created_at`),
	primary key (`id`)
)engine=innodb default charset=utf8;