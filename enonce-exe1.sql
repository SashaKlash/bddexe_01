-- 1)Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant
SELECT * from `categ` ORDER BY `name`;
-- 2)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4
SELECT `idcateg`, `name` FROM `categ` WHERE `idcateg` = 4;
-- 3)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4
SELECT `idcateg`, `name` FROM `categ` WHERE `idcateg` BETWEEN 2 AND 4;
-- 4)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` est 1, 3 ou 5  ordonné par `name` descendant
SELECT `idcateg`, `name`FROM `categ` WHERE `idcateg` IN (1, 3, 5) ORDER BY  `name` DESC;
-- 5)Séléctionnez tous les champs de `categ` quand `desc` contient 'et' n'importe où dans la chaîne
SELECT * FROM `categ` WHERE `desc` LIKE '%et%';
-- 6)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 17 lignes de résultats) , ordonnés par `news`.`title` ASC
SELECT * FROM `categ` WHERE `idcateg`= 5 LEFT JOIN `news` ON `id.news`;
-- 7)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et  `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 6 lignes de résultats) , ordonnés par `news`.`title` ASC ET que `news`.`visible` vaut 1 !
-- 8)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` (concaténés sur une seul ligne avec la ',' comme séparateur) et  `title` (concaténés sur une seul ligne avec '|||' comme séparateur) de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 1 ligne de résultats) ,  ET que `news`.`visible` vaut 1 !
-- 9)Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'c' (7 résultats)
-- 10)Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)
-- 11)Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)
-- 12)Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant (10 résultats)
-- 13)Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 premiers résultats (3 résultats)
-- 14)Séléctionnez  `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure)  lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 derniers résultats (3 résultats)
-- 15)Sélectionnez `iduser` et `login` de la table `user`, avec le nombre d'articles écrit par chacun renommé `nbarticles`, classés par `nbarticles` descendant et en n'en gardant que les 5 premiers (5 résultats)
SELECT `iduser`, `login` FROM `user` JOIN 