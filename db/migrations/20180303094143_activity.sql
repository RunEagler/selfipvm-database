
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE activity(
  activity_id serial primary key,
  minutes int, --活動時間(分)
  content text, --活動内容
  date Date, --活動日
  type int, --活動タイプ
  created_at Date, --作成日時
  updated_at Date --更新日時
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE activity;