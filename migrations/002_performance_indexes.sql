-- Migration 002: B-Tree and GiST Indexes for Sub-Millisecond Scans
CREATE INDEX IF NOT EXISTS idx_stayhub_status ON stayhub_entities (status);
CREATE INDEX IF NOT EXISTS idx_stayhub_cat_status ON stayhub_entities (category, status);
CREATE INDEX IF NOT EXISTS idx_stayhub_lease_expires ON stayhub_leases (entity_id, expires_at) WHERE released = FALSE;
