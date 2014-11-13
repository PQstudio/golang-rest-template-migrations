
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
INSERT client_data SET uid=unhex("323f126985e6450c8e52565a83dccc9b"), clientID="clientID", clientSecret="clientSecret", redirectURI="localhost";

INSERT users SET uid=unhex("323f126985e6450c8e52565a83dccc9b"), email="gregory90@gmail.com", password="$2a$10$RtCDnsY5q6cGbIef.wyEJOIXX7xOpbbAVjhweeCL7TMzaZMsbPo5q", salt="58168115-93f3-48ad-a4ee-0e9b7451510d", createdAt=NOW();


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE goose_db_version;

DROP TABLE access_data;
DROP TABLE client_data;
DROP TABLE users;
