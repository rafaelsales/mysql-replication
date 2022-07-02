CREATE USER 'replication'@'%' IDENTIFIED WITH mysql_native_password BY 'Slaverepl123';
GRANT REPLICATION SLAVE ON *.* TO 'replication'@'%';
SHOW GRANTS FOR 'replication'@'%';

SHOW MASTER STATUS\G

-- RESET MASTER;
DROP DATABASE test;
CREATE DATABASE test;
USE test;

CREATE TABLE buyers (
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE sales (
  id INT NOT NULL AUTO_INCREMENT,
  buyer_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (buyer_id) REFERENCES buyers(id)
);

INSERT INTO buyers VALUES ();
INSERT INTO sales (buyer_id) VALUES (1);
