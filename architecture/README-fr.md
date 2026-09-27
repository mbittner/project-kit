# Index de la documentation d'architecture

*[Read this document in English](README.md)*

Ce dossier regroupe le travail d'architecture du projet : évaluations, registres de décisions d'architecture (ADR) et conceptions de solution. Les exigences d'affaires restent la source de vérité pour les résultats, les utilisateurs et la portée; chaque document de ce dossier renvoie à au moins une initiative, une épopée ou une fonctionnalité. Les systèmes sont cités par leur identifiant du [registre des systèmes](../system-register-fr.md).

## Organisation du dossier

| Dossier | Artéfact | Identifiant | Gabarit |
|---|---|---|---|
| `assessments/` | Évaluation d'architecture — compare les options pour une question de décision | `ARCH-XXX` | [FR](../templates/arch-assessment-template-fr.md) / [EN](../templates/arch-assessment-template.md) |
| `decisions/` | Registre de décision d'architecture — consigne une décision importante | `ADR-XXX` | [FR](../templates/adr-template-fr.md) / [EN](../templates/adr-template.md) |
| `designs/` | Conception de solution — juste assez de conception pour construire, tester, déployer et exploiter | `SD-XXX` | [FR](../templates/solution-design-template-fr.md) / [EN](../templates/solution-design-template.md) |

Chaque document est livré en paire française et anglaise. Les conceptions de solution figurent aussi dans le [registre de l'état de la documentation](../documentation-register-fr.md) avec leur version de base approuvée.

## Évaluations

Aucune évaluation consignée pour l'instant.

| Identifiant | Titre | Statut | Artéfacts d'affaires liés | Décision résultante |
|---|---|---|---|---|

## Journal des décisions

Aucune décision consignée pour l'instant.

| Identifiant | Titre | Statut | Date de la décision | Remplace | Remplacée par |
|---|---|---|---|---|---|

## Conceptions de solution

Aucune conception de solution consignée pour l'instant.

| Identifiant | Titre | Statut | Version | Décisions applicables |
|---|---|---|---|---|

## Tenir cet index à jour

- Ajouter une ligne chaque fois qu'une évaluation, un ADR ou une conception est créé, et mettre son statut à jour lorsqu'il change. Garder l'index anglais aligné.
- Ne jamais supprimer ni renuméroter une entrée. Les éléments remplacés, obsolètes, rejetés et clôturés restent listés pour la traçabilité.
- Un ADR Accepté n'est modifié qu'en le remplaçant par un nouvel ADR; les deux lignes indiquent alors la relation.
