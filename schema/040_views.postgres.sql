-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  rbac_repo_snapshots

-- Contract view for [rbac_repo_snapshots]
CREATE OR REPLACE VIEW vw_rbac_repo_snapshots AS
SELECT
  id,
  repo_id,
  commit_id,
  taken_at,
  metadata
FROM rbac_repo_snapshots;
