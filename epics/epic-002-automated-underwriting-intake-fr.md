# EPIC-002 | Prise en charge automatisée en souscription

*[Read this document in English](epic-002-automated-underwriting-intake.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-002 Prise en charge automatisée en souscription](../change-management/cm-epic-002-automated-underwriting-intake-fr.md)

## 1. Résumé de l'épopée
Recueillir et acheminer l'information de souscription dans un formulaire structuré qui appuie une évaluation rapide.

**Valeur attendue :** Prise en charge en souscription plus complète, moins de suivis et une préparation à la décision plus claire.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait de recueillir et d'acheminer l'information de souscription dans un formulaire structuré qui appuie une évaluation rapide devrait contribuer à une prise en charge en souscription plus complète, moins de suivis et une préparation à la décision plus claire. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Questionnaire des exigences de souscription :** Recueillir l'information sur le risque et le régime au moyen de questions conditionnelles.
- **Validation de l'admissibilité et de l'exhaustivité :** Vérifier que les données requises pour la souscription sont présentes et cohérentes entre elles.
- **Suivi des références et décisions en souscription :** Acheminer les exceptions pour révision et enregistrer le statut et la justification de la décision.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-007 Questionnaire des exigences de souscription](../features/feat-007-underwriting-requirements-questionnaire-fr.md) | Recueillir l'information sur le risque et le régime au moyen de questions conditionnelles. |
| [FEAT-008 Validation de l'admissibilité et de l'exhaustivité](../features/feat-008-eligibility-and-completeness-validation-fr.md) | Vérifier que les données requises pour la souscription sont présentes et cohérentes entre elles. |
| [FEAT-009 Suivi des références et décisions en souscription](../features/feat-009-underwriting-referral-and-decision-tracking-fr.md) | Acheminer les exceptions pour révision et enregistrer le statut et la justification de la décision. |

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
