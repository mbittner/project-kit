# Ensemble de documents Markdown — Pratique moderne d'analyse d'affaires

*[Read this document in English](README.md)*

Cet espace de travail aide les gestionnaires et propriétaires de produit à rédiger, réviser et suivre des exigences d'affaires bilingues avec Copilot Chat. Il comprend un portefeuille d'exemple, des gabarits réutilisables, des vérifications guidées et un suivi de l'état de la documentation.

Consultez les exigences d'affaires dans la [Table des matières](table-of-content-fr.md). Les documents d'accompagnement se trouvent dans `docs/business/` et `docs/technical/`; ils ne font pas partie de l'index des exigences.

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
Commencez par l'artéfact qui correspond à la décision à prendre; le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) explique le processus, de la rédaction au partage.

## Comment utiliser cet outil

Ouvrez Copilot Chat et décrivez le résultat d'affaires ou l'artéfact souhaité. Par exemple :

> « Rédige une épopée sous INIT-001 pour l'intégration numérique de nouveaux groupes. »

> « Est-ce que EPIC-002 est prêt pour la découverte des fonctionnalités? »

Copilot crée les paires anglaise et française, consigne les hypothèses et questions ouvertes, vérifie les parties prenantes et les chevauchements de portée, et n'invente pas les faits à confirmer. Les détails figurent dans le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md).

## Commandes utiles

Utilisez ces raccourcis dans Copilot Chat pour les processus répétables :

| Commande | Ce qu'elle fait |
|---|---|
| `/validate epic 003` | Vérifie l'élément nommé — `initiative`, `epic`, `feature`, `story`, `cm-epic` ou `cm-feature` — par rapport à sa liste de contrôle de qualité et lui donne un score, avec les lacunes précises signalées. Vous devez préciser le type (p. ex. `/validate initiative 001`, `/validate story 004`). |
| `/decompose-initiative 001` | Récupère automatiquement les dernières mises à jour, puis propose un ensemble d'épopées sans chevauchement; actualise de nouveau après votre confirmation avant de créer les fichiers. |
| `/decompose-initiative 001` | Propose un ensemble d'épopées sans chevauchement et actualise automatiquement les mises à jour avant la création. |
| `/decompose-epic 003` | Pareil, en proposant des fonctionnalités pour une épopée. |
| `/decompose-epic 003` | Actualise automatiquement les mises à jour, puis propose des fonctionnalités pour une épopée. |
| `/decompose-feature 011` | Pareil, en proposant des récits utilisateur pour une fonctionnalité. |
| `/audit-pack` | Effectue une vérification complète de tous les documents — ou d'une seule initiative et de tout ce qui en dépend (`/audit-pack INIT-001`) — et vous donne un seul rapport de ce qui nécessite de l'attention, y compris si une équipe ou un groupe doit absorber trop de changements en même temps. |
| `/save-my-work` | Enregistre vos changements pour qu'ils soient bien conservés. Ne les envoie pas encore à votre collègue. |
| `/share-my-work` | Récupère d'abord les dernières mises à jour de votre collègue, puis envoie vos changements enregistrés. Vous avertit des problèmes de qualité d'abord, mais ne vous empêche pas de partager. |
| `/get-latest` | Récupère les derniers changements et vous dit ce qui est nouveau; la création d'épopée le fait automatiquement, mais vous pouvez aussi lancer la commande au besoin. |
| `/show-history EPIC-003` | Montre une chronologie en langage clair de qui a changé un document et quand — omettez l'identifiant pour voir l'historique récent de tout le projet. |
| `/undo-my-last-change` | Annule votre dernier changement en toute sécurité, en vous montrant toujours ce qui serait perdu avant de vous demander de confirmer. |

(Remplacez les numéros par l'identifiant du document visé — p. ex. `003` pour `EPIC-003`.)

## Documentation complémentaire

- [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) et [version anglaise](docs/business/business-user-guide.md)
- [Architecture de la solution](docs/technical/solution-architecture.md)
- [Notes de version les plus récentes](docs/technical/release-notes/2026-09-26-documentation-governance-and-epic-workflows.md)

## Statut du document : Ébauche → En révision → Approuvé

Les documents passent de l'**Ébauche** à **En révision**, puis à **Approuvé**. Utilisez `/validate <type> <id>` pour obtenir le score de préparation, l'état de la liste de contrôle et la décision de statut. L'approbation exige le seuil de qualité du type d'artéfact, une liste de contrôle complète et aucune question critique non résolue.

## Versionnement et état de la documentation

Le champ `Version du document` indique la base approuvée; il ne change pas à chaque modification. `/validate` peut proposer une version et attendre votre confirmation. Le [Registre de l'état de la documentation](documentation-register-fr.md) résume l'état des documents, le travail actif et les bases approuvées.

## Enregistrer et partager votre travail

Utilisez `/save-my-work` pour consigner le travail et `/share-my-work` pour récupérer les dernières mises à jour, résoudre les conflits, exécuter les vérifications et partager. `/get-latest`, `/show-history` et `/undo-my-last-change` restent disponibles au besoin. Le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) explique ces processus.

## Qui est impliqué

Consultez le [Registre des parties prenantes](stakeholder-register-fr.md) pour les rôles de gouvernance, les groupes touchés, leurs représentants et leur exposition au changement.

## Structure des dossiers

- `initiative/` : le document d'initiative au niveau du portefeuille
- `epics/` : un document par épopée
- `features/` : un document par fonctionnalité
- `stories/` : un document par récit utilisateur
- `change-management/` : un bilan par épopée et par fonctionnalité, plus un sommaire global
- `docs/business/` : guides pratiques pour les gens d'affaires
- `docs/technical/` : notes d'architecture et notes de version
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

