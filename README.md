# README The Gossip Prejct Version Devise

Sauf erreur de ma part, le site tourne aussi bien en local qu'en ligne sur le lien suivant: 
https://the-gossip-project-js.herokuapp.com/.

Les points important:

* Ce point diffère un peu de ce qui est demandé. J'ai mal interprété la consigne "1.Récap" au niveau de la preière liste à puces. Je m'explique: pour la page d'accueil, si tu n'es pas log in ou sign up, tu arrive sur un bloc qui te propose de le faire. Une fois que tu es log in, la même page d'accueil switche et d'affiche la liste de tout les gossips créés par les différents utilisateurs. 

* Dans le "header" quand tu n'est pas log in: 
   *A gauche tu as un lien vers la page d'accueil.
   *A droite quand tu n'est pas log in, il y a un lien "connexion" qui te dirige vers la page "log in" et un lien "inscription" qui emmène vers la page "sign up". Dans cette page, il faut renseigner tous les champs et entrer dans le dernier "GOSSIP_2017" pour pouvoir valider son inscription.

 * Dans le "header" quand tu est log in:
   *Le lien "déconnexion" pour le log out.
   *"créer un gossip" pour devine quoi.
   *Et un lien qui va vers la page d'index.

* Dans l'index, l'utilisateur peut supprimer ses indexs (seulement les siens).

* L'utilisateur peut aussi modifier ses posts.

* Dans l'index, les gossips s'affichent avec le nom de celui qui l'a posté, l'heure de publication et son contenu.

*Si il y a un problème qui m'a échapé, contacte moi sur slack ( @jerem.s )

NB: A l'heure ou j'écris ce readme, je n'ai pas commencé à écrire les tests.