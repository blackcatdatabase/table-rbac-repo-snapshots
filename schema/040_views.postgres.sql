-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
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
