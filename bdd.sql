
CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `content` text (65000) NOT NULL,
  
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,  
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `post_category` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
   
  PRIMARY KEY (post_id, category_id), 
  CONSTRAINT fk_post 
    FOREIGN KEY (post_id)
    REFERENCES post (id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT fk_category
    FOREIGN KEY (category_id)
    REFERENCES category (id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `user`(
      `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
      `username` varchar(255) NOT NULL,
      `password` varchar(255) NOT NULL,
        PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
        
