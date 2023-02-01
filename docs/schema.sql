CREATE TABLE theme(
   Id_theme INT AUTO_INCREMENT,
   title VARCHAR(255),
   description TEXT,
   img_src VARCHAR(255),
   PRIMARY KEY(Id_theme)
);

CREATE TABLE article(
   Id_article INT AUTO_INCREMENT,
   title VARCHAR(255),
   content TEXT,
   img_src VARCHAR(255),
   Id_theme INT,
   PRIMARY KEY(Id_article),
   FOREIGN KEY(Id_theme) REFERENCES theme(Id_theme)
);