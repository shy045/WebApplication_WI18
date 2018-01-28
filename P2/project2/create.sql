-- select database
USE CS144;

-- drop existing tables
DROP TABLE IF EXISTS Posts;

-- create table Posts
CREATE TABLE Posts(
  username	VARCHAR(40),
  postid	INTEGER,
  title		VARCHAR(100),
  body		TEXT,
  modified	TIMESTAMP DEFAULT '2000-01-01 00:00:00',
  created	TIMESTAMP DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY(username, postid)
);

-- insert examples
INSERT INTO Posts
  (username, postid, title, body, created, modified)
VALUES
  ('shengfei', 1, '_Post 1_', 'This is the first post:
- Item 1
- Item 2
- Item 3
', '2018-01-27 09:35:01', '2018-01-27 09:35:01'),
  ('shengfei', 2, '***Post 2***', 'This is the second post:

```
int a;
int b;
int c = a + b;
```', '2018-01-27 09:38:41', '2018-01-27 09:39:32'),
  ('shengfei', 3, '`Post 3`', 'This is the third post:

URL <http://oak.cs.ucla.edu/classes/cs144/schedule.html>
', '2018-01-28 10:00:00', '2018-01-28 10:00:00'),
  ('shengfei', 4, 'Post 4', 'This is the fourth post:
1. Item 1
2. Item 2
3. Item 3
', '2018-01-28 14:30:00', '2018-01-28 14:30:00');
