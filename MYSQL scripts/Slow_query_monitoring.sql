-- Turn on slow query logging
SET GLOBAL slow_query_log = 'ON';

-- Define the file location (adjust path as needed)
SET GLOBAL slow_query_log_file = 'MY_new_query-slow.log';


-- Set threshold (in seconds) for what counts as "slow"
SET GLOBAL long_query_time = 2;

-- Optional: log queries not using indexes
SET GLOBAL log_queries_not_using_indexes = 'ON';

SHOW VARIABLES LIKE 'slow_query_log_file';

SHOW VARIABLES LIKE 'slow_query_log';
SHOW VARIABLES LIKE 'slow_query_log_file';
SHOW VARIABLES LIKE 'long_query_time';
