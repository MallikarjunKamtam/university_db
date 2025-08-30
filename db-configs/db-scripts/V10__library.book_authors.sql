CREATE TABLE library.book_authors (
    book_id INT NOT NULL REFERENCES library.books(book_id),
    author_id INT NOT NULL REFERENCES library.authors(author_id),
    PRIMARY KEY (book_id, author_id)
);
