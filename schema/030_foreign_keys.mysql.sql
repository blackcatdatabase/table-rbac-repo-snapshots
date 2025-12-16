-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  rbac_repo_snapshots

ALTER TABLE rbac_repo_snapshots ADD CONSTRAINT fk_rbac_snap_repo FOREIGN KEY (repo_id) REFERENCES rbac_repositories(id) ON DELETE CASCADE;
