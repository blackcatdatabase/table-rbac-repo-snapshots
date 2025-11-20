-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  rbac_repo_snapshots
ALTER TABLE rbac_repo_snapshots ADD CONSTRAINT fk_rbac_snap_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE CASCADE;
