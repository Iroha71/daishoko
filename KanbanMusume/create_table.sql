drop table tasks;
drop table categories;
drop table user_girls;
drop table users;
drop table girls;

create table girls(
  id SERIAL,
  name VARCHAR(30) NOT NULL,
  code VARCHAR(10) NOT NULL,
  detail VARCHAR(100),
  birthday DATE NOT NULL,
  PRIMARY KEY(id)
);

create table users(
  id SERIAL,
  name VARCHAR(30) NOT NULL,
  nickname VARCHAR(10) NOT NULL,
  password VARCHAR(30) NOT NULL,
  coin INT DEFAULT 0,
  line_id VARCHAR(50),
  PRIMARY KEY(id)
);

create table categories(
  id SERIAL,
  name VARCHAR(20) NOT NULL,
  user_id INT NOT NULL,
  finished_rate INT DEFAULT 0,
  PRIMARY KEY(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

create table tasks(
  id SERIAL,
  name VARCHAR(50) NOT NULL,
  user_id INT NOT NULL,
  category_id INT NOT NULL,
  memo VARCHAR(100),
  notify_at TIMESTAMP,
  repeat_rate INT DEFAULT 0,
  finished_at TIMESTAMP,
  girl_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(category_id) REFERENCES categories(id),
  FOREIGN KEY(girl_id) REFERENCES girls(id)
);

create table user_girls(
  id SERIAL,
  user_id INT NOT NULL,
  girl_id INT NOT NULL,
  is_partner INT NOT NULL DEFAULT 0,
  level INT DEFAULT 1,
  like_rate INT DEFAULT 0,
  exp INT DEFAULT 0,
  require_exp INT DEFAULT 10,
  PRIMARY KEY(id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(girl_id) REFERENCES girls(id)
);