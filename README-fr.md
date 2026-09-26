# Ensemble de documents Markdown — Pratique moderne d'analyse d'affaires

*[Read this document in English](README.md)*

Ce projet vous aide à rédiger des exigences d'affaires claires et cohérentes — initiatives, épopées, fonctionnalités, récits utilisateur et bilans de gestion du changement — avec l'aide de GitHub Copilot Chat, directement dans ce dossier. Vous n'avez pas besoin de connaître le Markdown ni une syntaxe particulière : décrivez simplement ce que vous voulez en langage clair (français ou anglais) dans la conversation, et Copilot produira un document bien structuré, lié et vérifié pour sa qualité.

Cet ensemble comprend un exemple complet — **INIT-001 Moderniser l'intégration de nouvelles affaires** — décomposé en 6 épopées et 21 fonctionnalités, pour vous montrer à quoi ressemble un ensemble de documents terminé. Voir la **[Table des matières](table-of-content-fr.md)** pour la liste complète.
Cet ensemble comprend un exemple complet — **INIT-001 Moderniser l'intégration de nouvelles affaires** — décomposé en 6 épopées et 21 fonctionnalités, pour vous montrer à quoi ressemble un ensemble de documents terminé. Voir la **[Table des matières](table-of-content-fr.md)** pour les exigences et registres destinés aux affaires dans les deux langues; les notes techniques, notes de version et guides pratiques se trouvent dans `docs/` et en sont exclus.

## La vue d'ensemble

Chaque exigence d'affaires se situe à l'un de ces niveaux, et chaque niveau répond à une question différente :

```text
Initiative  →  Épopée              →  Fonctionnalité      →  Récit utilisateur
(Pourquoi?)    (Quelle capacité?)     (Quoi exactement?)     (Qu'est-ce que l'utilisateur doit accomplir?)
```

- **Initiative** — l'investissement stratégique. Pourquoi l'organisation doit-elle faire cela?
- **Épopée** — une capacité d'affaires qui concrétise l'initiative. Que devons-nous être capables de faire?
- **Fonctionnalité** — un élément précis et testable de cette capacité. Que pourront exactement faire les gens?
- **Récit utilisateur** — un élément de taille de sprint d'une fonctionnalité, rédigé du point de vue d'une personne précise. Qu'est-ce que cette personne a besoin exactement, et comment saurons-nous que c'est terminé?
- **Bilan de gestion du changement** — un par épopée et un par fonctionnalité (pas nécessaire au niveau du récit — le bilan au niveau de la fonctionnalité couvre déjà cela). Qui est touché, et que devra-t-il faire différemment le jour de la mise en production?

Vous n'avez pas besoin de tout construire du haut vers le bas en une seule séance. Commencez où vous en êtes — même avec une idée d'une ligne — et Copilot remplira les détails raisonnables, signalera ce dont il n'est vraiment pas certain, et vous dira ce qui manque.

## Comment utiliser cet outil

Ouvrez Copilot Chat dans ce projet et décrivez simplement ce dont vous avez besoin, par exemple :

> « Crée une nouvelle initiative pour réduire le délai d'intégration des nouveaux groupes d'assurance. »

> « Rédige une épopée sous INIT-001 pour permettre aux courtiers de téléverser des documents numériquement. »

> « Écris une fonctionnalité sous EPIC-003 qui permet aux conseillers de sauvegarder une demande incomplète et de la terminer plus tard. »

> « Écris un récit utilisateur sous FEAT-011 pour un courtier qui a besoin de voir l'historique des versions d'un document. »

> « Est-ce que EPIC-002 est prêt à avancer? »

> « Décompose EPIC-004 en fonctionnalités. »

> « Décompose FEAT-011 en récits utilisateur. »

Pour une explication détaillée du fonctionnement de la rédaction, de la validation, des vérifications des parties prenantes et du partage, consultez le [Guide d'utilisation pour les gens d'affaires](docs/business-user-guide-fr.md).

Pour obtenir un deuxième avis indépendant sur un document important ou ambigu, choisissez **BA Requirements Reviewer** dans Copilot Chat et demandez-lui d'examiner l'artefact. Il fournit des constats classés par priorité sans modifier les fichiers. Cette révision facultative complète `/validate`, mais ne remplace pas cette commande ni les vérifications mécaniques de l'ensemble.

Copilot va :
- Ne vous poser une question que lorsqu'il ne peut vraiment pas faire une hypothèse raisonnable (et il ne vous posera jamais plus qu'une poignée de questions à la fois — tout ce qui est moins critique est plutôt consigné comme question ouverte, pour que vous puissiez trancher plus tard sans retarder la rédaction).
- Utiliser des mentions simples « à confirmer » plutôt que d'inventer des chiffres, des dates ou des noms.
- Produire automatiquement une version anglaise et une version française de chaque document, synchronisées.
- Avant de créer une nouvelle épopée, récupérer automatiquement les derniers changements des collègues avant de vérifier le prochain identifiant; vous n'avez pas à exécuter `/get-latest` manuellement. En cas de conflit ou si l'actualisation est impossible, Copilot s'arrête et vous en informe.
- Vérifier son propre travail par rapport à une liste de contrôle de qualité avant de vous dire que c'est terminé.

Vous n'avez pas besoin de retenir de commandes spéciales pour commencer — une conversation normale fonctionne. Les commandes ci-dessous sont des raccourcis pour des vérifications précises et répétables.

## Commandes utiles

Tapez ceci directement dans Copilot Chat (elles commencent par `/`) :

| Commande | Ce qu'elle fait |
|---|---|
| `/validate epic 003` | Vérifie l'élément nommé — `initiative`, `epic`, `feature`, `story`, `cm-epic` ou `cm-feature` — par rapport à sa liste de contrôle de qualité et lui donne un score, avec les lacunes précises signalées. Vous devez préciser le type (p. ex. `/validate initiative 001`, `/validate story 004`). |
| `/decompose-initiative 001` | Récupère automatiquement les dernières mises à jour, puis propose un ensemble d'épopées sans chevauchement; actualise de nouveau après votre confirmation avant de créer les fichiers. |
| `/decompose-epic 003` | Pareil, en proposant des fonctionnalités pour une épopée. |
| `/decompose-feature 011` | Pareil, en proposant des récits utilisateur pour une fonctionnalité. |
| `/audit-pack` | Effectue une vérification complète de tous les documents — ou d'une seule initiative et de tout ce qui en dépend (`/audit-pack INIT-001`) — et vous donne un seul rapport de ce qui nécessite de l'attention, y compris si une équipe ou un groupe doit absorber trop de changements en même temps. |
| `/save-my-work` | Enregistre vos changements pour qu'ils soient bien conservés. Ne les envoie pas encore à votre collègue. |
| `/share-my-work` | Récupère d'abord les dernières mises à jour de votre collègue, puis envoie vos changements enregistrés. Vous avertit des problèmes de qualité d'abord, mais ne vous empêche pas de partager. |
| `/get-latest` | Récupère les derniers changements et vous dit ce qui est nouveau; la création d'épopée le fait automatiquement, mais vous pouvez aussi lancer la commande au besoin. |
| `/show-history EPIC-003` | Montre une chronologie en langage clair de qui a changé un document et quand — omettez l'identifiant pour voir l'historique récent de tout le projet. |
| `/undo-my-last-change` | Annule votre dernier changement en toute sécurité, en vous montrant toujours ce qui serait perdu avant de vous demander de confirmer. |

(Remplacez les numéros par l'identifiant du document visé — p. ex. `003` pour `EPIC-003`.)

## Statut du document : Ébauche → En révision → Approuvé

Chaque document commence comme une **Ébauche**. Avant de pouvoir être marqué **Approuvé**, il doit :
1. Obtenir un score suffisant sur sa liste de contrôle de qualité (demandez à Copilot de vérifier avec la commande `/validate` ci-dessus).
2. Avoir chaque élément de la liste de contrôle coché.
3. N'avoir aucune question critique non résolue.
4. Inscrire la date de validation, le score et la cote dans le champ d'en-tête `Last validated` au moment de l'approbation. Les nouveaux gabarits utilisent `Not recorded` jusque-là; les documents existants sans ce champ l'ajoutent lors de l'approbation. Les scores de validation des documents à l'état Ébauche ou En révision restent dans le rapport de validation.

Copilot refusera de marquer un document comme Approuvé si l'une de ces conditions n'est pas encore remplie — il vous dira plutôt ce qui manque.

## Versionnement et état de la documentation

L'en-tête `Version du document` indique la base approuvée, pas chaque modification enregistrée. Les documents restent `Not baselined` jusqu'à leur première approbation (`1.0`). Les corrections rédactionnelles seules ne changent pas la version; les changements aux critères d'acceptation qui gardent le même résultat et la même portée sont mineurs (`1.0` à `1.1`); une modification importante des utilisateurs visés, du résultat ou de la portée est majeure (`1.1` à `2.0`). À la commande `/validate`, Copilot propose une version avec sa justification et attend votre confirmation avant de l'appliquer. Si vous demandez de consigner la proposition, elle est ajoutée dans une section distincte **Proposition de version de base en attente**; la version approuvée et le registre demeurent inchangés jusqu'à l'approbation. Un document approuvé en cours de révision repasse à En révision et conserve sa version de base actuelle jusqu'à sa nouvelle validation et approbation. Consultez le [Registre de l'état de la documentation](documentation-register-fr.md) pour le relevé du portefeuille, le travail actif et les bases approuvées. Les en-têtes des documents demeurent la source de vérité; le travail actif n'est inscrit que lorsqu'il est suivi explicitement, et non déduit du statut Ébauche.

## Enregistrer et partager votre travail

Les documents de ce projet sont conservés dans le projet Azure DevOps de l'équipe (le même endroit qui héberge le wiki), mais vous n'avez pas besoin de savoir comment cela fonctionne. Dites simplement à Copilot ce que vous voulez, en langage clair :

> « Enregistre mon travail. »

> « Partage mes changements avec [collègue]. »

> « Récupère les derniers changements de [collègue]. »

> « Montre-moi l'historique de EPIC-003. »

> « Annule mon dernier changement. »

Quelques points à savoir :
- **Enregistrer** ne fait que consigner vos changements pour vous-même — cela ne les envoie pas encore à votre collègue.
- **Partager** récupère d'abord les dernières mises à jour de votre collègue, puis envoie les vôtres. Si vous avez tous les deux changé le même document, Copilot expliquera en langage clair ce qui diffère et vous demandera quelles parties garder — il ne devinera jamais.
- Il n'y a aucune étape d'approbation qui vous empêche de partager — Copilot mentionnera d'abord les problèmes de qualité qu'il trouve, mais la décision de partager quand même vous revient toujours.
- Annuler vous montre toujours ce qui serait perdu et vous demande de confirmer d'abord. Si le changement a déjà été partagé avec votre collègue, Copilot ajoute une correction plutôt que de l'effacer, pour que le travail de personne ne disparaisse de manière inattendue.
- Annuler vous montre toujours ce qui serait perdu et vous demande de confirmer d'abord. Si le changement a déjà été partagé avec votre collègue, Copilot ajoute une correction plutôt que de l'effacer, pour que le travail de personne ne disparaisse de manière inattendue.
- Avant le partage, des vérifications automatiques confirment que les documents d'affaires figurent dans la table des matières de la langue correspondante et que les en-têtes de statut et de version des paires s'affichent correctement. Lorsqu'un statut ou une version change, les totaux du portefeuille et la liste des bases approuvées du registre sont régénérés à partir des en-têtes; les responsables et prochaines étapes du travail actif restent gérés manuellement.

## Qui est impliqué

[stakeholder-register.md](stakeholder-register.md) (ou sa version [en français](stakeholder-register-fr.md)) est une liste unique et toujours à jour de toutes les personnes touchées par ce travail : les personnes responsables des décisions (commanditaire, gestionnaire de produit, propriétaire de produit, etc.) et les équipes ou rôles touchés par le changement (administrateurs de promoteurs de régime, courtiers, souscripteurs, personnel des opérations...). Chaque fois qu'un document nomme une partie prenante, Copilot vérifie d'abord cette liste — en réutilisant le même nom s'il y est déjà, en l'ajoutant si c'est vraiment une lacune, ou en la signalant comme question ouverte si ce n'est pas encore clair qui est touché. Pour chaque nouveau groupe touché, confirmez son gestionnaire et son expert en la matière (SME); si l'un de ces contacts est inconnu, consignez la question sans réponse dans le profil du groupe. Rien n'est défini une seule fois puis oublié. `/audit-pack` utilise aussi cette liste pour vous avertir si la même équipe doit absorber un impact Élevé ou Moyen de plusieurs changements en même temps, afin que vous puissiez espacer les choses ou combiner la formation au lieu de submerger un groupe.

## Structure des dossiers

- `initiative/` : le document d'initiative au niveau du portefeuille
- `epics/` : un document par épopée
- `features/` : un document par fonctionnalité
- `stories/` : un document par récit utilisateur
- `change-management/` : un bilan par épopée et par fonctionnalité, plus un sommaire global
- `docs/` : guides pratiques pour les gens d'affaires et documentation technique, qui ne sont pas des artéfacts d'exigences
- `templates/` : points de départ vierges (vous n'aurez normalement pas besoin de les ouvrir vous-même — demandez simplement à Copilot de rédiger quelque chose)
- `stakeholder-register.md` : la liste de qui est impliqué et qui est touché, décrite ci-dessus
- [documentation-register-fr.md](documentation-register-fr.md) : état actuel des documents, travail actif et versions de base approuvées

## Ordre de révision suggéré

1. Réviser et approuver les limites et les résultats attendus de l'initiative.
2. Valider l'objectif, la valeur et les dépendances de chaque épopée envers les autres.
3. Mener des discussions de découverte pour chaque fonctionnalité.
4. Confirmer la préparation avant de décomposer une fonctionnalité en tâches de livraison quotidiennes.

## Important

Cet ensemble est un exemple de travail, et non une norme organisationnelle approuvée. Toutes les valeurs de référence, cibles, dates, responsables, choix de systèmes et règles détaillées sont volontairement marqués pour validation — traitez « à confirmer » et « à approuver » comme des instructions littérales d'aller chercher une vraie réponse avant de vous fier au document.

