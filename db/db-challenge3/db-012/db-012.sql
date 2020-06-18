BEGIN;
UPDATE chatrooms
SET file_is_valid = 0, modified_at = NOW(), changer_id = 1
WHERE is_deleted = 0
AND chatroom_id <> ALL (SELECT chatroom_id 
FROM participation
WHERE user_id = 1);
COMMIT;
