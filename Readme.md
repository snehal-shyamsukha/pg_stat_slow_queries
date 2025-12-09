## Details 
- Prereqs: install the `pg_cron` extension.
- Install: run `make install`.
- Install: then `CREATE EXTENSION pg_stat_slow_queries;`.
- Usage: `SELECT monitoring.log_slow_queries(<threshold_seconds>);`.
- Usage: replace `<threshold_seconds>` with the minimum duration to log.
- Optional schedule: `SELECT monitoring.schedule_logger('log-slow-queries', '3 seconds', <threshold_seconds>);`.
- Security: requires access to `pg_stat_activity`.
- Security: the cron helper also needs superuser privileges.