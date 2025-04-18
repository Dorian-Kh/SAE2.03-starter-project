Itération 5 :

J'ai créé la table Profil pour l'itération 5 afin de pouvoir ajouter, modifier ou supprimer chaque profil dans cette table.
J'ai donc ajouté l'id_profil pour y stocker sont id automatiquement sous forme d'entiers, name pour le nom du profil, image contenant le nom du fichier de l'avatar et date_naissance contenant la date de naissance de l'utilisateur.

J'ai aussi ajouté une association "Voir" avec les cardinalité 0,n de chaque côté car un film peut être vu au minimum par 0 profil et au maximum à l'infini et un profil peut voir au minimum 0 film et au maximum l'infini.