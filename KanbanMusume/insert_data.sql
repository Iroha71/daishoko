\encoding UTF8;
insert into users(name, nickname, password) values('iroha', 'いろは', '168');
insert into categories(name, user_id) values('カテゴリ１', 1);
insert into tasks(name, user_id, category_id) values('タスク1', 1, 1);
insert into girls(name, code, detail, birthday) values('パートナー', 'ptn', 'テスト用パートナー', '2021-07-01');
insert into user_girls(user_id, girl_id) values(1, 1);