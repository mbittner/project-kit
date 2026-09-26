# CM-FEAT-020 | Bilan de gestion du changement : Analyse des goulots d'étranglement et de l'ancienneté

*[Read this document in English](cm-feat-020-bottleneck-and-aging-analysis.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-020 Analyse des goulots d'étranglement et de l'ancienneté](../features/feat-020-bottleneck-and-aging-analysis-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-006 Analytique opérationnelle et tableau de bord des ICP](cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md)

## 1. Sommaire du changement
Les gestionnaires des opérations passent d'une détection réactive des goulots d'étranglement — via des escalades ou plaintes — à l'utilisation de l'ancienneté par étape, de l'analyse des états d'attente et des tendances des échecs de validation pour intervenir de façon proactive, avec une vue exportable pour une analyse approfondie.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Gestionnaire des opérations | Apprend les goulots d'étranglement après qu'ils causent des escalades | Repère de façon proactive les goulots d'étranglement via l'analyse d'ancienneté/tendances | Élevé |
| Dirigeant d'affaires | Visibilité limitée sur l'origine des délais | Consulte les tendances de goulots d'étranglement pour éclairer les décisions de dotation | Moyen |
| Analyste d'affaires | Enquête manuellement sur les tendances de délai dossier par dossier | Utilise les tendances des échecs de validation et les vues exportables pour l'analyse | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le gestionnaire enquête seulement après une plainte/escalade | Le gestionnaire consulte l'ancienneté par étape et l'analyse des états d'attente de façon proactive |
| Fournir l'information | S.O. (étape d'analyse) | S.O. |
| Résoudre les problèmes | La cause première est étudiée manuellement, dossier par dossier | Les tendances des échecs de validation mettent en évidence les problèmes systémiques directement |
| Confirmer et soumettre | Aucun moyen structuré de partager les constats | La vue exportable appuie le partage des constats avec les parties prenantes |
| Vérifier le statut | Les goulots d'étranglement sont découverts trop tard pour prévenir l'impact | L'alerte précoce permet une intervention avant que les dossiers ne stagnent |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Ancienneté par étape, analyse des états d'attente, tendances des échecs de validation, vue exportable.
- **Étapes supprimées/automatisées :** Enquête réactive et dossier par dossier sur la cause première après une escalade.
- **Nouvelles règles à suivre :** L'analyse doit être révisée selon un rythme régulier plutôt qu'uniquement après un incident.
- **Nouvelles informations à fournir/réviser :** Données d'ancienneté et de tendances utilisées pour prioriser les améliorations de processus.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment interpréter les vues d'ancienneté et de tendances.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Visualisations de tendances et contrôles d'exportation (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment sont calculés « l'ancienneté » et « l'état d'attente ».

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires des opérations.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable des analystes d'affaires pour les questions de données/calcul.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Délai de détection des goulots d'étranglement | Temps entre l'apparition d'un goulot d'étranglement et sa détection | À confirmer | À approuver | Opérations |
| Taux d'intervention proactive | % de goulots d'étranglement traités avant l'escalade | À confirmer | À approuver | Opérations |
| Utilisation | % de gestionnaires des opérations consultant régulièrement l'analyse | À confirmer | À approuver | Gestionnaire de produit |
| Expérience utilisateur | Satisfaction des gestionnaires envers les vues d'analyse | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les gestionnaires continuent d'attendre les escalades par habitude | Intégrer un rythme de révision régulier aux routines opérationnelles |
| Les calculs d'ancienneté/de tendances sont mal compris ou peu fiables | Valider la logique de calcul avec les experts opérationnels avant la mise en production |
| L'analyse révèle des écarts de performance inconfortables | Orienter les consignes d'utilisation vers l'amélioration des processus, non le blâme |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec les gestionnaires des opérations
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
