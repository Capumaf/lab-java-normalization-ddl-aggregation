CREATE TABLE authors (
                         id INT PRIMARY KEY,
                         name VARCHAR(100) NOT NULL
);

CREATE TABLE blog_posts (
                            id INT PRIMARY KEY,
                            author_id INT,
                            title VARCHAR(255),
                            word_count INT,
                            views INT,
                            FOREIGN KEY (author_id) REFERENCES authors(id)
);
