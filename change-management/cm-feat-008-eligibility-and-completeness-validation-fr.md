# CM-FEAT-008 | Bilan de gestion du changement : Validation de l'admissibilité et de l'exhaustivité

*[Read this document in English](cm-feat-008-eligibility-and-completeness-validation.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-008 Validation de l'admissibilité et de l'exhaustivité](../features/feat-008-eligibility-and-completeness-validation-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-002 Prise en charge automatisée en souscription](cm-epic-002-automated-underwriting-intake-fr.md)

## 1. Sommaire du changement
Les souscripteurs passent de la vérification manuelle de l'admissibilité et de l'exhaustivité de chaque dossier à des vérifications automatisées d'admissibilité, des vérifications d'exhaustivité et un affichage des résultats des règles, avec un parcours de correction défini pour les problèmes détectés.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Souscripteur | Vérifie manuellement l'admissibilité/exhaustivité dossier par dossier | Révise les résultats des règles automatisées et se concentre sur les vraies exceptions | Élevé |
| Administrateur des nouvelles affaires | Répond aux questions lorsqu'un dossier est jugé incomplet | Dirige les promoteurs à travers le parcours de correction du système | Moyen |
| Administrateur promoteur de régime | Apprend les problèmes d'admissibilité/exhaustivité après coup | Voit directement les résultats des règles et les indications de correction | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le souscripteur ouvre et inspecte manuellement le dossier | Le souscripteur ouvre un dossier avec les résultats des règles déjà calculés |
| Fournir l'information | S.O. (étape de validation) | S.O. |
| Résoudre les problèmes | Le souscripteur identifie manuellement les lacunes, contacte le promoteur | L'affichage des résultats des règles signale les lacunes automatiquement |
| Confirmer et soumettre | Le souscripteur procède selon son jugement manuel | Le souscripteur procède une fois les vérifications d'admissibilité/exhaustivité réussies |
| Vérifier le statut | Aucun registre cohérent de ce qui a été vérifié | L'affichage des résultats des règles fournit une piste d'audit cohérente |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Vérifications d'admissibilité, vérifications d'exhaustivité, affichage des résultats des règles, parcours de correction.
- **Étapes supprimées/automatisées :** Évaluation manuelle et dossier par dossier de l'admissibilité/exhaustivité par le souscripteur.
- **Nouvelles règles à suivre :** Les dossiers doivent réussir les vérifications automatisées d'admissibilité/exhaustivité (ou avoir une exception documentée) avant de procéder.
- **Nouvelles informations à fournir/réviser :** Résultats des règles indiquant quelles vérifications ont réussi, échoué ou nécessitent une correction.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment interpréter les résultats des règles et les parcours de correction.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Affichage des résultats des règles et messagerie du parcours de correction (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — que faire lorsqu'un résultat de règle semble incorrect.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer au sein de l'équipe de souscription.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable de la souscription pour les résultats de règles contestés.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Succès dès la première fois | % de dossiers réussissant les vérifications sans correction | À confirmer | À approuver | Propriétaire de produit / AA |
| Exceptions | % de dossiers nécessitant une dérogation manuelle | À confirmer | À approuver | Opérations |
| Délai de traitement | Temps pour résoudre les problèmes d'admissibilité/exhaustivité | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Confiance du souscripteur envers les résultats automatisés | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les règles sont incomplètes ou contradictoires au lancement | Animer des ateliers de règles et maintenir un journal de décisions |
| Les souscripteurs se méfient des résultats automatisés et revérifient manuellement quand même | Exécuter une période de validation parallèle et réviser les écarts avant la bascule |
| Parcours de correction peu clair pour les promoteurs | Valider le parcours de correction avec des utilisateurs promoteurs avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec les souscripteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
