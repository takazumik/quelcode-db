BEGIN;

UPDATE chatrooms
SET file_is_valid = 0
WHERE is_deleted = 0
AND author_id = 1

COMMIT;