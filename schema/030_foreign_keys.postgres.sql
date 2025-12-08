-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  rbac_repo_snapshots

ALTER TABLE rbac_repo_snapshots ADD CONSTRAINT fk_rbac_snap_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE CASCADE;
