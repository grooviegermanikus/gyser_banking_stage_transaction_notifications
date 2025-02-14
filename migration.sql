CREATE SCHEMA banking_stage_results;

CREATE TABLE banking_stage_results.transaction_infos (
  signature CHAR(88) NOT NULL,
  message text,
  errors text,
  is_executed BOOL,
  is_confirmed BOOL,
  first_notification_slot BIGINT NOT NULL,
  cu_requested BIGINT,
  prioritization_fees BIGINT,
  utc_timestamp TIMESTAMP WITH TIME ZONE NOT NULL,
  accounts_used text[]
);

CREATE TABLE banking_stage_results.blocks (
  block_hash CHAR(44) NOT NULL,
  slot BIGINT,
  leader_identity CHAR(44),
  successful_transactions BIGINT,
  banking_stage_errors BIGINT,
  processed_transactions BIGINT,
  total_cu_used BIGINT,
  total_cu_requested BIGINT,
  heavily_writelocked_accounts text[]
);