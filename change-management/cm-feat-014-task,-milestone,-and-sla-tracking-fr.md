# CM-FEAT-014 | Bilan de gestion du changement : Suivi des tâches, jalons et ententes de service

*[Read this document in English](cm-feat-014-task,-milestone,-and-sla-tracking.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-014 Suivi des tâches, jalons et ententes de service](../features/feat-014-task,-milestone,-and-sla-tracking-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-004 Gestion des flux de travail et des dossiers](cm-epic-004-workflow-and-case-management-fr.md)

## 1. Sommaire du changement
Les gestionnaires des opérations et spécialistes passent du suivi des tâches, jalons et bris d'entente de service dans des feuilles de calcul personnelles à une liste de tâches partagée avec statut des jalons, alertes d'échéance et un indicateur d'entente de service.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur des nouvelles affaires | Suit ses propres tâches/échéances de façon informelle | Travaille à partir d'une liste de tâches partagée avec alertes d'échéance | Moyen |
| Gestionnaire des opérations | Détecte les bris d'entente de service de façon réactive, souvent après escalade | Surveille le statut des jalons et les indicateurs d'entente de service de façon proactive | Élevé |
| Spécialiste assigné | S'appuie sur des rappels personnels pour les échéances | S'appuie sur des alertes d'échéance générées par le système | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le personnel consulte des suiveurs personnels pour ce qui est dû | Le personnel ouvre la liste de tâches partagée pour le dossier |
| Fournir l'information | S.O. (étape de suivi) | S.O. |
| Résoudre les problèmes | Les bris d'entente de service sont trouvés seulement après une plainte/escalade | L'indicateur d'entente de service signale les éléments à risque avant le bris |
| Confirmer et soumettre | L'achèvement des jalons est consigné de façon informelle ou pas du tout | Le statut des jalons est consigné et visible pour toutes les parties prenantes |
| Vérifier le statut | Le gestionnaire compile manuellement le statut de toute l'équipe | Le gestionnaire consulte directement le statut des tâches/jalons/ententes de service |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Liste des tâches, statut des jalons, alertes d'échéance, indicateur d'entente de service.
- **Étapes supprimées/automatisées :** Suivi manuel et personnel des échéances et jalons.
- **Nouvelles règles à suivre :** Le statut des tâches et jalons doit être tenu à jour dans le système plutôt que suivi personnellement.
- **Nouvelles informations à fournir/réviser :** Échéances des tâches, achèvement des jalons et statut d'entente de service pour chaque dossier.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment lire et agir sur les alertes d'échéance et les indicateurs d'entente de service.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Indicateur d'entente de service et visuels de statut des jalons (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — ce qui déclenche un bris d'entente de service et comment il est calculé.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires des opérations.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : gestionnaire des opérations pour les différends de calcul d'entente de service.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Respect des ententes de service | % de tâches/jalons complétés dans les délais d'entente de service | À confirmer | À approuver | Opérations |
| Délai de traitement | Temps pour compléter les tâches suivies | À confirmer | À approuver | Opérations |
| Exceptions | % de tâches sans échéance définie | À confirmer | À approuver | Opérations |
| Satisfaction des gestionnaires | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Le personnel continue d'utiliser des suiveurs personnels en parallèle | Retirer les suiveurs hérités et renforcer le système comme source unique de vérité |
| Les gestionnaires se méfient des calculs automatisés d'entente de service | Valider la logique des ententes de service par rapport à des dossiers connus avant la mise en production |
| Fatigue liée aux notifications d'échéance trop nombreuses | Ajuster les seuils et la fréquence des alertes selon la rétroaction des utilisateurs |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec gestionnaires et spécialistes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
