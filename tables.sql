 CREATE TABLE `users` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `oauth_provider` enum('','facebook','google','twitter','linkedin') COLLATE utf8_unicode_ci NOT NULL,
 `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
 `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
 `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
 `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
 `created` datetime NOT NULL,
 `modified` datetime NOT NULL,
 PRIMARY KEY (`id`)
);
CREATE TABLE `info` (
  `id_test` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `WPM` int(11) NOT NULL,
  `words` int(11) NOT NULL,
  `words_wrong` int(11) NOT NULL,
  `keystrokes` int(11) NOT NULL,
  `record_time` datetime NOT NULL,
  PRIMARY KEY(`id_test`)
);



CREATE TABLE `tests` (
 `id_user` int(11) NOT NULL,
 `test_taken` int(11),
 `words_typed` int(11),
 `keyboard` varchar(255),
 `language` varchar(255),
 FOREIGN KEY(id_user) REFERENCES users(id)
);
