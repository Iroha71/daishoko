\encoding UTF8;
insert into users(name, nickname, password) values('iroha', 'いろは', '168');
insert into categories(name, user_id) values('カテゴリ１', 1);
insert into tasks(name, user_id, category_id) values('タスク1', 1, 1);