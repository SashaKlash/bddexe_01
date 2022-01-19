# bddexe_01

## Révisions

Installez le fichier `bddexe_01.sql` en **désactivant les clefs étrangères** en MySQL 5.7 ou en MariaDB .

Nous allons travailler dans **Workbench** sur le fichier `nos-requetes.sql` .

Nous utilisons le moteur **InnoDB**.

### Modèle de notre base de donnée en MySQL 5.7

![Base SQL](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/image.png)

### Dictionnaire de données de la base

[Dictionnaire de données en pdf](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/db_structure_bddexe_01.pdf) à télécharger .

### Relations

- Relation **many to many entre** `news` et `categ` dans la table `news_has_categ`, en **CASCADE ON DELETE** pour éviter la suppression manuelle du lien entre les news et les catégories (en cas de suppression d'une news **ou** d'une catégorie).

![news_has_categ](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_news_has_categ.png)

- Relation **many to one** entre `news` et `user`, en **SET NULL ON DELETE** pour permettre à un article de rester dans la DB si on supprime l'utilisateur (! le champ `news.user_iduser` doit permettre le NULL)

![news](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_news-with-user.png)

- Relation **many to one** entre `user` et `permission`, **SET NULL ON DELETE** pour permettre à un utilisateur de rester dans la DB si on supprime une permission (! le champ `user.permission_idpermission` doit permettre le NULL)

![news](https://github.com/WebDevCF2m2021/bddexe_01/raw/main/img/fk_user-permission.png)

## Plugin pour VSCode

J'ai installé "Database Client for Visual Studio Code" pour pouvoir effectuer les requêtes depuis VSCode sans devoir lancer Workbench

## Exercice 1

Remplissez le contenu de `enonce-exe1.sql`

pour obtenir:

-- 1)Sélectionnez tous les champs de `categ` ordonnés par `name` ascendant

![1](https://github.com/mikhawa/bddexe_01/raw/exe1/img/1.png)

-- 2)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` vaut 4

![2](https://github.com/mikhawa/bddexe_01/raw/exe1/img/2.png)

-- 3)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` se trouve entre 2 et 4

![3](https://github.com/mikhawa/bddexe_01/raw/exe1/img/3.png)

-- 4)Séléctionnez `idcateg` et `name` de `categ` quand `idcateg` est 1, 3 ou 5 ordonné par `name` descendant

![4](https://github.com/mikhawa/bddexe_01/raw/exe1/img/4.png)

-- 5)Séléctionnez tous les champs de `categ` quand `desc` contient 'et' n'importe où dans la chaîne

![5](https://github.com/mikhawa/bddexe_01/raw/exe1/img/5.png)

-- 6)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 17 lignes de résultats) , ordonnés par `news`.`title` ASC

![6](https://github.com/mikhawa/bddexe_01/raw/exe1/img/6.png)

-- 7)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` et `title` de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 6 lignes de résultats) , ordonnés par `news`.`title` ASC ET que `news`.`visible` vaut 1 !

![7](https://github.com/mikhawa/bddexe_01/raw/exe1/img/7.png)

-- 8)Séléctionnez tous les champs de `categ` dont l' `idcateg` vaut 5 ainsi que les `idnews` (concaténés sur une seul ligne avec la ',' comme séparateur) et `title` (concaténés sur une seul ligne avec '|||' comme séparateur) de la table `news` qui se trouvent dans cette catégorie, même si il n'y en a pas (présence de `categ` dans tous les cas, 1 ligne de résultats) , ET que `news`.`visible` vaut 1 !

![8](https://github.com/mikhawa/bddexe_01/raw/exe1/img/8.png)

-- 9)Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'c' (7 résultats)

![9](https://github.com/mikhawa/bddexe_01/raw/exe1/img/9.png)

-- 10)Séléctionnez `idnews` et `title` de la table `news` lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)

![10](https://github.com/mikhawa/bddexe_01/raw/exe1/img/10.png)

-- 11)Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 (10 résultats)

![11](https://github.com/mikhawa/bddexe_01/raw/exe1/img/11.png)

-- 12)Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant (10 résultats)

![12](https://github.com/mikhawa/bddexe_01/raw/exe1/img/12.png)

-- 13)Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 premiers résultats (3 résultats)

![13](https://github.com/mikhawa/bddexe_01/raw/exe1/img/13.png)

-- 14)Séléctionnez `idnews` et `title` de la table `news`, ainsi que les `iduser` et `login` de la table `user` (seulement si il y a une jointure) lorsque le `title` commence par 'a' et `visible` vaut 1 , classés par `user`.`login` ascendant en ne gardant que les 3 derniers résultats (3 résultats)

![14](https://github.com/mikhawa/bddexe_01/raw/exe1/img/14.png)

-- 15)Sélectionnez `iduser` et `login` de la table `user`, avec le nombre d'articles écrit par chacun renommé `nbarticles`, classés par `nbarticles` descendant et en n'en gardant que les 5 premiers (5 résultats)

![15](https://github.com/mikhawa/bddexe_01/raw/exe1/img/15.png)

## Bon boulot !
