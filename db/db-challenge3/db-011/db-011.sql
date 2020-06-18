BEGIN;

UPDATE tasks
SET is_finished = 1 ,modified_at = NOW()
WHERE created_at >= '2020/04/26 09:00'
AND created_at <= '2020/04/26 11:30'
AND is_deleted = 0
AND author_id = 1;

COMMIT;