-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
