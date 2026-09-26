# Sommaire de la gestion du changement

*[Read this document in English](README.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Objectif :** Point d'entrée unique dans la documentation de gestion du changement pour l'INIT-001. Utilisez cette page pour naviguer de l'initiative vers chaque bilan de changement au niveau de l'épopée, puis vers les bilans au niveau de la fonctionnalité.  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)

## Organisation de ce dossier
La documentation de gestion du changement reflète la structure épopée/fonctionnalité du reste de l'ensemble :

- **Sommaire exécutif** ([executive-summary-fr.md](executive-summary-fr.md)) — auditoire : commanditaire exécutif, comité de pilotage. Une synthèse d'une page, destinée à la direction, du changement à travers les six épopées : facteurs déterminants, parties prenantes touchées, principaux risques, demandes de préparation et mesures de succès.
- **Bilans de changement au niveau de l'épopée** (`cm-epic-XXX-*-fr.md`) — auditoire : commanditaire exécutif, direction d'affaires, gestionnaires des opérations. Couvre le facteur d'affaires déterminant, les groupes de parties prenantes touchés, le plan de communication, les besoins de formation, les risques de résistance, les critères de préparation et les mesures d'adoption pour une épopée entière.
- **Bilans de changement au niveau de la fonctionnalité** (`cm-feat-XXX-*-fr.md`) — auditoire : utilisateurs finaux, formateurs, superviseurs de première ligne. Couvre le parcours avant/après, les aides au travail, le soutien des champions locaux et les mesures d'adoption pour une seule fonctionnalité.
- **Gabarits** ([cm-epic-template-fr.md](../templates/cm-epic-template-fr.md), [cm-feature-template-fr.md](../templates/cm-feature-template-fr.md)) — points de départ vierges pour de nouveaux bilans, alignés sur la structure ci-dessus.

## Bilans de changement au niveau des épopées
| Épopée | Bilan de changement | Changement en une ligne |
|---|---|---|
| [EPIC-001 Configuration numérique de groupe et collecte de données](#features-epic-001) | [CM-EPIC-001](cm-epic-001-digital-group-setup-and-data-collection-fr.md) | Configuration de groupe et prise en charge du recensement manuelles/par courriel → assistant numérique guidé avec validation, sauvegarde/reprise et attestation |
| [EPIC-002 Prise en charge automatisée en souscription](#features-epic-002) | [CM-EPIC-002](cm-epic-002-automated-underwriting-intake-fr.md) | Soumissions de souscription en format libre → questionnaire structuré avec vérifications d'admissibilité automatisées et références suivies |
| [EPIC-003 Collecte de documents et signature électronique](#features-epic-003) | [CM-EPIC-003](cm-epic-003-document-collection-and-e-signature-fr.md) | Pièces jointes de documents par courriel → téléversement sécurisé par liste de contrôle, révision versionnée et signature électronique |
| [EPIC-004 Gestion des flux de travail et des dossiers](#features-epic-004) | [CM-EPIC-004](cm-epic-004-workflow-and-case-management-fr.md) | Transferts de travail informels → acheminement automatisé avec suivi des tâches/jalons/ententes de service et escalade formelle |
| [EPIC-005 Collaboration avec les courtiers externes](#features-epic-005) | [CM-EPIC-005](cm-epic-005-external-broker-collaboration-fr.md) | Échanges de courriel non structurés avec les courtiers → accès au portail basé sur les rôles avec demandes d'information partagées et suivies |
| [EPIC-006 Analytique opérationnelle et tableau de bord des ICP](#features-epic-006) | [CM-EPIC-006](cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md) | Reddition de compte manuelle et périodique → tableau de bord d'intégration en direct, analyse des goulots d'étranglement et tableau de bord des ICP |

## Bilans de changement au niveau des fonctionnalités (par épopée parente)
Chaque bilan d'épopée pointe vers ses bilans de fonctionnalité enfants. Les fonctionnalités sont regroupées ci-dessous sous l'épopée à laquelle elles appartiennent.

<a id="features-epic-001"></a>
### Sous [EPIC-001 Configuration numérique de groupe et collecte de données](../epics/epic-001-digital-group-setup-and-data-collection-fr.md) ([CM-EPIC-001](cm-epic-001-digital-group-setup-and-data-collection-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-001 Assistant de configuration de groupe en ligne | [canevas de fonctionnalité](../features/feat-001-online-group-setup-wizard-fr.md) | [CM-FEAT-001](cm-feat-001-online-group-setup-wizard-fr.md) |
| FEAT-002 Téléversement de fichier de recensement | [canevas de fonctionnalité](../features/feat-002-census-file-upload-fr.md) | [CM-FEAT-002](cm-feat-002-census-file-upload-fr.md) |
| FEAT-003 Validation de données en temps réel | [canevas de fonctionnalité](../features/feat-003-real-time-data-validation-fr.md) | [CM-FEAT-003](cm-feat-003-real-time-data-validation-fr.md) |
| FEAT-004 Sauvegarder et reprendre | [canevas de fonctionnalité](../features/feat-004-save-and-resume-fr.md) | [CM-FEAT-004](cm-feat-004-save-and-resume-fr.md) |
| FEAT-005 Révision de la soumission et attestation | [canevas de fonctionnalité](../features/feat-005-submission-review-and-attestation-fr.md) | [CM-FEAT-005](cm-feat-005-submission-review-and-attestation-fr.md) |
| FEAT-006 Confirmation de soumission et notifications | [canevas de fonctionnalité](../features/feat-006-submission-confirmation-and-notifications-fr.md) | [CM-FEAT-006](cm-feat-006-submission-confirmation-and-notifications-fr.md) |

<a id="features-epic-002"></a>
### Sous [EPIC-002 Prise en charge automatisée en souscription](../epics/epic-002-automated-underwriting-intake-fr.md) ([CM-EPIC-002](cm-epic-002-automated-underwriting-intake-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-007 Questionnaire des exigences de souscription | [canevas de fonctionnalité](../features/feat-007-underwriting-requirements-questionnaire-fr.md) | [CM-FEAT-007](cm-feat-007-underwriting-requirements-questionnaire-fr.md) |
| FEAT-008 Validation de l'admissibilité et de l'exhaustivité | [canevas de fonctionnalité](../features/feat-008-eligibility-and-completeness-validation-fr.md) | [CM-FEAT-008](cm-feat-008-eligibility-and-completeness-validation-fr.md) |
| FEAT-009 Suivi des références et décisions en souscription | [canevas de fonctionnalité](../features/feat-009-underwriting-referral-and-decision-tracking-fr.md) | [CM-FEAT-009](cm-feat-009-underwriting-referral-and-decision-tracking-fr.md) |

<a id="features-epic-003"></a>
### Sous [EPIC-003 Collecte de documents et signature électronique](../epics/epic-003-document-collection-and-e-signature-fr.md) ([CM-EPIC-003](cm-epic-003-document-collection-and-e-signature-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-010 Liste de contrôle des documents et téléversement sécurisé | [canevas de fonctionnalité](../features/feat-010-document-checklist-and-secure-upload-fr.md) | [CM-FEAT-010](cm-feat-010-document-checklist-and-secure-upload-fr.md) |
| FEAT-011 Révision des documents et statut des versions | [canevas de fonctionnalité](../features/feat-011-document-review-and-version-status-fr.md) | [CM-FEAT-011](cm-feat-011-document-review-and-version-status-fr.md) |
| FEAT-012 Flux de signature électronique | [canevas de fonctionnalité](../features/feat-012-electronic-signature-workflow-fr.md) | [CM-FEAT-012](cm-feat-012-electronic-signature-workflow-fr.md) |

<a id="features-epic-004"></a>
### Sous [EPIC-004 Gestion des flux de travail et des dossiers](../epics/epic-004-workflow-and-case-management-fr.md) ([CM-EPIC-004](cm-epic-004-workflow-and-case-management-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-013 Acheminement automatisé du travail | [canevas de fonctionnalité](../features/feat-013-automated-work-routing-fr.md) | [CM-FEAT-013](cm-feat-013-automated-work-routing-fr.md) |
| FEAT-014 Suivi des tâches, jalons et ententes de service | [canevas de fonctionnalité](../features/feat-014-task,-milestone,-and-sla-tracking-fr.md) | [CM-FEAT-014](cm-feat-014-task,-milestone,-and-sla-tracking-fr.md) |
| FEAT-015 Gestion des exceptions et des escalades | [canevas de fonctionnalité](../features/feat-015-exception-and-escalation-management-fr.md) | [CM-FEAT-015](cm-feat-015-exception-and-escalation-management-fr.md) |

<a id="features-epic-005"></a>
### Sous [EPIC-005 Collaboration avec les courtiers externes](../epics/epic-005-external-broker-collaboration-fr.md) ([CM-EPIC-005](cm-epic-005-external-broker-collaboration-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-016 Accès et délégation pour les courtiers | [canevas de fonctionnalité](../features/feat-016-broker-access-and-delegation-fr.md) | [CM-FEAT-016](cm-feat-016-broker-access-and-delegation-fr.md) |
| FEAT-017 Demandes d'information partagées | [canevas de fonctionnalité](../features/feat-017-shared-information-requests-fr.md) | [CM-FEAT-017](cm-feat-017-shared-information-requests-fr.md) |
| FEAT-018 Historique de collaboration et notifications | [canevas de fonctionnalité](../features/feat-018-collaboration-history-and-notifications-fr.md) | [CM-FEAT-018](cm-feat-018-collaboration-history-and-notifications-fr.md) |

<a id="features-epic-006"></a>
### Sous [EPIC-006 Analytique opérationnelle et tableau de bord des ICP](../epics/epic-006-operational-analytics-and-kpi-dashboard-fr.md) ([CM-EPIC-006](cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md))
| Fonctionnalité | Canevas de fonctionnalité | Bilan de changement |
|---|---|---|
| FEAT-019 Tableau de bord du statut d'intégration | [canevas de fonctionnalité](../features/feat-019-onboarding-status-dashboard-fr.md) | [CM-FEAT-019](cm-feat-019-onboarding-status-dashboard-fr.md) |
| FEAT-020 Analyse des goulots d'étranglement et de l'ancienneté | [canevas de fonctionnalité](../features/feat-020-bottleneck-and-aging-analysis-fr.md) | [CM-FEAT-020](cm-feat-020-bottleneck-and-aging-analysis-fr.md) |
| FEAT-021 Rapports sur les résultats et les bénéfices | [canevas de fonctionnalité](../features/feat-021-outcome-and-benefits-reporting-fr.md) | [CM-FEAT-021](cm-feat-021-outcome-and-benefits-reporting-fr.md) |

## Ordre de lecture suggéré
1. Commencer par l'[initiative parente](../initiative/init-001-modernize-new-business-onboarding-fr.md) pour le contexte global et les mesures de succès.
2. Lire le bilan de changement au niveau de l'épopée pour le secteur dont vous êtes responsable (tableau ci-dessus).
3. Suivre ses liens vers les bilans de changement au niveau des fonctionnalités pertinentes pour le détail de formation et d'adoption destiné aux utilisateurs.
4. Utiliser les gabarits ([cm-epic-template-fr.md](../templates/cm-epic-template-fr.md), [cm-feature-template-fr.md](../templates/cm-feature-template-fr.md)) pour rédiger tout bilan manquant, en conservant la même structure de sections pour la cohérence de l'ensemble.

## Traçabilité
`Mesures de succès de l'initiative → Bilan de changement de l'épopée (mesure de l'adoption/des bénéfices) → Bilan de changement de la fonctionnalité (mesures d'adoption) → Exécution de la communication/formation → Preuve d'adoption`
