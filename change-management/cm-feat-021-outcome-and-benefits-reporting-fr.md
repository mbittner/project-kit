# CM-FEAT-021 | Bilan de gestion du changement : Rapports sur les résultats et les bénéfices

*[Read this document in English](cm-feat-021-outcome-and-benefits-reporting.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-021 Rapports sur les résultats et les bénéfices](../features/feat-021-outcome-and-benefits-reporting-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-006 Analytique opérationnelle et tableau de bord des ICP](cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md)

## 1. Sommaire du changement
Les dirigeants d'affaires, gestionnaires de produit et analystes d'affaires passent de l'assemblage manuel des preuves d'ICP pour des revues d'affaires périodiques à un tableau de bord des ICP permanent avec comparaison référence/cible, vue des tendances et notes de mesure.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Dirigeant d'affaires | Reçoit des mises à jour de bénéfices seulement aux revues planifiées | Consulte un tableau de bord des ICP disponible en continu | Moyen |
| Gestionnaire de produit | Assemble manuellement les preuves pour démontrer la valeur | Utilise le tableau de bord comme source permanente de preuves de bénéfices | Élevé |
| Analyste d'affaires | Réconcilie manuellement les données d'ICP entre les sources | Maintient le tableau de bord et ajoute des notes de mesure pour le contexte | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | La partie prenante demande une mise à jour de bénéfices avant une revue | La partie prenante ouvre le tableau de bord des ICP à tout moment |
| Fournir l'information | S.O. (étape de reddition de compte) | S.O. |
| Résoudre les problèmes | Les écarts dans les chiffres d'ICP sont découverts tardivement, durant la préparation de la revue | La comparaison référence/cible met en évidence les écarts en continu |
| Confirmer et soumettre | Le rapport de bénéfices est finalisé manuellement avant chaque revue | La vue des tendances et les notes de mesure sont maintenues de façon continue |
| Vérifier le statut | La réalisation des bénéfices n'est visible que périodiquement | Le suivi des résultats est visible et à jour en tout temps |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Tableau de bord des ICP, comparaison référence-cible, vue des tendances, notes de mesure.
- **Étapes supprimées/automatisées :** Assemblage manuel des preuves de bénéfices avant chaque revue d'affaires.
- **Nouvelles règles à suivre :** Les références et cibles des ICP doivent être formellement approuvées et attribuées avant d'être reflétées dans le tableau de bord.
- **Nouvelles informations à fournir/réviser :** Résultats d'ICP continus, contexte de tendances et notes de mesure expliquant les anomalies.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment lire le tableau de bord et ajouter des notes de mesure.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Visuels de comparaison référence/cible (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment les définitions et cibles d'ICP sont approuvées/mises à jour.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les analystes d'affaires.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : gestionnaire de produit pour les définitions ou cibles d'ICP contestées.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Utilisation active du tableau de bord | % de parties prenantes cibles consultant régulièrement le tableau de bord | À confirmer | À approuver | Gestionnaire de produit |
| Délai de cycle de reddition de compte des ICP | Temps pour produire un rapport de bénéfices via le tableau de bord vs. la compilation manuelle | À confirmer | À approuver | Analyste d'affaires |
| Indice de confiance des données | Confiance rapportée par les parties prenantes envers l'exactitude du tableau de bord | À confirmer | À approuver | Produit / UX |
| Taux d'approbation des références/cibles | % d'ICP avec références et cibles formellement approuvées | À confirmer | À approuver | Gestionnaire de produit |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les références et cibles des ICP demeurent non approuvées | Faire de l'approbation des références et cibles un bloqueur de mise en production |
| Les parties prenantes se méfient du tableau de bord par rapport aux rapports manuels familiers | Exécuter le tableau de bord en parallèle avec la reddition de compte manuelle brièvement et réconcilier les écarts |
| Les notes de mesure ne sont pas maintenues, réduisant le contexte au fil du temps | Attribuer une propriété claire pour maintenir les notes à jour |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec dirigeants et analystes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
