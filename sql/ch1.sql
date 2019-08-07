-- Intermediate query
SELECT
    library,
    avg(max_reservation_time)
FROM
    books
GROUP BY
    library;

-- Intermediate query
SELECT
    book_id,
    book_name,
    max_reservation_time,
    avg
FROM
    books
    JOIN (
        SELECT
            library,
            avg(max_reservation_time)
        FROM
            books
        GROUP BY
            libra ry) doesntmatter ON books.library = doesntmatter.library;

-- Final Ch.1
SELECT
    book_id,
    book_name,
    max_reservation_time
FROM
    books
    JOIN (
        SELECT
            library,
            avg(max_reservation_time)
        FROM
            books
        GROUP BY
            library) doesntmatter ON books.library = doesntmatter.library
WHERE
    books.max_reservation_time > avg


    
    SELECT
        posts.mentor_name, count(posts.mentor_name)
    FROM
        posts
        JOIN likes ON posts.id = likes.post_id
    GROUP BY
        posts.mentor_name;

-- Final Ch.2 P.1
SELECT
    posts.mentor_name,
    count(posts.mentor_name)
FROM
    posts
    JOIN likes ON posts.id = likes.post_id
GROUP BY
    posts.mentor_name;

