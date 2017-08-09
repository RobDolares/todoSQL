
-- Write the CREATE TABLE statement to make this table.

CREATE TABLE todos(
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255) NOT NULL,
  details text NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL ,
  completed_at TIMESTAMP NULL
);

-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES (1, 'Wash Car', 'Wash the Prius', 3, '2017-8-9 13:20:00',NULL );
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES (2, 'Wash Dog', 'Wash Toki, not Samson', 1, '2017-8-9 13:20:00',NULL );
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES (3, 'Do Laundry', 'Do Lilys laundry', 1, '2017-8-9 13:20:00','2017-8-10 10:30:00');
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES (4, 'Vacuum', 'Vacuum 3rd floor and bedrooms', 2, '2017-8-9 13:20:00',NULL );
INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES (5, 'Pick Vegetables', 'Pick vegetable from garden', 3, '2017-8-9 13:20:00',NULL );


--shows table data (for testing)
SELECT * FROM todos;

--Write a SELECT statement to find all incomplete todos.

SELECT * FROM todos
WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.

SELECT * FROM todos
WHERE priority >1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to update.

UPDATE todos
SET completed_at = current_timestamp
WHERE todos.id = 4;

-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos
WHERE completed_at IS NOT NULL;
