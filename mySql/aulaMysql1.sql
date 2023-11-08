CREATE TABLE `user` (
  `cpf` interger(primary key),
  `name` varchar(255),
  `lastname` varchar(255),
  `age` interger
);

CREATE TABLE `cadastro_pj` (
  `cpnj` interger(primary key),
  `name_ent` varchar(255),
  `type_atvdd` varchar(255)
);

CREATE TABLE `products` (
  `id` varchar(primary key),
  `name_prod` varchar(255),
  `descripition` varchar(255),
  `price` interger
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cpnj`) REFERENCES `user` (`cpf`);

ALTER TABLE `products` ADD FOREIGN KEY (`id`) REFERENCES `cadastro_pj` (`cpnj`);
