# EPIC-005 | Collaboration avec les courtiers externes

*[Read this document in English](epic-005-external-broker-collaboration.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-005 Collaboration avec les courtiers externes](../change-management/cm-epic-005-external-broker-collaboration-fr.md)

## 1. Résumé de l'épopée
Permettre aux courtiers autorisés de contribuer de l'information et de collaborer à l'intégration sans dépendre d'échanges de courriels non structurés.

**Valeur attendue :** Collaboration améliorée, moins de demandes en double et responsabilité plus claire entre le courtier et le promoteur.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait de permettre aux courtiers autorisés de contribuer de l'information et de collaborer à l'intégration sans dépendre d'échanges de courriels non structurés devrait contribuer à une collaboration améliorée, moins de demandes en double et une responsabilité plus claire entre le courtier et le promoteur. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Accès et délégation pour les courtiers :** Fournir un accès basé sur les rôles aux dossiers d'intégration assignés aux courtiers.
- **Demandes d'information partagées :** Permettre aux promoteurs et aux courtiers de répondre à des demandes assignées avec un responsable et un statut visibles.
- **Historique de collaboration et notifications :** Maintenir un registre des demandes et notifier les participants des changements pertinents.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-016 Accès et délégation pour les courtiers](../features/feat-016-broker-access-and-delegation-fr.md) | Fournir un accès basé sur les rôles aux dossiers d'intégration assignés aux courtiers. |
| [FEAT-017 Demandes d'information partagées](../features/feat-017-shared-information-requests-fr.md) | Permettre aux promoteurs et aux courtiers de répondre à des demandes assignées avec un responsable et un statut visibles. |
| [FEAT-018 Historique de collaboration et notifications](../features/feat-018-collaboration-history-and-notifications-fr.md) | Maintenir un registre des demandes et notifier les participants des changements pertinents. |

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
