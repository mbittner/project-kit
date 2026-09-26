# EPIC-004 | Gestion des flux de travail et des dossiers

*[Read this document in English](epic-004-workflow-and-case-management.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-004 Gestion des flux de travail et des dossiers](../change-management/cm-epic-004-workflow-and-case-management-fr.md)

## 1. Résumé de l'épopée
Coordonner les activités d'intégration, la responsabilité, les exceptions et les cibles de service entre les équipes.

**Valeur attendue :** Responsabilité plus claire, moins de dossiers bloqués et des transferts plus prévisibles.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait de coordonner les activités d'intégration, la responsabilité, les exceptions et les cibles de service entre les équipes devrait contribuer à une responsabilité plus claire, moins de dossiers bloqués et des transferts plus prévisibles. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Acheminement automatisé du travail :** Attribuer le travail selon les attributs du dossier, le rôle et les règles d'acheminement.
- **Suivi des tâches, jalons et ententes de service :** Suivre le travail requis, les échéances, les jalons et le statut des ententes de service.
- **Gestion des exceptions et des escalades :** Créer, acheminer et surveiller les exceptions qui nécessitent une intervention.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-013 Acheminement automatisé du travail](../features/feat-013-automated-work-routing-fr.md) | Attribuer le travail selon les attributs du dossier, le rôle et les règles d'acheminement. |
| [FEAT-014 Suivi des tâches, jalons et ententes de service](../features/feat-014-task,-milestone,-and-sla-tracking-fr.md) | Suivre le travail requis, les échéances, les jalons et le statut des ententes de service. |
| [FEAT-015 Gestion des exceptions et des escalades](../features/feat-015-exception-and-escalation-management-fr.md) | Créer, acheminer et surveiller les exceptions qui nécessitent une intervention. |

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
