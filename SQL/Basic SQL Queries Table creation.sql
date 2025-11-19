DROP TABLE IF EXISTS anchal_courses;

CREATE TABLE anchal_courses (
    course_id  VARCHAR(60) PRIMARY KEY,
    course_name VARCHAR(60),
    course_author VARCHAR(40),
    course_status VARCHAR(9),
    course_published_dt DATE
);


INSERT INTO anchal_courses
    (course_id,course_name, course_author, course_status, course_published_dt)
VALUES
    ('1','Programming using Python', 'Bob Dillon', 'published', '2020-09-30'),
    ('2','Data Engineering using Python', 'Bob Dillon', 'published', '2020-07-15'),
    ('3','Data Engineering using Scala', 'Elvis Presley', 'draft', null),
    ('4','Programming using Scala' , 'Elvis Presley' , 'published' , '2020-05-12'),
    ('5','Programming using Java' , 'Mike Jack' , 'inactive' , '2020-08-10'),
    ('6','Web Applications - Python Flask' , 'Bob Dillon' , 'inactive' , '2020-07-20'),
    ('7','Web Applications - Java Spring' , 'Bob Dillon' , 'draft' , null),
    ('8','Pipeline Orchestration - Python' , 'Bob Dillon' , 'draft' , null),
    ('9','Streaming Pipelines - Python' , 'Bob Dillon' , 'published' , '2020-10-05'),
    ('10','Web Applications - Scala Play' , 'Elvis Presley' , 'inactive' , '2020-09-30'),
    ('11','Web Applications - Python Django' , 'Bob Dillon' , 'published' , '2020-06-23'),
    ('12','Server Automation - Ansible' , 'Uncle Sam' , 'published' , '2020-07-05');


SELECT * FROM anchal_courses ORDER BY course_id;
