
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied

-- create users table
CREATE TABLE IF NOT EXISTS users (
	 uid      BINARY(16) NOT NULL,
     email    VARCHAR(255),
     password VARCHAR(1000),
     salt     VARCHAR(255),
     createdAt TIMESTAMP,

     PRIMARY KEY (uid),
     UNIQUE (email)
) ENGINE=InnoDB;

-- client_data table
CREATE TABLE IF NOT EXISTS client_data (
	 uid          BINARY(16) NOT NULL,
     clientID     VARCHAR(500),
     clientSecret VARCHAR(1000),
     redirectURI  VARCHAR(1000),

     PRIMARY KEY (uid),
     UNIQUE (clientID)
) ENGINE=InnoDB;

-- access_data table
CREATE TABLE IF NOT EXISTS access_data (
	 uid             BINARY(16) NOT NULL,
     clientID        BINARY(16),
     authorizeDataID BINARY(16),
     accessDataID    BINARY(16),
     userID          BINARY(16),
     accessToken     VARCHAR(500),
     refreshToken    VARCHAR(500),
     expiresIn       INT,
     scope           VARCHAR(1000),
     redirectURI     VARCHAR(1000),
     createdAt       TIMESTAMP,

     PRIMARY KEY (uid)
) ENGINE=InnoDB;


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE access_data;
DROP TABLE client_data;
DROP TABLE users;

