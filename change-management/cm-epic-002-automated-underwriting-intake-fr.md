# CM-EPIC-002 | Bilan de gestion du changement : Prise en charge automatisée en souscription

*[Read this document in English](cm-epic-002-automated-underwriting-intake.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-002 Prise en charge automatisée en souscription](../epics/epic-002-automated-underwriting-intake-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-007](cm-feat-007-underwriting-requirements-questionnaire-fr.md) · [CM-FEAT-008](cm-feat-008-eligibility-and-completeness-validation-fr.md) · [CM-FEAT-009](cm-feat-009-underwriting-referral-and-decision-tracking-fr.md)

## 1. Sommaire du changement
Les souscripteurs et les administrateurs des nouvelles affaires passent d'une prise en charge en souscription sous forme de documents libres à un questionnaire structuré et conditionnel avec vérifications automatisées d'admissibilité et d'exhaustivité, et un processus formel de référence/suivi de décision pour les exceptions.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Échanges manuels, information fragmentée, validation tardive et visibilité limitée du statut dans le parcours d'intégration actuel — plus particulièrement des soumissions de souscription incomplètes ou incohérentes.
- **Valeur attendue :** Prise en charge en souscription plus complète, moins de suivis et une préparation à la décision plus claire.
- **Ce qui se produit si nous n'agissons pas :** Les souscripteurs continuent de recevoir des soumissions incomplètes, les décisions sont retardées, et la justification des références n'est pas systématiquement consignée.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Souscripteur | Révise des soumissions incohérentes en format libre, suit les décisions manuellement | Révise des soumissions structurées et validées et traite les exceptions via une file de référence formelle | Élevé |
| Administrateur des nouvelles affaires | Recueille l'information de souscription manuellement auprès des promoteurs | Accompagne les promoteurs dans la complétion du questionnaire numérique | Moyen |
| Administrateur promoteur de régime | Fournit l'information de souscription via des formulaires non structurés | Complète un questionnaire numérique conditionnel avec invites de preuves requises | Moyen |

## 4. Nature du changement
- **Changement de processus :** La prise en charge en souscription devient un questionnaire conditionnel; les dossiers incomplets/incohérents sont automatiquement repérés plutôt que découverts manuellement.
- **Changement d'outil/système :** Introduction du questionnaire des exigences de souscription, de la validation de l'admissibilité et de l'exhaustivité, et du suivi des références et décisions.
- **Changement de rôle/responsabilité :** Les souscripteurs passent moins de temps à relancer l'information manquante et plus de temps sur les exceptions référées avec justification documentée.
- **Changement de politique/règle :** Les règles d'admissibilité et d'exhaustivité deviennent des vérifications automatisées explicites plutôt que des jugements du souscripteur à la prise en charge.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Prise en charge en souscription ad hoc et suivi manuel des décisions | Questionnaire structuré avec vérifications d'admissibilité automatisées et références suivies | Les souscripteurs doivent faire confiance aux vérifications d'exhaustivité automatisées |
| Outils/systèmes | Documents/courriel, feuilles de suivi personnelles | Questionnaire numérique, moteur de validation, file de référence | Nouvelle façon de travailler basée sur une file d'attente |
| Rôles/compétences | Évaluation manuelle de l'exhaustivité | Révision par exception et justification de décision documentée | Exige une discipline pour consigner la justification de façon cohérente |
| Volume/charge de travail | Reprises élevées en raison de soumissions incomplètes | Reprises réduites, effort concentré sur les vraies exceptions de risque | Augmentation possible à court terme des références pendant l'ajustement des règles |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Direction de la souscription | Cette épopée réduit les soumissions incomplètes et clarifie la justification des décisions | Mise à jour à la gouvernance de souscription/comité de pilotage | Avant la construction et avant le lancement | Gestionnaire de produit |
| Souscripteurs | Une nouvelle file de référence et de suivi de décision remplace le suivi informel | Réunion d'équipe, procédures mises à jour | 2 semaines avant la mise en production | Gestionnaire des opérations |
| Promoteur de régime / courtier | L'information de souscription est maintenant recueillie via un questionnaire guidé | Bulletin courtier/promoteur | À la mise en production | Responsable des parties prenantes d'affaires |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : souscripteurs (file de référence, justification de décision), administrateurs des nouvelles affaires (accompagnement des promoteurs dans le questionnaire).
- Format : séance en salle pour les souscripteurs; guide de référence rapide pour les administrateurs.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des trois canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Les souscripteurs se méfient des vérifications automatisées d'admissibilité/exhaustivité | Équipe de souscription | Exécuter une période de validation parallèle et examiner les faux positifs/négatifs avant la bascule complète |
| La file de référence perçue comme un fardeau administratif ajouté | Souscripteurs | Démontrer la réduction du temps consacré à relancer l'information |
| Les équipes de fonctionnalités optimisent localement au détriment des ICP partagés | Équipes de livraison | Réviser régulièrement le parcours de bout en bout et les ICP partagés (voir l'épopée source, section 9) |

## 9. Critères de préparation et de mise en production
- [ ] Les trois fonctionnalités enfants approuvées et dans la portée
- [ ] Souscripteurs et administrateurs identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Formation complétée pour les souscripteurs et les administrateurs
- [ ] Modèle de soutien en hypersoins en place pour le premier cycle de souscription
- [ ] Repli vers la révision manuelle défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Exhaustivité dès la première soumission en souscription | % de questionnaires complets sans suivi | À confirmer | À approuver | Gestionnaire de produit |
| Délai de cycle des références | Temps entre la création de la référence et la décision consignée | À confirmer | À approuver | Opérations |
| Taux de saisie de la justification de décision | % de décisions avec justification documentée | À confirmer | À approuver | Responsable de la souscription |
| Satisfaction des souscripteurs | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

*(Contribue aux mesures d'initiative : délai de cycle d'intégration, exhaustivité dès la première soumission et taux de reprise/clarification.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
