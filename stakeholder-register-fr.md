# Registre des parties prenantes

*[Stakeholder register in English](stakeholder-register.md)*

Ce registre est la source unique de vérité pour savoir qui est impliqué dans le travail de cet ensemble — afin que chaque initiative, épopée, fonctionnalité, récit utilisateur et bilan de gestion du changement puisse *référencer* une partie prenante au lieu de la redéfinir à chaque fois. Voir la compétence [stakeholder-register-validation](.github/skills/stakeholder-register-validation/SKILL.md) pour savoir comment les documents restent synchronisés avec ce fichier.

Deux types d'entrées, par conception :
- **Rôles de gouvernance et de livraison** — des personnes nommées (commanditaire, gestionnaire de produit, propriétaire de produit, architecte, etc.) responsables des décisions et de la livraison.
- **Groupes de parties prenantes touchés** — les équipes/rôles *touchés par* le changement, suivis par groupe ou rôle, pas par nom individuel.

## Rôles de gouvernance et de livraison

| Rôle | Nom | Portée | Notes |
|---|---|---|---|
| Commanditaire exécutif | À confirmer | INIT-001 | Responsable du résultat stratégique, des décisions d'investissement et d'escalade |
| Responsable d'affaires | À confirmer | INIT-001 | Responsable des priorités d'affaires, des décisions de politique et de la valeur opérationnelle réalisée |
| Gestionnaire de produit | À confirmer | INIT-001 (toutes les épopées) | Détient la proposition de valeur, la feuille de route et le cadre d'ICP à travers les épopées |
| Propriétaire de produit | À confirmer | INIT-001 (toutes les épopées/fonctionnalités) | Détient le séquencement des fonctionnalités, la priorisation du carnet et les décisions d'acceptation |
| Analyste d'affaires | À confirmer | INIT-001 (toutes les épopées/fonctionnalités) | Détient la découverte, la qualité des exigences et la traçabilité |
| Architecte de solution | À confirmer | INIT-001 | Détient l'architecture, l'intégration et les contraintes techniques |
| Responsable UX / conception de service | À confirmer | INIT-001 | Détient la conception du parcours, de l'interaction et de l'accessibilité |
| Responsable données / sécurité / confidentialité / conformité | À confirmer | INIT-001 | Détient les contrôles de domaine et les approbations requises |
| Responsable livraison / assurance qualité | À confirmer | INIT-001 | Détient la construction, la qualité technique et la préparation à la mise en production |

## Groupes de parties prenantes touchés

| Groupe | Niveau d'impact global |
|---|---|
| [Administrateur de promoteur de régime](#plan-sponsor-administrator) | Élevé |
| [Administrateur de nouvelles affaires](#new-business-administrator) | Moyen-élevé |
| [Souscripteur](#underwriter) | Élevé |
| [Représentant de courtier](#broker-representative) | Moyen-élevé |
| [Réviseur de documents](#document-reviewer) | Élevé |
| [Gestionnaire des opérations](#operations-manager) | Élevé |
| [Spécialiste assigné](#assigned-specialist) | Moyen |
| [Utilisateur des opérations de nouvelles affaires](#new-business-operations-user) | Moyen |
| [Dirigeant d'affaires](#business-leader) | Moyen |
| [Analyste d'affaires (rapports)](#business-analyst-reporting) | Faible |

## Détails des groupes

<a id="plan-sponsor-administrator"></a>
### Administrateur de promoteur de régime
**Description :** Soumet et gère l'information de nouveau groupe et de souscription au nom de l'organisation promotrice.

**Impliqué dans :**
- [CM-EPIC-001 : Configuration numérique du groupe et collecte de données](change-management/cm-epic-001-digital-group-setup-and-data-collection-fr.md) — Élevé
- [CM-EPIC-002 : Collecte automatisée des données de souscription](change-management/cm-epic-002-automated-underwriting-intake-fr.md) — Moyen
- [CM-EPIC-003 : Collecte de documents et signature électronique](change-management/cm-epic-003-document-collection-and-e-signature-fr.md) — Élevé
- [CM-EPIC-005 : Collaboration avec les courtiers externes](change-management/cm-epic-005-external-broker-collaboration-fr.md) — Moyen

**Préparation au changement :** Passe de formulaires/courriels/feuilles de calcul manuels à une expérience numérique guidée dans presque toutes les épopées — exposition cumulative la plus élevée du portefeuille.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="new-business-administrator"></a>
### Administrateur de nouvelles affaires
**Description :** Équipe interne qui saisit, réconcilie et effectue le suivi des soumissions de nouveaux groupes.

**Impliqué dans :**
- [CM-EPIC-001 : Configuration numérique du groupe et collecte de données](change-management/cm-epic-001-digital-group-setup-and-data-collection-fr.md) — Élevé
- [CM-EPIC-002 : Collecte automatisée des données de souscription](change-management/cm-epic-002-automated-underwriting-intake-fr.md) — Moyen
- [CM-EPIC-004 : Gestion des flux de travail et des dossiers](change-management/cm-epic-004-workflow-and-case-management-fr.md) — Moyen

**Préparation au changement :** Passe de la saisie manuelle/du suivi à la gestion des exceptions et à la révision.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="underwriter"></a>
### Souscripteur
**Description :** Évalue le risque et l'information de régime pour les nouveaux groupes.

**Impliqué dans :**
- [CM-EPIC-002 : Collecte automatisée des données de souscription](change-management/cm-epic-002-automated-underwriting-intake-fr.md) — Élevé

**Préparation au changement :** Passe d'une révision libre/d'un suivi informel à des soumissions structurées et validées et à une file de référence formelle.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="broker-representative"></a>
### Représentant de courtier
**Description :** Partenaire externe qui soumet de l'information et collabore avec le promoteur.

**Impliqué dans :**
- [CM-EPIC-003 : Collecte de documents et signature électronique](change-management/cm-epic-003-document-collection-and-e-signature-fr.md) — Moyen
- [CM-EPIC-005 : Collaboration avec les courtiers externes](change-management/cm-epic-005-external-broker-collaboration-fr.md) — Élevé

**Préparation au changement :** Obtient un accès formel et basé sur les rôles au portail, remplaçant la collaboration informelle par courriel/téléphone.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="document-reviewer"></a>
### Réviseur de documents
**Description :** Équipe interne qui révise et classe les documents soumis.

**Impliqué dans :**
- [CM-EPIC-003 : Collecte de documents et signature électronique](change-management/cm-epic-003-document-collection-and-e-signature-fr.md) — Élevé

**Préparation au changement :** Passe du suivi par courriel/feuille de calcul à une classification complète avec historique des versions.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="operations-manager"></a>
### Gestionnaire des opérations
**Description :** Gère l'attribution des dossiers, les escalades et la performance au niveau du portefeuille.

**Impliqué dans :**
- [CM-EPIC-004 : Gestion des flux de travail et des dossiers](change-management/cm-epic-004-workflow-and-case-management-fr.md) — Élevé
- [CM-EPIC-006 : Analytique opérationnelle et tableau de bord des ICP](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md) — Élevé

**Préparation au changement :** Passe d'une gestion réactive et manuelle du statut à une gestion proactive basée sur un tableau de bord.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="assigned-specialist"></a>
### Spécialiste assigné
**Description :** Personnel de première ligne qui travaille sur les dossiers d'intégration assignés.

**Impliqué dans :**
- [CM-EPIC-004 : Gestion des flux de travail et des dossiers](change-management/cm-epic-004-workflow-and-case-management-fr.md) — Moyen

**Préparation au changement :** Passe de transferts informels/listes personnelles à une file acheminée avec visibilité des ententes de service.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="new-business-operations-user"></a>
### Utilisateur des opérations de nouvelles affaires
**Description :** Équipe interne qui relaie l'information entre le courtier et le promoteur.

**Impliqué dans :**
- [CM-EPIC-005 : Collaboration avec les courtiers externes](change-management/cm-epic-005-external-broker-collaboration-fr.md) — Moyen

**Préparation au changement :** Passe du relais manuel à la surveillance directe de l'historique de collaboration et des notifications.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="business-leader"></a>
### Dirigeant d'affaires
**Description :** Consomme les rapports de statut et de résultats au niveau du portefeuille.

**Impliqué dans :**
- [CM-EPIC-006 : Analytique opérationnelle et tableau de bord des ICP](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md) — Moyen

**Préparation au changement :** Passe de mises à jour ad hoc compilées manuellement à un tableau de bord en direct.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

---

<a id="business-analyst-reporting"></a>
### Analyste d'affaires (rapports)
**Description :** Équipe interne qui réconcilie les données pour les rapports.

**Impliqué dans :**
- [CM-EPIC-006 : Analytique opérationnelle et tableau de bord des ICP](change-management/cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md) — Faible

**Préparation au changement :** S'appuie sur une source de rapports cohérente et partagée plutôt que sur une réconciliation manuelle.

**Gestionnaire :** À confirmer
**Expert en la matière (SME) :** À confirmer

**Questions ouvertes :**
- Qui est le gestionnaire représentant ce groupe?
- Qui est l'expert en la matière (SME) représentant ce groupe?

*Note sur la couverture : le sommaire et les profils ci-dessus proviennent des six bilans de gestion du changement au niveau des épopées et du sommaire exécutif du portefeuille. Les liens au niveau des fonctionnalités (`CM-FEAT-XXX`) et des récits seront ajoutés progressivement à mesure que la compétence [stakeholder-register-validation](.github/skills/stakeholder-register-validation/SKILL.md) s'exécute sur chaque nouvel artéfact ou artéfact modifié — traitez ce registre comme un document vivant, pas un instantané ponctuel.*
