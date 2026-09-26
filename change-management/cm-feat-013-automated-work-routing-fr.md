# CM-FEAT-013 | Bilan de gestion du changement : Acheminement automatisé du travail

*[Read this document in English](cm-feat-013-automated-work-routing.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-013 Acheminement automatisé du travail](../features/feat-013-automated-work-routing-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-004 Gestion des flux de travail et des dossiers](cm-epic-004-workflow-and-case-management-fr.md)

## 1. Sommaire du changement
Les administrateurs des nouvelles affaires, gestionnaires des opérations et spécialistes assignés passent d'un travail distribué manuellement ou auto-attribué de façon informelle à un acheminement automatisé basé sur les attributs du dossier, le rôle et des règles définies, avec une file d'attribution visible et un historique de réattribution/audit.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur des nouvelles affaires | Reçoit le travail via des transferts informels | Reçoit le travail via une file d'attribution automatisée | Moyen |
| Gestionnaire des opérations | Distribue et réattribue manuellement le travail | Surveille les règles d'acheminement et gère les réattributions par exception | Élevé |
| Spécialiste assigné | Travaille à partir de listes personnelles ou de transferts verbaux | Travaille à partir d'une file acheminée avec un historique d'audit visible | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le personnel reçoit les dossiers via courriel/transfert verbal | Le personnel reçoit les dossiers via la file d'attribution automatisée |
| Fournir l'information | S.O. (étape d'acheminement) | S.O. |
| Résoudre les problèmes | Le gestionnaire réattribue manuellement en cas de surcharge | La réattribution est gérée directement dans le système avec historique d'audit |
| Confirmer et soumettre | Aucun registre cohérent de la façon dont le travail a été attribué | L'historique d'audit de l'acheminement documente chaque décision d'attribution |
| Vérifier le statut | Le gestionnaire s'appuie sur sa mémoire/des feuilles de calcul pour l'équilibre de charge | Le gestionnaire voit directement la file d'attribution et les règles d'acheminement |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Règles d'acheminement, file d'attente d'attribution, réattribution, historique d'audit de l'acheminement.
- **Étapes supprimées/automatisées :** Distribution manuelle du travail et transferts informels.
- **Nouvelles règles à suivre :** Le travail doit être attribué selon les règles d'acheminement définies, sauf réattribution documentée.
- **Nouvelles informations à fournir/réviser :** Attributs de dossier utilisés pour piloter les décisions d'acheminement et historique complet d'audit des attributions.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment les règles d'acheminement déterminent l'attribution et comment demander une réattribution.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : File d'attribution et historique d'audit de l'acheminement (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — que faire si un dossier semble mal acheminé.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires des opérations.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : gestionnaire des opérations, puis propriétaire de produit pour les différends sur les règles d'acheminement.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux d'automatisation de l'acheminement | % de travail attribué automatiquement vs. manuellement | À confirmer | À approuver | Gestionnaire de produit |
| Délai de traitement | Temps entre la création du dossier et l'attribution | À confirmer | À approuver | Opérations |
| Exceptions | % de dossiers nécessitant une réattribution manuelle | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction du personnel envers la charge acheminée | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Le personnel contourne l'acheminement et s'auto-attribue le travail de façon informelle | Désactiver l'auto-attribution manuelle lorsque possible; renforcer via la supervision des gestionnaires |
| Les règles d'acheminement créent un déséquilibre de charge de travail | Surveiller étroitement la distribution des files durant les premiers cycles et ajuster les règles |
| Les règles sont incomplètes ou contradictoires au lancement | Animer des ateliers de règles et maintenir un journal de décisions |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec gestionnaires et spécialistes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
