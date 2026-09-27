# Ensemble de documents Markdown — Pratique moderne d'analyse d'affaires

*[Read this document in English](README.md)*

Cet espace de travail aide les gestionnaires et propriétaires de produit à rédiger, réviser et suivre des exigences d'affaires bilingues avec Copilot Chat. Il comprend des gabarits réutilisables, des processus guidés, des vérifications et des registres, sans exigences propres à un projet préchargées.

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

Aucune exigence d'affaires propre au projet n'est préchargée. Commencez par une initiative lorsque le projet est prêt et laissez Copilot signaler les inconnues importantes plutôt que d'inventer des réponses.
Commencez par l'artéfact qui correspond à la décision à prendre; le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) explique le processus, de la rédaction au partage.

## Comment utiliser cet outil

Ouvrez Copilot Chat et décrivez le résultat d'affaires ou l'artéfact souhaité. Par exemple :

> « Rédige une épopée sous <identifiant d'initiative> pour <capacité d'affaires>. »

> « Mon épopée est-elle prête pour la découverte des fonctionnalités? »

Copilot crée les paires anglaise et française, consigne les hypothèses et questions ouvertes, vérifie les parties prenantes et les chevauchements de portée, et n'invente pas les faits à confirmer. Les détails figurent dans le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md).

## Commandes utiles

Utilisez ces raccourcis dans Copilot Chat pour les processus répétables :

| Commande | Ce qu'elle fait |
|---|---|
| `/validate <type> <ID>` | Vérifie l'initiative, l'épopée, la fonctionnalité, le récit ou le bilan de gestion du changement nommé et signale les lacunes précises. |
| `/decompose-initiative <ID>` | Propose un ensemble d'épopées sans chevauchement, actualise les mises à jour automatiquement et s'actualise de nouveau après votre confirmation avant la création des fichiers. |
| `/decompose-epic <ID>` | Propose des fonctionnalités pour une épopée et vérifie les chevauchements avant de créer les fichiers. |
| `/decompose-feature <ID>` | Propose des récits utilisateur pour une fonctionnalité et vérifie les chevauchements avant de créer les fichiers. |
| `/audit-pack` | Vérifie tout l'ensemble ou une initiative nommée et ses artéfacts descendants (`/audit-pack <identifiant d'initiative>`). |
| `/save-my-work` | Enregistre vos changements pour qu'ils soient bien conservés. Ne les envoie pas encore à votre collègue. |
| `/share-my-work` | Récupère d'abord les dernières mises à jour de votre collègue, puis envoie vos changements enregistrés. Vous avertit des problèmes de qualité d'abord, mais ne vous empêche pas de partager. |
| `/get-latest` | Récupère les derniers changements et vous dit ce qui est nouveau; la création d'épopée le fait automatiquement, mais vous pouvez aussi lancer la commande au besoin. |
| `/show-history <identifiant de document>` | Montre qui a modifié un document et quand; omettez l'identifiant pour consulter l'historique récent du projet. |
| `/undo-my-last-change` | Annule votre dernier changement en toute sécurité, en vous montrant toujours ce qui serait perdu avant de vous demander de confirmer. |

Remplacez les paramètres entre chevrons par les identifiants du projet courant.

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

- `initiative/` : futurs artéfacts d'initiative de portefeuille
- `epics/` : futurs artéfacts d'épopée
- `features/` : futurs artéfacts de fonctionnalité
- `stories/` : futurs artéfacts de récit utilisateur
- `change-management/` : futurs bilans de gestion du changement
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

Cet ensemble est un point de départ réutilisable, et non une norme organisationnelle approuvée. Établissez les références, cibles, dates, responsables et politiques propres au projet avec les parties prenantes appropriées; les exemples et espaces réservés des gabarits ne sont pas des décisions approuvées.

