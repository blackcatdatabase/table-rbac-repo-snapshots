-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  rbac_repo_snapshots
ALTER TABLE rbac_repo_snapshots ADD CONSTRAINT fk_rbac_snap_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE CASCADE;
