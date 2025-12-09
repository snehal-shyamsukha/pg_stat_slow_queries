Prereqs: dependencies pg_cron
Install: make install, then CREATE EXTENSION pg_stat_slow_queries;
Use: SELECT monitoring.log_slow_queries(10); replace threshold_seconds with the number of seconds after which you want to log slow queries
Optional schedule: SELECT monitoring.schedule_logger('log-slow-queries', '3 seconds', 10); 
Security: requires access to pg_stat_activity and cron helper needs superuser.
