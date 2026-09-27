# Ensemble de documents Markdown — Pratique moderne d'analyse d'affaires

*[Read this document in English](README.md)*

Cet espace de travail aide les gestionnaires et propriétaires de produit à rédiger, réviser et suivre des exigences d'affaires bilingues avec Copilot Chat. Il comprend des gabarits réutilisables, des processus guidés, des vérifications et des registres, sans exigences propres à un projet préchargées.
Consultez les exigences d'affaires dans la [Table des matières](table-of-content-fr.md). Les documents d'accompagnement se trouvent dans `docs/business/` et `docs/technical/`. Les suggestions d'amélioration de l'ensemble lui-même sont consignées séparément dans le [registre des idées d'amélioration des outils](docs/ideas/README.md), à l'extérieur de l'index des exigences.

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

Les règles des processus sont documentées séparément de l'interface Copilot et du stockage actuel, qui s'appuie sur GitHub. L'interface ou le stockage peut changer sans modifier les règles d'affaires ni les garanties offertes.

## Comment utiliser cet outil

Ouvrez Copilot Chat et décrivez le résultat d'affaires ou l'artéfact souhaité. Par exemple :

> « Rédige une épopée sous <identifiant d'initiative> pour <capacité d'affaires>. »

> « Mon épopée est-elle prête pour la découverte des fonctionnalités? »

Copilot crée les paires anglaise et française, consigne les hypothèses et questions ouvertes, vérifie les parties prenantes et les chevauchements de portée, et n'invente pas les faits à confirmer. Pour savoir quoi faire ensuite ou quand consulter une personne spécialiste, choisissez **Lifecycle Navigator**; il formule une recommandation en lecture seule fondée sur les éléments disponibles. Les détails figurent dans le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md).
Copilot crée les paires anglaise et française, consigne les hypothèses et questions ouvertes, vérifie les parties prenantes et les chevauchements de portée, et n'invente pas les faits à confirmer. Pour savoir quoi faire ensuite ou quand consulter une personne spécialiste, choisissez **Lifecycle Navigator**; il formule une recommandation en lecture seule fondée sur les éléments disponibles. Les détails figurent dans le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md).

Partagez dans la conversation vos idées pour améliorer le fonctionnement de Copilot ou les outils et processus qui l'appuient; Copilot les consigne dans le [registre numéroté des idées](docs/ideas/README.md) pour que vous n'ayez pas à les mémoriser.

## Pour les architectes de solutions

Le travail d'architecture côtoie les exigences d'affaires et y renvoie toujours. Il existe trois types de documents d'architecture, chacun rédigé en français et en anglais et répertorié dans l'[index de l'architecture](technical/README-fr.md) :

- **Évaluation d'architecture** : compare les options pour une décision et en recommande une.
- **Registre de décision d'architecture** : consigne une décision importante, ses raisons et ses coûts. Une décision acceptée n'est jamais réécrite; une nouvelle décision la remplace et l'historique est conservé.
- **Conception de solution** : explique, avec seulement le niveau de détail nécessaire, comment l'approche retenue sera construite, testée, déployée et soutenue.

Choisissez **Solution Architecture Writer** dans Copilot Chat pour les rédiger, ou **Solution Architecture Reviewer** pour un deuxième avis indépendant. Chaque document reçoit un score de qualité pour guider son amélioration, mais ce score ne le bloque jamais. Seul l'architecte de solutions accepte une décision ou approuve une conception. Copilot tient aussi à jour le [registre des systèmes](system-register-fr.md) et les liens depuis les épopées et fonctionnalités. Consultez le [Guide de l'architecte de solutions](docs/architecture/solution-architect-guide-fr.md).

## Commandes utiles

Utilisez ces raccourcis dans Copilot Chat pour les processus répétables :

| Commande | Ce qu'elle fait |
|---|---|
| `/validate <type> <ID>` | Vérifie l'initiative, l'épopée, la fonctionnalité, le récit, le bilan de gestion du changement, l'évaluation d'architecture, le registre de décision ou la conception de solution nommé et signale les lacunes précises. |
| `/decompose-initiative <ID>` | Propose un ensemble d'épopées sans chevauchement, actualise les mises à jour automatiquement et s'actualise de nouveau après votre confirmation avant la création des fichiers. |
| `/decompose-epic <ID>` | Propose des fonctionnalités pour une épopée et vérifie les chevauchements avant de créer les fichiers. |
| `/decompose-feature <ID>` | Propose des récits utilisateur pour une fonctionnalité et vérifie les chevauchements avant de créer les fichiers. |
| `/audit-pack` | Vérifie tout l'ensemble ou une initiative nommée et ses artéfacts descendants (`/audit-pack <identifiant d'initiative>`), y compris les épopées et fonctionnalités qui pourraient exiger un travail d'architecture. |
| `/screen-architecture <type> <ID>` | Indique si une initiative, une épopée ou une fonctionnalité exige un architecte de solutions et, le cas échéant, la plus petite prochaine étape utile. Ne modifie rien. |
| `/record-decision <identifiant d'évaluation>` | Transforme une comparaison d'options terminée en décision d'architecture proposée, après vérification par rapport aux décisions antérieures. Demande votre accord avant de créer les fichiers. |
| `/supersede-decision <identifiant de décision>` | Remplace une décision d'architecture acceptée par une nouvelle, tout en conservant l'originale pour mémoire, et liste les conceptions à revoir. |
| `/design-solution <identifiant de fonctionnalité>` | Propose une conception de solution de taille appropriée pour une fonctionnalité et la crée dans les deux langues après votre confirmation. |
| `/save-my-work` | Actualise la documentation d'affaires ou technique pertinente, crée une note de version horodatée, puis consigne vos changements localement. |
| `/share-my-work` | Récupère les dernières mises à jour, résout les conflits, actualise la documentation, exécute les vérifications, puis publie dans l'espace partagé après votre confirmation et vérifie le résultat. |
| `/get-latest` | Récupère les derniers changements et vous dit ce qui est nouveau; la création d'épopée le fait automatiquement, mais vous pouvez aussi lancer la commande au besoin. |
| `/show-history <identifiant de document>` | Montre qui a modifié un document et quand; omettez l'identifiant pour consulter l'historique récent du projet. |
| `/undo-my-last-change` | Annule votre dernier changement en toute sécurité, en vous montrant toujours ce qui serait perdu avant de vous demander de confirmer. |

Remplacez les paramètres entre chevrons par les identifiants du projet courant.

## Documentation complémentaire
- [Aide-mémoire pour les gens d'affaires](docs/business/business-user-cheat-sheet-fr.md) et [version anglaise](docs/business/business-user-cheat-sheet.md)

- [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) et [version anglaise](docs/business/business-user-guide.md)
- [Architecture de la solution](docs/technical/solution-architecture.md)
- [Guide de l'architecte de solutions](docs/architecture/solution-architect-guide-fr.md) et [version anglaise](docs/architecture/solution-architect-guide.md)
- [Registre des systèmes](system-register-fr.md) et [version anglaise](system-register.md)
- [Comportement et garanties des processus](docs/technical/tool-capability-contracts.md)
- [Enregistrement et partage du travail](docs/technical/version-control-adapter.md)
- [Utilisation des processus dans Copilot](docs/technical/copilot-interface.md)
- [Notes de version les plus récentes](docs/technical/release-notes/2026-09-27-161924Z-solution-architect-toolkit.md)
- [Politique d'horodatage des notes de version](docs/technical/release-notes/2026-09-27-065859Z-release-note-timestamps.md)

## Statut du document : Ébauche → En révision → Approuvé

Les documents passent de l'**Ébauche** à **En révision**, puis à **Approuvé**. Utilisez `/validate <type> <id>` pour obtenir le score de préparation, l'état de la liste de contrôle et la décision de statut. L'approbation exige le seuil de qualité du type d'artéfact, une liste de contrôle complète et aucune question critique non résolue.

## Versionnement et état de la documentation

Le champ `Version du document` indique la base approuvée; il ne change pas à chaque modification. `/validate` peut proposer une version et attendre votre confirmation. Le [Registre de l'état de la documentation](documentation-register-fr.md) résume l'état des documents, le travail actif et les bases approuvées.

## Enregistrer et partager votre travail

Utilisez `/save-my-work` ou `/share-my-work` pour que Copilot classe les changements, actualise la documentation d'affaires et technique pertinente, crée une note de version horodatée et inclue ces mises à jour dans le résumé du travail consigné. Le partage récupère aussi les changements des collègues, résout les conflits et exécute les vérifications; après votre confirmation, il publie les changements prévus et en vérifie la réussite. En cas d'échec, le travail local est conservé et le problème est signalé. `/get-latest`, `/show-history` et `/undo-my-last-change` restent disponibles au besoin. Le [Guide d'utilisation pour les gens d'affaires](docs/business/business-user-guide-fr.md) explique ces processus.

## Qui est impliqué

Consultez le [Registre des parties prenantes](stakeholder-register-fr.md) pour les rôles de gouvernance, les groupes touchés, leurs représentants et leur exposition au changement.

## Structure des dossiers

- `initiative/` : futurs artéfacts d'initiative de portefeuille
- `epics/` : futurs artéfacts d'épopée
- `features/` : futurs artéfacts de fonctionnalité
- `stories/` : futurs artéfacts de récit utilisateur
- `change-management/` : futurs bilans de gestion du changement
- `docs/business/` : guides pratiques pour les gens d'affaires
- `docs/architecture/` : guide pratique pour les architectes de solutions
- `docs/technical/` : garanties de comportement, intégrations actuelles, architecture et notes de version
- [technical/](technical/README-fr.md) : évaluations d'architecture, registres de décision et conceptions de solution du projet
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

