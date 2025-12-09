EXTENSION = pg_stat_slow_queries
DATA = sql/pg_stat_slow_queries--1.0.sql
PGFILEDESC = "pg_stat_slow_queries - log slow queries with mem usage"
MODULES =  # none, pure SQL
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)