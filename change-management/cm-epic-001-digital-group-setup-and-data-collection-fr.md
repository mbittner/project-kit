# CM-EPIC-001 | Bilan de gestion du changement : Configuration numérique de groupe et collecte de données

*[Read this document in English](cm-epic-001-digital-group-setup-and-data-collection.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-001 Configuration numérique de groupe et collecte de données](../epics/epic-001-digital-group-setup-and-data-collection-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-001](cm-feat-001-online-group-setup-wizard-fr.md) · [CM-FEAT-002](cm-feat-002-census-file-upload-fr.md) · [CM-FEAT-003](cm-feat-003-real-time-data-validation-fr.md) · [CM-FEAT-004](cm-feat-004-save-and-resume-fr.md) · [CM-FEAT-005](cm-feat-005-submission-review-and-attestation-fr.md) · [CM-FEAT-006](cm-feat-006-submission-confirmation-and-notifications-fr.md)

## 1. Sommaire du changement
Les promoteurs de régime passent d'une configuration de groupe et d'une soumission de recensement manuelles, basées sur le courriel et les feuilles de calcul, à un assistant numérique guidé et libre-service avec validation en temps réel, sauvegarde/reprise, et une étape d'attestation consolidée. Les administrateurs des nouvelles affaires passent de la relance de soumissions incomplètes ou incohérentes à la révision d'une prise en charge structurée et pré-validée.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Échanges manuels, information fragmentée, validation tardive et visibilité limitée du statut dans le parcours d'intégration actuel.
- **Valeur attendue :** Prise en charge plus rapide, exhaustivité améliorée, moins d'échanges manuels et validation plus précoce.
- **Ce qui se produit si nous n'agissons pas :** Les délais et les reprises d'intégration persistent, les promoteurs continuent de vivre un processus de prise en charge incohérent, et les équipes internes continuent d'absorber le coût de la relance d'information manquante ou incorrecte.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Soumet l'information sur l'entreprise, la division, la classe, la facturation et le recensement via des formulaires, feuilles de calcul et courriels | Complète un assistant numérique guidé, téléverse des fichiers de recensement, résout les erreurs de validation en temps réel et atteste avant la soumission | Élevé |
| Administrateur des nouvelles affaires | Saisit, réconcilie et relance manuellement les soumissions incomplètes ou incohérentes | Révise des soumissions structurées et pré-validées et gère le plus petit ensemble d'exceptions réelles | Élevé |
| Propriétaire de produit / Gestionnaire de produit | Gère les exigences et priorités de façon informelle | Possède un carnet piloté par les ICP couvrant les six fonctionnalités enfants | Faible |

## 4. Nature du changement
- **Changement de processus :** La configuration de groupe et la prise en charge du recensement passent d'un échange manuel, en va-et-vient, à une seule session numérique guidée avec correction intégrée.
- **Changement d'outil/système :** Introduction de l'assistant de configuration de groupe en ligne, du téléversement de fichier de recensement et de la fonctionnalité sauvegarder et reprendre; retrait des gabarits/fils de courriel de prise en charge ad hoc lorsque possible.
- **Changement de rôle/responsabilité :** Les administrateurs des nouvelles affaires passent de la saisie de données et de la relance à la gestion des exceptions et à la révision.
- **Changement de politique/règle :** Les champs obligatoires, formats et règles inter-champs deviennent explicites et appliqués avant la soumission plutôt que découverts en aval.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Multiples points de contact manuels, aucune visibilité du statut | Parcours numérique guidé unique avec progression et statut visibles | Les promoteurs et administrateurs doivent désapprendre les habitudes basées sur le courriel |
| Outils/systèmes | Feuilles de calcul, courriel, documents partagés | Assistant en ligne, téléversement de recensement structuré, révision/attestation numérique | Nouvel accès système et identifiants pour les promoteurs |
| Rôles/compétences | Compétence de réconciliation manuelle | Compétence de triage des exceptions et de révision numérique | Les administrateurs des nouvelles affaires ont besoin d'une formation sur les files d'exception |
| Volume/charge de travail | Effort manuel élevé par dossier | Effort manuel réduit, concentré sur les exceptions | Une baisse temporaire du débit est anticipée durant la transition |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Commanditaire exécutif | Cette épopée réduit le délai de cycle et les reprises dans la prise en charge des nouveaux groupes | Mise à jour au comité de pilotage | Avant la construction et avant le lancement | Gestionnaire de produit |
| Administrateurs promoteurs de régime | Un nouveau processus en ligne guidé remplace les formulaires manuels et le courriel pour la configuration de groupe | Bulletin courtier/promoteur, bannière intégrée à l'application | 2 à 4 semaines avant la mise en production | Propriétaire de produit |
| Administrateurs des nouvelles affaires | La révision de la prise en charge passe de la saisie manuelle à la gestion des exceptions | Réunion d'équipe, procédures mises à jour | 2 semaines avant la mise en production | Gestionnaire des opérations |
| Réseau de courtiers | Les nouvelles soumissions de configuration de groupe arriveront pré-validées | Communication aux courtiers | À la mise en production | Responsable des parties prenantes d'affaires |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : administrateurs des nouvelles affaires (révision des exceptions), administrateurs promoteurs de régime (démarrage rapide libre-service).
- Format : courte vidéo de démonstration et guide de référence rapide pour les promoteurs; séance en salle et aide au travail pour les administrateurs des nouvelles affaires.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des six canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Les promoteurs continuent de soumettre l'information par courriel par habitude | Administrateurs promoteurs de régime | Retirer ou restreindre les canaux hérités à la mise en production; renforcer avec des communications aux courtiers |
| Perception d'une perte de contrôle sur la qualité des données | Administrateurs des nouvelles affaires | Démontrer que la validation détecte plus d'erreurs plus tôt, réduisant les reprises en aval |
| Les règles demeurent non résolues au lancement | Affaires/produit | Maintenir le journal de décisions de l'épopée avec échéances et responsables (voir l'épopée source, section 9) |

## 9. Critères de préparation et de mise en production
- [ ] Les six fonctionnalités enfants approuvées et dans la portée
- [ ] Groupes d'administrateurs promoteurs et des nouvelles affaires identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Formation complétée pour les administrateurs des nouvelles affaires et matériel libre-service publié pour les promoteurs
- [ ] Modèle de soutien en hypersoins en place pour le premier cycle de soumission
- [ ] Repli vers la prise en charge manuelle défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux d'adoption numérique | % des nouvelles soumissions de groupe complétées via l'assistant vs. les canaux hérités | À confirmer | À approuver | Gestionnaire de produit |
| Exhaustivité dès la première soumission | % de soumissions ne nécessitant aucun suivi | À confirmer | À approuver | Propriétaire de produit / AA |
| Taux de traitement manuel | % de dossiers nécessitant encore une réconciliation manuelle | À confirmer | À approuver | Opérations |
| Satisfaction du promoteur | Score de sondage post-soumission | À confirmer | À approuver | Produit / UX |

*(Contribue aux mesures d'initiative : délai de cycle d'intégration, exhaustivité dès la première soumission, taux de traitement manuel et adoption numérique.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
