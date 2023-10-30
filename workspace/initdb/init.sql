\c digdag digdag

CREATE USER test WITH PASSWORD 'hoge';

GRANT ALL PRIVILEGES ON DATABASE digdag TO test;

CREATE TABLE sample_data (
    id integer primary key,
    name varchar(20) not null,
    country varchar(20) not null,
    created_at timestamp not null default current_timestamp
);

INSERT INTO sample_data VALUES (1, 'testuser1', 'Japan');
INSERT INTO sample_data VALUES (2, 'testuser2', 'America');
INSERT INTO sample_data VALUES (3, 'testuser3', 'Canada');
