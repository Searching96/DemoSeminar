CREATE DATABASE QLTVLite;
CREATE TABLE NGUOIDUNG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
    MaNguoiDung AS ('ND' + RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5)) PERSISTED,
	TenNguoiDung NVARCHAR(50) NOT NULL,
	MatKhau VARCHAR(20) NOT NULL,
	PhanQuyen INT NOT NULL,
)

INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, PhanQuyen) VALUES ('admin', 'admin123', 1);
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, PhanQuyen) VALUES ('thuthu', 'thuthu123', 2);
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, PhanQuyen) VALUES ('docgia', 'docgia123', 3);
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, PhanQuyen) VALUES ('troioilatroi', 'admin123', 1);
INSERT INTO NGUOIDUNG (TenNguoiDung, MatKhau, PhanQuyen) VALUES ('1', '1', 1);

SELECT * FROM NGUOIDUNG;

CREATE TABLE SACH
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    MaSach AS ('S' + RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5)) PERSISTED,
    TenSach NVARCHAR(50) NOT NULL,
    TheLoai NVARCHAR(50) NOT NULL,
    NamXuatBan INT NOT NULL,
	BiaSach VARCHAR(255) NOT NULL
);

ALTER TABLE SACH
ADD CONSTRAINT DF_BiaSach DEFAULT 'https://m.media-amazon.com/images/I/61HAE8zahLL._AC_UF1000,1000_QL80_.jpg' FOR BiaSach;

CREATE TABLE TACGIA
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    MaTacGia AS ('TG' + RIGHT('00000' + CAST(ID AS NVARCHAR(5)), 5)) PERSISTED,
    TenTacGia NVARCHAR(100) NOT NULL
);

CREATE TABLE SACH_TACGIA
(
    IDSach INT NOT NULL,
    IDTacGia INT NOT NULL,
    PRIMARY KEY (IDSach, IDTacGia),
    FOREIGN KEY (IDSach) REFERENCES SACH(ID) ON DELETE CASCADE,
    FOREIGN KEY (IDTacGia) REFERENCES TACGIA(ID) ON DELETE CASCADE
);

SELECT * FROM SACH_TACGIA;

SELECT * FROM SACH;
SELECT * FROM TACGIA;
SELECT * FROM SACH_TACGIA;

INSERT INTO TACGIA (TenTacGia) VALUES ('J.K. Rowling');
INSERT INTO TACGIA (TenTacGia) VALUES ('George R.R. Martin');
INSERT INTO TACGIA (TenTacGia) VALUES ('J.R.R. Tolkien');
INSERT INTO TACGIA (TenTacGia) VALUES ('Stephen King');
INSERT INTO TACGIA (TenTacGia) VALUES ('Agatha Christie');
INSERT INTO TACGIA (TenTacGia) VALUES ('Mark Twain');
INSERT INTO TACGIA (TenTacGia) VALUES ('Charles Dickens');
INSERT INTO TACGIA (TenTacGia) VALUES ('F. Scott Fitzgerald');
INSERT INTO TACGIA (TenTacGia) VALUES ('Ernest Hemingway');
INSERT INTO TACGIA (TenTacGia) VALUES ('Jane Austen');
INSERT INTO TACGIA (TenTacGia) VALUES ('Harper Lee');
INSERT INTO TACGIA (TenTacGia) VALUES ('Leo Tolstoy');
INSERT INTO TACGIA (TenTacGia) VALUES ('Virginia Woolf');
INSERT INTO TACGIA (TenTacGia) VALUES ('H.G. Wells');
INSERT INTO TACGIA (TenTacGia) VALUES ('Dante Alighieri');
INSERT INTO TACGIA (TenTacGia) VALUES ('James Joyce');
INSERT INTO TACGIA (TenTacGia) VALUES ('John Steinbeck');
INSERT INTO TACGIA (TenTacGia) VALUES ('Gabriel García Márquez');
INSERT INTO TACGIA (TenTacGia) VALUES ('Charles Bukowski');
INSERT INTO TACGIA (TenTacGia) VALUES ('Margaret Atwood');
INSERT INTO TACGIA (TenTacGia) VALUES ('Dan Brown');
INSERT INTO TACGIA (TenTacGia) VALUES ('Paulo Coelho');
INSERT INTO TACGIA (TenTacGia) VALUES ('Jodi Picoult');
INSERT INTO TACGIA (TenTacGia) VALUES ('Stephen Hawking');
INSERT INTO TACGIA (TenTacGia) VALUES ('C.S. Lewis');
INSERT INTO TACGIA (TenTacGia) VALUES ('David Foster Wallace');
INSERT INTO TACGIA (TenTacGia) VALUES ('Zadie Smith');
INSERT INTO TACGIA (TenTacGia) VALUES ('Toni Morrison');
INSERT INTO TACGIA (TenTacGia) VALUES ('Cormac McCarthy');
INSERT INTO TACGIA (TenTacGia) VALUES ('Kurt Vonnegut');
INSERT INTO TACGIA (TenTacGia) VALUES ('Philip K. Dick');
INSERT INTO TACGIA (TenTacGia) VALUES ('Ray Bradbury');
INSERT INTO TACGIA (TenTacGia) VALUES ('Haruki Murakami');
INSERT INTO TACGIA (TenTacGia) VALUES ('Chimamanda Ngozi Adichie');
INSERT INTO TACGIA (TenTacGia) VALUES ('N.K. Jemisin');
INSERT INTO TACGIA (TenTacGia) VALUES ('Salman Rushdie');
INSERT INTO TACGIA (TenTacGia) VALUES ('Neil Gaiman');
INSERT INTO TACGIA (TenTacGia) VALUES ('Bram Stoker');
INSERT INTO TACGIA (TenTacGia) VALUES ('Edgar Allan Poe');
INSERT INTO TACGIA (TenTacGia) VALUES ('Oscar Wilde');
INSERT INTO TACGIA (TenTacGia) VALUES ('Herman Melville');
INSERT INTO TACGIA (TenTacGia) VALUES ('Gustave Flaubert');
INSERT INTO TACGIA (TenTacGia) VALUES ('Markus Zusak');
INSERT INTO TACGIA (TenTacGia) VALUES ('David Mitchell');
INSERT INTO TACGIA (TenTacGia) VALUES ('Maya Angelou');
INSERT INTO TACGIA (TenTacGia) VALUES ('Isabel Allende');
INSERT INTO TACGIA (TenTacGia) VALUES ('Alice Walker');
INSERT INTO TACGIA (TenTacGia) VALUES ('Jonathan Safran Foer');
INSERT INTO TACGIA (TenTacGia) VALUES ('Alice Munro');
INSERT INTO TACGIA (TenTacGia) VALUES ('Eleanor Oliphant');
INSERT INTO TACGIA (TenTacGia) VALUES ('Rupi Kaur');

INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 1997);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('A Game of Thrones', 'Fantasy', 1996);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Hobbit', 'Fantasy', 1937);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Shining', 'Horror', 1977);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Murder on the Orient Express', 'Mystery', 1934);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Adventures of Huckleberry Finn', 'Classic', 1884);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Great Expectations', 'Classic', 1860);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Great Gatsby', 'Classic', 1925);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Old Man and the Sea', 'Classic', 1952);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Pride and Prejudice', 'Classic', 1813);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('To Kill a Mockingbird', 'Fiction', 1960);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('War and Peace', 'Historical Fiction', 1869);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Mrs. Dalloway', 'Fiction', 1925);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Time Machine', 'Science Fiction', 1895);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Inferno', 'Thriller', 2013);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Alchemist', 'Adventure', 1988);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Catcher in the Rye', 'Fiction', 1951);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Book Thief', 'Historical Fiction', 2005);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Handmaid''s Tale', 'Dystopian', 1985);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Road', 'Dystopian', 2006);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('A Brief History of Time', 'Science', 1988);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Diary of a Young Girl', 'Biography', 1947);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Kite Runner', 'Fiction', 2003);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Fault in Our Stars', 'Young Adult', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Fahrenheit 451', 'Dystopian', 1953);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Brave New World', 'Dystopian', 1932);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Picture of Dorian Gray', 'Classic', 1890);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Hitchhiker''s Guide to the Galaxy', 'Science Fiction', 1979);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Gone Girl', 'Thriller', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Chronicles of Narnia', 'Fantasy', 1950);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Little Prince', 'Children''s Literature', 1943);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Secret Garden', 'Children''s Literature', 1911);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Life of Pi', 'Adventure', 2001);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Glass Castle', 'Memoir', 2005);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Immortal Life of Henrietta Lacks', 'Biography', 2010);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Underground Railroad', 'Historical Fiction', 2016);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Night Circus', 'Fantasy', 2011);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Seven Husbands of Evelyn Hugo', 'Historical Fiction', 2017);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Educated', 'Memoir', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Where the Crawdads Sing', 'Mystery', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Silent Patient', 'Thriller', 2019);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Normal People', 'Romance', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Daisy Jones & The Six', 'Historical Fiction', 2019);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Vanishing Half', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Anxious People', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Project Hail Mary', 'Science Fiction', 2021);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Guest List', 'Mystery', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Circe', 'Fantasy', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Midnight Library', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Alchemist', 'Adventure', 1988);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The 5 Love Languages', 'Self-help', 1992);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Atomic Habits', 'Self-help', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Sapiens: A Brief History of Humankind', 'Non-fiction', 2011);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Becoming', 'Biography', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Thinking, Fast and Slow', 'Psychology', 2011);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Educated', 'Memoir', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Subtle Art of Not Giving a F*ck', 'Self-help', 2016);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('How to Win Friends and Influence People', 'Self-help', 1936);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Outliers: The Story of Success', 'Non-fiction', 2008);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Power of Habit', 'Self-help', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Where the Crawdads Sing', 'Fiction', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Little Fires Everywhere', 'Fiction', 2017);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Night Circus', 'Fantasy', 2011);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The House in the Cerulean Sea', 'Fantasy', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Tattooist of Auschwitz', 'Historical Fiction', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Invisible Life of Addie LaRue', 'Fantasy', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Henna Artist', 'Historical Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Crying in H Mart', 'Memoir', 2021);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Malibu Rising', 'Fiction', 2021);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Girl on the Train', 'Thriller', 2015);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Eleanor Oliphant Is Completely Fine', 'Fiction', 2017);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Giver of Stars', 'Historical Fiction', 2019);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('It Ends with Us', 'Romance', 2016);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Light We Lost', 'Romance', 2017);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Seven Husbands of Evelyn Hugo', 'Historical Fiction', 2017);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Big Little Lies', 'Fiction', 2014);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Before We Were Strangers', 'Romance', 2015);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('A Man Called Ove', 'Fiction', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Fault in Our Stars', 'Young Adult', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Book Thief', 'Historical Fiction', 2005);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Catcher in the Rye', 'Fiction', 1951);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Pride and Prejudice', 'Classic', 1813);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('To Kill a Mockingbird', 'Classic', 1960);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('1984', 'Dystopian', 1949);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Great Gatsby', 'Classic', 1925);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Moby Dick', 'Classic', 1851);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Brave New World', 'Dystopian', 1932);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Fahrenheit 451', 'Dystopian', 1953);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Wuthering Heights', 'Classic', 1847);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Jane Eyre', 'Classic', 1847);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Picture of Dorian Gray', 'Classic', 1890);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Les Misérables', 'Historical Fiction', 1862);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Crime and Punishment', 'Classic', 1866);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Brothers Karamazov', 'Classic', 1880);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('War and Peace', 'Historical Fiction', 1869);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Odyssey', 'Classic', -800);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Iliad', 'Classic', -800);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Catch-22', 'Satire', 1961);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Hitchhiker''s Guide to the Galaxy', 'Science Fiction', 1979);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Road', 'Dystopian', 2006);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Fault in Our Stars', 'Young Adult', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Alchemist', 'Fiction', 1988);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Kite Runner', 'Fiction', 2003);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Life of Pi', 'Adventure', 2001);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Book Thief', 'Historical Fiction', 2005);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Road', 'Dystopian', 2006);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Gone Girl', 'Thriller', 2012);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Girl on the Train', 'Thriller', 2015);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Big Little Lies', 'Fiction', 2014);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Where the Crawdads Sing', 'Fiction', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Educated', 'Memoir', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Becoming', 'Memoir', 2018);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Silent Patient', 'Psychological Thriller', 2019);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('A Promised Land', 'Memoir', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Vanishing Half', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Anxious People', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Klara and the Sun', 'Science Fiction', 2021);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('The Midnight Library', 'Fiction', 2020);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Project Hail Mary', 'Science Fiction', 2021);
INSERT INTO SACH (TenSach, TheLoai, NamXuatBan) VALUES ('Malibu Rising', 'Fiction', 2021);

-- Sách 1
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (1, 1);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (1, 2);

-- Sách 2
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (2, 1);

-- Sách 3
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (3, 2);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (3, 3);

-- Sách 4
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (4, 4);

-- Sách 5
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (5, 5);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (5, 6);

-- Sách 6
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (6, 7);

-- Sách 7
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (7, 8);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (7, 9);

-- Sách 8
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (8, 10);

-- Sách 9
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (9, 11);

-- Sách 10
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (10, 12);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (10, 13);

-- Sách 11
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (11, 14);

-- Sách 12
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (12, 15);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (12, 16);

-- Sách 13
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (13, 17);

-- Sách 14
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (14, 18);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (14, 19);

-- Sách 15
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (15, 20);

-- Sách 16
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (16, 21);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (16, 22);

-- Sách 17
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (17, 23);

-- Sách 18
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (18, 24);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (18, 25);

-- Sách 19
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (19, 26);

-- Sách 20
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (20, 27);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (20, 28);

-- Ti?p t?c thêm các sách khác v?i tác gi?
-- Sách 21
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (21, 29);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (21, 30);

-- Sách 22
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (22, 31);

-- Sách 23
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (23, 32);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (23, 33);

-- Sách 24
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (24, 34);

-- Sách 25
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (25, 35);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (25, 36);

-- Sách 26
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (26, 37);

-- Sách 27
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (27, 38);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (27, 39);

-- Sách 28
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (28, 40);

-- Sách 29
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (29, 41);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (29, 42);

-- Sách 30
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (30, 43);

-- Sách 31
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (31, 44);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (31, 45);

-- Sách 32
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (32, 46);

-- Sách 33
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (33, 47);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (33, 48);

-- Sách 34
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (34, 49);

-- Sách 35
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (35, 50);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (35, 1);

-- Sách 36
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (36, 2);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (36, 3);

-- Sách 37
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (37, 4);

-- Sách 38
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (38, 5);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (38, 6);

-- Sách 39
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (39, 7);

-- Sách 40
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (40, 8);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (40, 9);

-- Sách 41
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (41, 10);

-- Sách 42
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (42, 11);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (42, 12);

-- Sách 43
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (43, 13);

-- Sách 44
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (44, 14);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (44, 15);

-- Sách 45
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (45, 16);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (45, 17);

-- Sách 46
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (46, 18);

-- Sách 47
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (47, 19);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (47, 20);

-- Sách 48
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (48, 21);

-- Sách 49
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (49, 22);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (49, 23);

-- Sách 50
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (50, 24);
-- Sách 51
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (51, 25);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (51, 26);

-- Sách 52
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (52, 27);

-- Sách 53
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (53, 28);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (53, 29);

-- Sách 54
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (54, 30);

-- Sách 55
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (55, 31);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (55, 32);

-- Sách 56
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (56, 33);

-- Sách 57
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (57, 34);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (57, 35);

-- Sách 58
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (58, 36);

-- Sách 59
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (59, 37);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (59, 38);

-- Sách 60
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (60, 39);

-- Sách 61
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (61, 40);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (61, 41);

-- Sách 62
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (62, 42);

-- Sách 63
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (63, 43);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (63, 44);

-- Sách 64
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (64, 45);

-- Sách 65
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (65, 46);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (65, 47);

-- Sách 66
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (66, 48);

-- Sách 67
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (67, 49);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (67, 50);

-- Sách 68
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (68, 1);

-- Sách 69
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (69, 2);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (69, 3);

-- Sách 70
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (70, 4);

-- Sách 71
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (71, 5);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (71, 6);

-- Sách 72
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (72, 7);

-- Sách 73
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (73, 8);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (73, 9);

-- Sách 74
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (74, 10);

-- Sách 75
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (75, 11);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (75, 12);

-- Sách 76
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (76, 13);

-- Sách 77
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (77, 14);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (77, 15);

-- Sách 78
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (78, 16);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (78, 17);

-- Sách 79
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (79, 18);

-- Sách 80
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (80, 19);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (80, 20);

-- Sách 81
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (81, 21);

-- Sách 82
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (82, 22);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (82, 23);

-- Sách 83
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (83, 24);

-- Sách 84
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (84, 25);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (84, 26);

-- Sách 85
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (85, 27);

-- Sách 86
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (86, 28);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (86, 29);

-- Sách 87
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (87, 30);

-- Sách 88
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (88, 31);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (88, 32);

-- Sách 89
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (89, 33);

-- Sách 90
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (90, 34);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (90, 35);

-- Sách 91
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (91, 36);

-- Sách 92
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (92, 37);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (92, 38);

-- Sách 93
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (93, 39);

-- Sách 94
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (94, 40);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (94, 41);

-- Sách 95
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (95, 42);

-- Sách 96
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (96, 43);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (96, 44);

-- Sách 97
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (97, 45);

-- Sách 98
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (98, 46);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (98, 47);

-- Sách 99
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (99, 48);

-- Sách 100
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (100, 49);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (100, 50);

-- Sách 101
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (101, 1);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (101, 2);

-- Sách 102
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (102, 3);

-- Sách 103
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (103, 4);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (103, 5);

-- Sách 104
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (104, 6);

-- Sách 105
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (105, 7);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (105, 8);

-- Sách 106
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (106, 9);

-- Sách 107
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (107, 10);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (107, 11);

-- Sách 108
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (108, 12);

-- Sách 109
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (109, 13);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (109, 14);

-- Sách 110
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (110, 15);

-- Sách 111
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (111, 16);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (111, 17);

-- Sách 112
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (112, 18);

-- Sách 113
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (113, 19);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (113, 20);

-- Sách 114
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (114, 21);

-- Sách 115
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (115, 22);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (115, 23);

-- Sách 116
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (116, 24);

-- Sách 117
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (117, 25);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (117, 26);

-- Sách 118
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (118, 27);

-- Sách 119
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (119, 28);
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (119, 29);

-- Sách 120
INSERT INTO SACH_TACGIA (IDSach, IDTacGia) VALUES (120, 30);

DECLARE @BookCoverLinks TABLE (Link VARCHAR(255));
INSERT INTO @BookCoverLinks (Link) VALUES 
    ('https://m.media-amazon.com/images/I/71zHDXu1TaL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/51t0Z0DfEfL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/81aY1lxk+9L._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/71rpa1-kyvL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/81Om0n+pfyL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/71lwUXdZJqL._SL1481_.jpg'),
    ('https://m.media-amazon.com/images/I/91Uu0nZPbZL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/91LY6ZgtY4L._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/A14iZuW5+9L._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/81kdr-pEJoL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/61sKhaWOofL._SL1500_.jpg'),
    ('https://m.media-amazon.com/images/I/81kQOrkkKkL._SL1500_.jpg');

WITH NumberedRows AS (
    SELECT 
        ID,
        (ROW_NUMBER() OVER (ORDER BY ID) - 1) % 12 + 1 AS CyclePosition,
        (ROW_NUMBER() OVER (ORDER BY ID) - 1) / 12 + 1 AS CycleGroup
    FROM SACH
    WHERE ID BETWEEN 1 AND 120
),
ShuffledLinks AS (
    SELECT 
        Link,
        ROW_NUMBER() OVER (PARTITION BY CycleGroup ORDER BY NEWID()) AS Position,
        CycleGroup
    FROM @BookCoverLinks
    CROSS JOIN (
        SELECT DISTINCT CycleGroup 
        FROM NumberedRows
    ) AS Groups
)
UPDATE SACH
SET BiaSach = sl.Link
FROM SACH s
JOIN NumberedRows nr ON s.ID = nr.ID
JOIN ShuffledLinks sl ON nr.CyclePosition = sl.Position 
    AND nr.CycleGroup = sl.CycleGroup
WHERE s.ID BETWEEN 1 AND 120;

SELECT * FROM SACH;
