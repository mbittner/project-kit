# CM-FEAT-003 | Bilan de gestion du changement : Validation de données en temps réel

*[Read this document in English](cm-feat-003-real-time-data-validation.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-003 Validation de données en temps réel](../features/feat-003-real-time-data-validation-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les erreurs qui étaient auparavant découvertes en aval par les administrateurs des nouvelles affaires — après la soumission d'un promoteur — sont désormais signalées immédiatement au promoteur au point de saisie, grâce à la validation des champs obligatoires, des formats et des règles inter-champs avec un sommaire d'erreurs clair.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Soumet l'information, apprend les erreurs plus tard via un suivi | Voit et résout les problèmes de validation avant de soumettre | Élevé |
| Administrateur des nouvelles affaires | Identifie manuellement les erreurs et les communique aux promoteurs | Reçoit des soumissions déjà validées | Élevé |
| Propriétaire de produit | Aucune visibilité sur les tendances d'erreurs courantes | Utilise les ICP de taux d'exception pour prioriser les améliorations de règles | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur soumet l'information sans vérification préalable | Le promoteur travaille dans une session qui valide au fur et à mesure |
| Fournir l'information | Saisit les données sans rétroaction immédiate | Saisit les données avec validation des champs obligatoires et des formats en direct |
| Résoudre les problèmes | Apprend les erreurs via un appel/courriel de suivi, des jours plus tard | Voit un sommaire d'erreurs immédiatement et corrige sur place |
| Confirmer et soumettre | La soumission est acceptée, puis jugée incomplète en aval | La soumission ne procède que lorsque la validation réussit |
| Vérifier le statut | Attend que l'administrateur signale les problèmes | Voit le statut de validation directement dans l'interface |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Validation des champs obligatoires, validation de format, validation des règles inter-champs, sommaire des erreurs.
- **Étapes supprimées/automatisées :** Détection manuelle des erreurs en aval et communication de suivi par les administrateurs.
- **Nouvelles règles à suivre :** L'information invalide ou incohérente doit être corrigée avant que la soumission puisse procéder.
- **Nouvelles informations à fournir/réviser :** Résultats de validation en temps réel et sommaire des erreurs accompagnant leurs saisies.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — messages de validation courants et comment les résoudre.
- Visite guidée/courte vidéo : Optionnel — courte démonstration du comportement de validation en direct.
- Orientation intégrée à l'application : Messages de validation exploitables placés près du problème (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — pour les cas limites où les règles de validation semblent peu claires.

## 6. Champions locaux / soutien des experts
- Champions nommés par équipe/région : à confirmer.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires, puis propriétaire de produit, pour les différends sur les règles.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Succès dès la première fois | % complété sans correction ni suivi | À confirmer | À approuver | Propriétaire de produit / AA |
| Exceptions | % nécessitant une intervention manuelle après validation | À confirmer | À approuver | Opérations |
| Délai de traitement | Temps écoulé pour résoudre les problèmes de validation | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Clarté des messages de validation rapportée par les promoteurs | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les règles sont incomplètes ou contradictoires au lancement | Animer des ateliers de règles et maintenir un journal de décisions avant la mise en production |
| Les promoteurs trouvent les messages de validation peu clairs et cherchent des contournements | Valider le parcours avec les utilisateurs et raffiner le libellé des messages |
| Des règles trop strictes bloquent des soumissions valides mais inhabituelles | Fournir un parcours d'escalade pour les exceptions légitimes |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec des utilisateurs promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
