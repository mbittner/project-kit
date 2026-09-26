# CM-FEAT-009 | Bilan de gestion du changement : Suivi des références et décisions en souscription

*[Read this document in English](cm-feat-009-underwriting-referral-and-decision-tracking.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-009 Suivi des références et décisions en souscription](../features/feat-009-underwriting-referral-and-decision-tracking-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-002 Prise en charge automatisée en souscription](cm-epic-002-automated-underwriting-intake-fr.md)

## 1. Sommaire du changement
Les souscripteurs passent d'un suivi informel des références et décisions dans des feuilles de calcul ou par courriel à la création de références formelles, l'attribution à une file d'attente, et la consignation du statut et de la justification de la décision dans le système.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Souscripteur | Suit les références et décisions de façon informelle | Crée des références, travaille à partir d'une file et consigne la justification | Élevé |
| Administrateur des nouvelles affaires | Visibilité limitée sur le statut des références | Voit le statut de décision directement sur le dossier | Moyen |
| Administrateur promoteur de régime | Apprend les résultats des références verbalement ou par courriel | Voit le statut de décision reflété sur son dossier | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le souscripteur signale manuellement un dossier pour référence | Le souscripteur crée un registre de référence directement dans le système |
| Fournir l'information | Contexte de référence partagé via notes de courriel/feuille de calcul | Contexte de référence capturé dans un registre structuré |
| Résoudre les problèmes | La référence attend dans une file ou boîte de réception informelle | La référence est attribuée à une file formelle |
| Confirmer et soumettre | Décision consignée de façon informelle, justification souvent non documentée | Le statut de décision et la justification sont consignés ensemble |
| Vérifier le statut | Statut inféré à partir de courriels ou notes personnelles | Le statut de décision est visible directement sur le dossier |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Création de référence, attribution de file d'attente, statut de décision, justification de la décision.
- **Étapes supprimées/automatisées :** Suivi informel et non documenté des références via feuilles de calcul ou courriel.
- **Nouvelles règles à suivre :** Chaque référence doit avoir un statut de décision et une justification consignés avant sa fermeture.
- **Nouvelles informations à fournir/réviser :** Données structurées de référence et de décision, incluant la justification, pour l'audit et la reddition de compte.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment créer des références et consigner la justification de façon cohérente.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Champs de statut de décision et de justification (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — attentes en matière de détail et de cohérence de la justification.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer au sein de l'équipe de souscription.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable de la souscription pour les différends d'attribution de file.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux de saisie de la justification de décision | % de décisions avec justification documentée | À confirmer | À approuver | Responsable de la souscription |
| Délai de cycle des références | Temps entre la création de la référence et la décision consignée | À confirmer | À approuver | Opérations |
| Exceptions | % de références nécessitant une reprise ou réattribution | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction du souscripteur envers la file | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les souscripteurs négligent de consigner la justification pour gagner du temps | Rendre la justification obligatoire avant de fermer une référence |
| Les règles d'attribution de file sont peu claires ou contestées | Animer des ateliers de règles et documenter la logique d'attribution |
| Les utilisateurs reviennent au suivi informel en parallèle | Retirer les feuilles de suivi héritées et renforcer la source unique de vérité |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec les souscripteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
