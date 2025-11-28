-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  rbac_repo_snapshots

-- Contract view for [rbac_repo_snapshots]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_repo_snapshots AS
SELECT
  id,
  repo_id,
  commit_id,
  taken_at,
  metadata
FROM rbac_repo_snapshots;
