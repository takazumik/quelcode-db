BEGIN;

UPDATE tasks
SET is_finishd = 1
WHERE created_at >= 2020/04/26 09:00
AND created_at <= 2020/04/26 11:30
AND is_deleted = 0
AND author_id = 1

COMMIT;