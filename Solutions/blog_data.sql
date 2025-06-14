-- Tabla authors
INSERT INTO authors (id, name) VALUES
                                   (1, 'Maria Charlotte'),
                                   (2, 'Juan Perez'),
                                   (3, 'Gemma Alcocer');

-- Tabla blog_posts
INSERT INTO blog_posts (id, author_id, title, word_count, views) VALUES
                                                                     (1, 1, 'Best Paint Colors', 814, 14),
                                                                     (2, 2, 'Small Space Decorating Tips', 1146, 221),
                                                                     (3, 1, 'Hot Accessories', 986, 105),
                                                                     (4, 1, 'Mixing Textures', 765, 22),
                                                                     (5, 2, 'Kitchen Refresh', 1242, 307),
                                                                     (6, 1, 'Homemade Art Hacks', 1002, 193),
                                                                     (7, 3, 'Refinishing Wood Floors', 1571, 7542);
