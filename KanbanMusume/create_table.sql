drop table tasks;
drop table categories;
drop table users;

create table users(
  id SERIAL,
  name VARCHAR(30) NOT NULL,
  nickname VARCHAR(10) NOT NULL,
  password VARCHAR(30) NOT NULL,
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
  PRIMARY KEY(id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(category_id) REFERENCES categories(id)
);