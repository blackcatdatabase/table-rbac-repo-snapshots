<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rbac_repo_snapshots

Stored RBAC snapshots pulled from repositories.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| repo_id | BIGINT | NO | — | Source repository (FK rbac_repositories.id). |  |
| commit_id | VARCHAR(128) | NO | — | Commit/version identifier stored. |  |
| taken_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the snapshot was taken. |  |
| metadata | JSONB | YES | — | JSON metadata associated with the snapshot. |  |