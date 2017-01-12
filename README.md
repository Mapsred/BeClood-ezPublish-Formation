#Consigne
1 - Créer les classes. Thème; Fiche Pratique, Contact, conteneurs et contenu.
Théme : Intitulé
Fiche Pratique : Intitulé, Description (Bloc XML), Lien Externe, Image, Relation d'objet (Contact)
Entité : Intitulé, Adresse (Bloc de texte)
Contact : Nom, Prenom, Photo

1 bis - Créer une extension qui déclare un design

2 - Homepage
  2 colonnes : 
	1ere liste des fiches pratiques classées par thème
	2nde liste de contacts classés par entité
		A utiliser ici :
			fetch counter list
			attribute view gui
			node view gui
			liens internes (|ezurl)

2 bis - Faire le lien sur le contact pour aller directement sur la vue full du contact
	Faire un node view gui sur le contact avec la vue "line"


3 - Vue full d'un contact avec description de l'entité

4 - Vue full d'une Fiche Pratique avec réaffichage des autres Fiches Pratiques d'un thème.
Colonne dans ce thème avec la Fiche Pratique en cours de lecture surlignée et non cliquable.

5 - Surcharger le datatype ezstring (ligne de texte) pour que toutes les lignes de texte passent en gras.

6 - Créer une feuille de style apportée au sein de la page layout et patché (ezjscore)

7 - Créer un module PHP. entity/list
Afficher les entités qui ont des contacts rattachés.
		A utiliser ici :
			PHP. Fetch PHP .
			Filtre des entités.
			Renvoi d'un template

8 - Créer une section sur un thème : "protected"

9 - Créer un rôle et permission qui a le droit de lire sur "protected"

10 - Créer un utilisateur et lui affecter le rôle créé précédemment.

11 - Se connecter sur le front (faire un lien sur /user/login°

12 - Sur Fiche Pratique : Afficher le nom et prénom connecté

#eZ Publish 4 README


What is eZ Publish?
-------------------
eZ Publish is a professional PHP application framework with advanced CMS
(content management system) functionality. As a CMS it's most notable feature
is its revolutionary, fully customizable and extendable content model. This is
also what makes it suitable as a platform for general PHP development, allowing
you to develop professional Internet applications fast.

Standard CMS functionality, like news publishing, e-commerce and forums is
already implemented and ready for you to use. Its stand-alone libraries can be
used for cross-platform, database independent PHP projects.

eZ Publish is database, platform and browser independent. Because it is
browser based it can be used and updated from anywhere as long as you have
access to the Internet.


License
-------
eZ Publish is dual licensed. You can choose between the GNU GPL and the
eZ Publish Professional License. The GNU GPL gives you the right to use, modify
and redistribute eZ Publish under certain conditions. The GNU GPL license is
distributed with the software, see the file LICENSE. It is also available at
http://www.gnu.org/licenses/gpl.txt
Using eZ Publish under the terms of the GNU GPL is free of charge.

The eZ Publish Proprietary License gives you the right to use the source code
for making your own commercial software. It allows you full protection of your
work made with eZ Publish. You may re-brand, license and close your source
code. eZ Publish is not free of charge when used under the terms of the
Professional License. For pricing and ordering, please contact us at
info@ez.no or visit http://ez.no/products/proprietary_license_options


eZ Publish features
-------------------
- User defined content classes and objects
- Advanced search engine
- Role based permissions system
- Advanced template engine
- Version control
- Professional workflow management
- Multi-lingual support
- Support for Unicode
- Task system for easy collaboration
- Image conversion and scaling
- Database abstraction layer
- XML handling and parsing library
- SOAP communication library
- Localisation and internationalisation libraries
- Several other reusable libraries
- SDK (software development kit)
  and full documentation


Installation
------------
Read doc/INSTALL or go to http://doc.ez.no/eZ-Publish


Where to get more help
----------------------
eZ Publish documentation: http://doc.ez.no/eZ-Publish
eZ Publish forums: http://share.ez.no/forums/

