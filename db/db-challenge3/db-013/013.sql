BEGIN;
UPDATE users
SET is_deleted = 1, modified_at = NOW()
WHERE business_phone IS NULL  AND mobile_phone IS NULL;
COMMIT;