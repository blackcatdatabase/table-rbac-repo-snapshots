-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  rbac_repo_snapshots

CREATE TABLE IF NOT EXISTS rbac_repo_snapshots (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  repo_id BIGINT UNSIGNED NOT NULL,
  commit_id VARCHAR(128) NOT NULL,
  taken_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  metadata JSON NULL,
  UNIQUE KEY uq_rbac_repo_snap (repo_id, commit_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
