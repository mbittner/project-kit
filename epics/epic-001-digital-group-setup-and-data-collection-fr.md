# EPIC-001 | Configuration numérique de groupe et collecte de données

*[Read this document in English](epic-001-digital-group-setup-and-data-collection.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilan de gestion du changement :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](../change-management/cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Résumé de l'épopée
Permettre aux promoteurs de régime de soumettre l'information complète de configuration de groupe grâce à une expérience numérique guidée.

**Valeur attendue :** Prise en charge plus rapide, exhaustivité améliorée, moins d'échanges manuels et validation plus précoce.

## 2. Problème / Opportunité
Le parcours d'intégration actuel comprend des échanges manuels, une information fragmentée, une validation tardive et une visibilité limitée sur le statut. Cette épopée traite la portion de ce problème décrite dans l'objectif ci-dessus.

## 3. Hypothèse de l'épopée
Nous croyons que le fait de permettre aux promoteurs de régime de soumettre l'information complète de configuration de groupe grâce à une expérience numérique guidée devrait contribuer à une prise en charge plus rapide, une exhaustivité améliorée, moins d'échanges manuels et une validation plus précoce. Cette hypothèse doit être testée par les ICP approuvés des fonctionnalités et les résultats de l'initiative.

## 4. Portée
### Dans la portée
- **Assistant de configuration de groupe en ligne :** Guider le promoteur à travers l'information sur l'entreprise, la division, la classe, la facturation et la soumission.
- **Téléversement de fichier de recensement :** Permettre le téléversement et la révision de données de recensement d'employés structurées.
- **Validation de données en temps réel :** Valider les champs obligatoires, les formats et les règles inter-champs avant la soumission.
- **Sauvegarder et reprendre :** Permettre à un utilisateur autorisé de sauvegarder sa progression et d'y revenir plus tard.
- **Révision de la soumission et attestation :** Présenter une révision consolidée et capturer la confirmation avant la soumission.
- **Confirmation de soumission et notifications :** Confirmer la réception et notifier les parties concernées de la prochaine étape.

### Hors de la portée
- Capacités attribuées à une autre épopée de l'INIT-001.
- Conception technique finale et sélection de fournisseurs.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 5. Fonctionnalités
| Fonctionnalité | Objectif |
|---|---|
| [FEAT-001 Assistant de configuration de groupe en ligne](../features/feat-001-online-group-setup-wizard-fr.md) | Guider le promoteur à travers l'information sur l'entreprise, la division, la classe, la facturation et la soumission. |
| [FEAT-002 Téléversement de fichier de recensement](../features/feat-002-census-file-upload-fr.md) | Permettre le téléversement et la révision de données de recensement d'employés structurées. |
| [FEAT-003 Validation de données en temps réel](../features/feat-003-real-time-data-validation-fr.md) | Valider les champs obligatoires, les formats et les règles inter-champs avant la soumission. |
| [FEAT-004 Sauvegarder et reprendre](../features/feat-004-save-and-resume-fr.md) | Permettre à un utilisateur autorisé de sauvegarder sa progression et d'y revenir plus tard. |
| [FEAT-005 Révision de la soumission et attestation](../features/feat-005-submission-review-and-attestation-fr.md) | Présenter une révision consolidée et capturer la confirmation avant la soumission. |
| [FEAT-006 Confirmation de soumission et notifications](../features/feat-006-submission-confirmation-and-notifications-fr.md) | Confirmer la réception et notifier les parties concernées de la prochaine étape. |

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
