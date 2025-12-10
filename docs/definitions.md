# rbac_repo_snapshots

Stored RBAC snapshots pulled from repositories.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| commit_id | VARCHAR(128) | NO |  | Commit/version identifier stored. |
| id | BIGINT | NO |  | Surrogate primary key. |
| metadata | mysql: JSON / postgres: JSONB | YES |  | JSON metadata associated with the snapshot. |
| repo_id | BIGINT | NO |  | Source repository (FK rbac_repositories.id). |
| taken_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | When the snapshot was taken. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rbac_repo_snap | repo_id, commit_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| uq_rbac_repo_snap | repo_id,commit_id | UNIQUE KEY uq_rbac_repo_snap (repo_id, commit_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_snap_repo | repo_id | rbac_repositories(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_rbac_repo_snap | repo_id, commit_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| uq_rbac_repo_snap | repo_id,commit_id | CONSTRAINT uq_rbac_repo_snap UNIQUE (repo_id, commit_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_snap_repo | repo_id | rbac_repositories(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rbac_repo_snapshots | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_rbac_repo_snapshots | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
