BEGIN;
DELETE FROM participation
WHERE user_id = (
    SELECT user_id
    FROM users
    WHERE is_deleted = 1 )
COMMIT;