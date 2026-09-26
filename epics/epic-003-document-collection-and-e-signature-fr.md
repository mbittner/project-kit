# EPIC-003 | Collecte de documents et signature électronique

*[Read this document in English](epic-003-document-collection-and-e-signature.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-003 Collecte de documents et signature électronique](../change-management/cm-epic-003-document-collection-and-e-signature-fr.md)

## 1. Résumé de l'épopée
Offrir un processus numérique contrôlé pour demander, recevoir, signer et suivre les documents d'intégration.

**Valeur attendue :** Moins de pièces jointes par courriel, une meilleure exhaustivité des documents et une auditabilité améliorée.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait d'offrir un processus numérique contrôlé pour demander, recevoir, signer et suivre les documents d'intégration devrait contribuer à moins de pièces jointes par courriel, une meilleure exhaustivité des documents et une auditabilité améliorée. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Liste de contrôle des documents et téléversement sécurisé :** Afficher les documents requis et prendre en charge une soumission sécurisée.
- **Révision des documents et statut des versions :** Permettre aux réviseurs autorisés de classer les documents comme reçus, acceptés ou nécessitant une correction.
- **Flux de signature électronique :** Envoyer les documents admissibles pour signature et suivre le statut d'achèvement.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-010 Liste de contrôle des documents et téléversement sécurisé](../features/feat-010-document-checklist-and-secure-upload-fr.md) | Afficher les documents requis et prendre en charge une soumission sécurisée. |
| [FEAT-011 Révision des documents et statut des versions](../features/feat-011-document-review-and-version-status-fr.md) | Permettre aux réviseurs autorisés de classer les documents comme reçus, acceptés ou nécessitant une correction. |
| [FEAT-012 Flux de signature électronique](../features/feat-012-electronic-signature-workflow-fr.md) | Envoyer les documents admissibles pour signature et suivre le statut d'achèvement. |

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
