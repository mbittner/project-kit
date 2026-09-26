# EPIC-006 | Analytique opérationnelle et tableau de bord des ICP

*[Read this document in English](epic-006-operational-analytics-and-kpi-dashboard.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-006 Analytique opérationnelle et tableau de bord des ICP](../change-management/cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md)

## 1. Résumé de l'épopée
Offrir une visibilité fiable sur l'avancement, les goulots d'étranglement, la qualité et les résultats de l'intégration.

**Valeur attendue :** Gestion fondée sur des données probantes, intervention plus précoce et réalisation transparente des bénéfices.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait d'offrir une visibilité fiable sur l'avancement, les goulots d'étranglement, la qualité et les résultats de l'intégration devrait contribuer à une gestion fondée sur des données probantes, une intervention plus précoce et une réalisation transparente des bénéfices. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Tableau de bord du statut d'intégration :** Afficher le statut au niveau du portefeuille et des dossiers, la responsabilité, les jalons et l'ancienneté.
- **Analyse des goulots d'étranglement et de l'ancienneté :** Repérer où les dossiers attendent, échouent la validation ou nécessitent des suivis répétés.
- **Rapports sur les résultats et les bénéfices :** Suivre les ICP de l'initiative et comparer les résultats réels aux cibles approuvées.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-019 Tableau de bord du statut d'intégration](../features/feat-019-onboarding-status-dashboard-fr.md) | Afficher le statut au niveau du portefeuille et des dossiers, la responsabilité, les jalons et l'ancienneté. |
| [FEAT-020 Analyse des goulots d'étranglement et de l'ancienneté](../features/feat-020-bottleneck-and-aging-analysis-fr.md) | Repérer où les dossiers attendent, échouent la validation ou nécessitent des suivis répétés. |
| [FEAT-021 Rapports sur les résultats et les bénéfices](../features/feat-021-outcome-and-benefits-reporting-fr.md) | Suivre les ICP de l'initiative et comparer les résultats réels aux cibles approuvées. |

## 6. Mesures de succès de l'épopée
- Contribution aux mesures de délai de cycle, d'exhaustivité, de traitement manuel, de reprise, de satisfaction et d'adoption de l'initiative parente.
- Les ICP au niveau des fonctionnalités sont définis dans chaque canevas de fonctionnalité.
- Les références, cibles, fréquences de mesure et responsables des données doivent être approuvés avant la mise en œuvre.

## 7. Parties prenantes
- Gestionnaire de produit et propriétaire de produit
- Analyste d'affaires et experts d'affaires concernés
- Architecture de solution, UX, données, sécurité, confidentialité, conformité, livraison et assurance qualité
- Équipes opérationnelles concernées et utilisateurs externes, le cas échéant

## 8. Dépendances
- Portée et priorités approuvées de l'initiative parente.
- Décisions inter-épopées relatives aux processus, données, identité, documents, notifications, flux de travail et rapports.
- Approbations de gouvernance et de contrôle requises.

## 9. Risques et hypothèses
- **Risque :** les règles d'affaires demeurent non résolues. **Réponse :** maintenir un journal de décisions avec échéances et responsables.
- **Risque :** les équipes de fonctionnalités optimisent localement. **Réponse :** réviser le parcours de bout en bout et les ICP partagés.
- **Hypothèse :** les rôles autorisés de promoteur, courtier et employé peuvent être définis; ceci nécessite une validation.

## 10. Critères de préparation
- [ ] Objectif et limites de l'épopée approuvés
- [ ] Fonctionnalités identifiées et liées
- [ ] Mesures de résultats et responsabilité de mesure convenues
- [ ] Dépendances inter-épopées attribuées
- [ ] Principaux risques d'affaires, architecturaux, de contrôle et de changement révisés
