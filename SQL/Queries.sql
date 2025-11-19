SELECT count(*) FROM anchal_courses;


-- 1. Taking distinct course status from the anchal_courses table and ordering by the first column

SELECT DISTINCT course_status FROM anchal_courses
ORDER BY 1;

-- 2. Filter orders which is in draft order status

SELECT * FROM anchal_courses
WHERE course_status = 'draft';

-- 3. Filter orders which is in inactive order status
 
SELECT * FROM anchal_courses
WHERE course_status = 'inactive';

-- 4. Filter orders which is in draft or inactive order status

SELECT * FROM anchal_courses
WHERE course_status = 'draft' OR course_status = 'inactive';

-- 5. Filter the orders which is in inactive or draft by using IN operator

SELECT * FROM anchal_courses
WHERE course_status IN ('inactive', 'draft');

-- * Get all the details of the courses which are related to `Python` or `Scala`.
SELECT *
FROM anchal_courses
WHERE course_name LIKE '%Python%' OR course_name LIKE '%Scala%';

-- * Get count of courses by `course_status`. The output should contain `course_status` and `course_count`.
SELECT course_status,
    count(*) as course_count
FROM anchal_courses
GROUP BY course_status;

-- * Get count of `published` courses by `course_author`. The output should contain `course_author` and `course_count`.
SELECT course_author,
    count(*) AS course_count
FROM anchal_courses
WHERE course_status = 'published'
GROUP BY course_author;

-- * Get all the details of `Python` or `Scala` related courses in `draft` status.
SELECT *
FROM anchal_courses
WHERE (course_name LIKE '%Python%' OR course_name LIKE '%Scala%')
    AND course_status = 'draft';

-- * Get the author and count where the author have more than **one published** course. The output should contain `course_author` and `course_count`.
SELECT course_author,
    count(*) AS course_count
FROM anchal_courses
WHERE course_status = 'published'
GROUP BY course_author
    HAVING count(*) > 1;

