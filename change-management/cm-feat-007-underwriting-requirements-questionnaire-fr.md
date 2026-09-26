# CM-FEAT-007 | Bilan de gestion du changement : Questionnaire des exigences de souscription

*[Read this document in English](cm-feat-007-underwriting-requirements-questionnaire.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-007 Questionnaire des exigences de souscription](../features/feat-007-underwriting-requirements-questionnaire-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-002 Prise en charge automatisée en souscription](cm-epic-002-automated-underwriting-intake-fr.md)

## 1. Sommaire du changement
Les souscripteurs, administrateurs des nouvelles affaires et promoteurs passent de formulaires de souscription génériques et libres à un questionnaire numérique conditionnel qui invite les preuves requises et suit l'exhaustivité des sections avant la soumission.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Souscripteur | Reçoit des formulaires de souscription incohérents et souvent incomplets | Reçoit des questionnaires structurés et conditionnellement complétés | Élevé |
| Administrateur des nouvelles affaires | Clarifie manuellement les détails de souscription manquants avec les promoteurs | Accompagne les promoteurs dans la complétion du questionnaire numérique | Moyen |
| Administrateur promoteur de régime | Remplit des formulaires de souscription génériques sans indication | Répond à des questions conditionnelles avec invites de preuves requises | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur reçoit un formulaire de souscription générique | Le promoteur ouvre le questionnaire conditionnel dans le dossier |
| Fournir l'information | Répond à des questions statiques sans égard à leur pertinence | Répond à des questions conditionnelles adaptées à sa situation |
| Résoudre les problèmes | Les preuves manquantes sont découvertes plus tard par le souscripteur | Les invites de preuves requises apparaissent au point de saisie |
| Confirmer et soumettre | Soumet avec une exhaustivité incertaine | L'exhaustivité de la section est visible avant la soumission |
| Vérifier le statut | Le souscripteur vérifie manuellement ce qui manque | Le sommaire de révision offre un portrait complet d'un coup d'œil |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Questions conditionnelles, invites de preuves requises, exhaustivité de la section, sommaire de révision.
- **Étapes supprimées/automatisées :** Identification manuelle de l'information de souscription manquante par le souscripteur.
- **Nouvelles règles à suivre :** Les preuves requises doivent être fournies avant qu'une section soit considérée complète.
- **Nouvelles informations à fournir/réviser :** Information sur le risque et le régime saisie via une logique conditionnelle plutôt que des champs statiques.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — pour les souscripteurs interprétant les nouveaux indicateurs d'exhaustivité.
- Visite guidée/courte vidéo : Oui — pour les promoteurs naviguant les questions conditionnelles.
- Orientation intégrée à l'application : Invites de preuves et indicateurs d'exhaustivité de section (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — clarifiant pourquoi certaines questions n'apparaissent que dans certains cas.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer au sein de l'équipe de souscription.
- Heures de bureau à la mise en production : à confirmer pour le premier cycle de souscription.
- Parcours d'escalade : responsable de la souscription, puis propriétaire de produit pour les différends sur les règles.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Achèvement | % de questionnaires complétés une fois amorcés | À confirmer | À approuver | Gestionnaire de produit |
| Succès dès la première fois | % complets sans demande de suivi | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps pour compléter le questionnaire | À confirmer | À approuver | Opérations |
| Exceptions | % nécessitant une intervention manuelle du souscripteur | À confirmer | À approuver | Opérations |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les règles de logique conditionnelle sont incomplètes ou contradictoires | Animer des ateliers de règles avec les experts en souscription avant la mise en production |
| Les promoteurs contournent ou comprennent mal les questions conditionnelles | Valider le parcours avec des utilisateurs promoteurs et raffiner les invites |
| Les souscripteurs se méfient des signaux d'exhaustivité automatisés | Exécuter une période de révision parallèle avant de s'y fier pleinement |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec souscripteurs et promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
