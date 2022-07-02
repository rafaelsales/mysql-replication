CHANGE MASTER TO
MASTER_HOST='mysql-master',
MASTER_USER='replication',
MASTER_PASSWORD='Slaverepl123',
-- Get the values for the lines below by executing SHOW MASTER STATUS\G on the master instance
MASTER_LOG_FILE='cdbf3b21006a-bin.000006',
MASTER_LOG_POS=1286;

START SLAVE;

SHOW SLAVE STATUS\G
