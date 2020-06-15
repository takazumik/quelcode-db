BEGIN;
UPDATE users
SET is_deleted = 1
WHERE IS NULL business_phone AND IS NULL mobile_phone
COMMIT;