# Guide de l'architecte de solutions

*[Read this guide in English](solution-architect-guide.md)*

## Objectif

Ce guide s'adresse aux architectes de solutions qui travaillent dans cet ensemble. Il explique quand intervenir, quel document d'architecture utiliser, comment travailler avec le propriétaire de produit et l'analyste d'affaires, et quelles décisions vous reviennent. Les règles suivies par Copilot sont définies dans les fichiers d'orientation liés ci-dessous; ce guide ne les répète pas.

Les exigences d'affaires (initiative → épopée → fonctionnalité → récit utilisateur) restent la source de vérité pour le problème, les utilisateurs, les résultats et la portée. Les documents d'architecture expliquent comment la solution retenue les appuie et y renvoient toujours.

## Comment l'aide est organisée

| Aide | À quoi elle sert |
|---|---|
| **Solution Architecture Writer** | Rédiger, mettre à jour et remplacer les évaluations, registres de décision et conceptions dans [architecture/](../../architecture/README-fr.md) |
| **Solution Architecture Reviewer** | Fournir une critique indépendante en lecture seule d'un document d'architecture |
| **Lifecycle Navigator** | Conseiller en lecture seule la prochaine étape, y compris si votre intervention est nécessaire |
| **BA Requirements Writer** / **BA Requirements Reviewer** | Clarifier ou réviser l'artéfact d'affaires dont dépend votre travail |

Copilot garde chaque document en français et en anglais, tient à jour l'[index de l'architecture](../../architecture/README-fr.md), ajoute les liens `Références d'architecture` à l'épopée ou la fonctionnalité concernée et rapproche chaque système nommé du [registre des systèmes](../../system-register-fr.md).

## Quand intervenir

Intervenez lorsqu'une décision comporte une incertitude d'architecture importante ou un risque transversal : nouvelles intégrations, propriété ou migration des données, impact sur la sécurité ou la confidentialité, besoins non fonctionnels importants, choix de fournisseur ou achat/développement, écart par rapport aux normes, ou décision difficile à renverser. La revue d'architecture n'est pas une étape obligatoire pour chaque fonctionnalité.

Lancez `/screen-architecture <type> <ID>` pour appliquer ces déclencheurs de façon uniforme. La commande indique si un travail d'architecture est nécessaire, si une décision ou une conception existante le couvre déjà et quelle est la plus petite prochaine étape utile. La liste complète des déclencheurs figure dans [architecture-screening](../../.github/skills/architecture-screening/SKILL.md).

## Les documents d'architecture en bref

| Document | Quand l'utiliser | Cycle de vie | Orientation |
|---|---|---|---|
| **Évaluation d'architecture** (`ARCH-XXX`) | Deux options plausibles ou plus doivent être comparées | Ébauche → En révision → Recommandée → Clôturée | [Orientation – évaluation](../../.github/skills/architecture-assessment-documentation/SKILL.md) |
| **Registre de décision d'architecture** (`ADR-XXX`) | Une décision importante doit être consignée | Proposée → Acceptée / Rejetée → Remplacée / Obsolète | [Orientation – ADR](../../.github/skills/adr-documentation/SKILL.md) |
| **Conception de solution** (`SD-XXX`) | La livraison a besoin d'une conception commune pour construire, tester, déployer et exploiter | Ébauche → En révision → Approuvé, avec versions de base | [Orientation – conception](../../.github/skills/solution-design-documentation/SKILL.md) |

Chaque document reçoit un score de qualité avec `/validate assessment|adr|design <ID>`. Le score indique où s'améliorer; il ne bloque jamais un changement de statut. La barrière de statut exige une liste de vérification complète, aucun marqueur de clarification non résolu et aucune question ouverte.

## Exemple : de la fonctionnalité à la conception

Le [Guide d'utilisation pour les architectes](architect-user-guide-fr.md) déroule étape par étape un exemple illustratif de fonctionnalité : triage, évaluation, inscription des systèmes, décision, conception, approbation de la base et remplacement ultérieur de la décision. Il décrit ce que Copilot vérifie à chaque étape et ce que vous y gagnez.

## Relier la conception à la livraison

- Aidez le propriétaire de produit et l'analyste d'affaires à décomposer la fonctionnalité en récits (`/decompose-feature <ID>`). Rattachez le travail de livraison à la conception seulement lorsque cela aide la réalisation ou les tests.
- Faites appel aux développeurs, à l'assurance qualité, à l'expérience utilisateur, à la sécurité, aux données, à l'exploitation et à la gestion du changement lorsque leur expertise est pertinente.
- Avant la mise en production, confirmez les preuves des exigences touchant l'architecture : tests, plans de déploiement et de retour arrière, surveillance, responsabilité du soutien et préparation opérationnelle.
- Après la mise en production, examinez les mesures de résultats avec les rôles produit. Servez-vous des données de production pour revoir les hypothèses; consignez les décisions modifiées en les remplaçant.

## Ce qui demande toujours votre jugement

Copilot structure, compare, vérifie et signale. Il ne décide pas.

- **Vous seul** acceptez une décision, recommandez une évaluation ou approuvez une conception, et seulement après l'avoir confirmé explicitement.
- **Vous fournissez les faits** que Copilot ne doit pas deviner : responsables des systèmes, noms et ID CMCD, coûts, volumes, niveaux de service, conditions des fournisseurs et dates. Les références Hopex sont facultatives, et l'ensemble n'a aucune connexion à Hopex. Les valeurs manquantes sont consignées « À confirmer » avec une question ouverte et ne bloquent pas votre travail.
- **Vous jugez de la proportionnalité.** Conclure qu'aucun document n'est nécessaire est un résultat valable.
- **La portée relève du propriétaire de produit.** Signalez les écarts; ne redéfinissez pas la fonctionnalité dans une conception.

## Commandes utiles

| Besoin | Commande ou assistant |
|---|---|
| Décider s'il faut intervenir | `/screen-architecture <type> <ID>` ou **Lifecycle Navigator** |
| Comparer des options | **Solution Architecture Writer**, puis `/validate assessment <ID>` |
| Consigner une décision | `/record-decision <ID d'évaluation>`, ou le Writer si aucune évaluation n'est nécessaire; puis `/validate adr <ID>` |
| Modifier une décision acceptée | `/supersede-decision <ID d'ADR>` |
| Documenter la solution | `/design-solution <ID de fonctionnalité>`, puis `/validate design <ID>` |
| Obtenir un deuxième avis | **Solution Architecture Reviewer** |
| Vérifier tout le portefeuille | `/audit-pack`, qui comprend une section sur la couverture d'architecture |
| Enregistrer, partager ou consulter l'historique | `/save-my-work`, `/share-my-work`, `/show-history` |

Voir aussi la carte des composants dans [Architecture de la solution](../technical/solution-architecture.md) (anglais) et les [contrats de capacité des outils](../technical/tool-capability-contracts.md#architecture-decisions) (anglais).
