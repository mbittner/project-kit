# CM-FEAT-019 | Bilan de gestion du changement : Tableau de bord du statut d'intégration

*[Read this document in English](cm-feat-019-onboarding-status-dashboard.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-019 Tableau de bord du statut d'intégration](../features/feat-019-onboarding-status-dashboard-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-006 Analytique opérationnelle et tableau de bord des ICP](cm-epic-006-operational-analytics-and-kpi-dashboard-fr.md)

## 1. Sommaire du changement
Les dirigeants d'affaires, gestionnaires de produit, gestionnaires des opérations et analystes d'affaires passent de rapports de statut périodiques compilés manuellement à un tableau de bord en direct au niveau du portefeuille et des dossiers, avec des vues de jalons et des filtres de responsable/ancienneté.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Dirigeant d'affaires | Reçoit des mises à jour de statut ad hoc, compilées manuellement | Consulte un tableau de bord de portefeuille en direct | Moyen |
| Gestionnaire de produit | Demande des mises à jour de statut à plusieurs équipes | Utilise le tableau de bord comme source partagée de vérité | Moyen |
| Gestionnaire des opérations | Compile manuellement le statut au niveau des dossiers pour la reddition de compte | Utilise directement l'analyse détaillée du dossier et les filtres de responsable/ancienneté | Élevé |
| Analyste d'affaires | Réconcilie manuellement les données de plusieurs sources pour la reddition de compte | S'appuie sur le tableau de bord comme source de reddition de compte cohérente | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Demande une mise à jour de statut manuelle à un membre de l'équipe | Ouvre le tableau de bord pour le statut du portefeuille/dossier en direct |
| Fournir l'information | S.O. (étape de reddition de compte) | S.O. |
| Résoudre les problèmes | L'ambiguïté du statut est résolue via des conversations de suivi | L'analyse détaillée du dossier clarifie le statut directement |
| Confirmer et soumettre | Le rapport est compilé et diffusé périodiquement | Le tableau de bord est disponible en continu et à jour |
| Vérifier le statut | S'appuie sur le rapport compilé manuellement le plus récent | Utilise la vue des jalons et les filtres d'ancienneté pour un portrait en temps réel |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Sommaire du portefeuille, analyse détaillée du dossier, vue des jalons, filtres de responsable et d'ancienneté.
- **Étapes supprimées/automatisées :** Compilation et diffusion manuelles des rapports de statut périodiques.
- **Nouvelles règles à suivre :** Les données du tableau de bord doivent être considérées comme la source actuelle plutôt que les rapports curés manuellement.
- **Nouvelles informations à fournir/réviser :** Statut du portefeuille et des dossiers en direct, propriété, jalons et ancienneté.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — navigation du tableau de bord et utilisation des filtres.
- Visite guidée/courte vidéo : Oui — pour les dirigeants d'affaires et gestionnaires nouveaux au tableau de bord.
- Orientation intégrée à l'application : Interactions de filtrage et d'analyse détaillée (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment fonctionnent la fraîcheur des données et le rythme d'actualisation.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires des opérations et analystes d'affaires.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable des analystes d'affaires pour les écarts de données.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Utilisation active du tableau de bord | % d'utilisateurs cibles accédant régulièrement au tableau de bord | À confirmer | À approuver | Gestionnaire de produit |
| Délai de cycle de reddition de compte | Temps pour produire une mise à jour de statut via le tableau de bord vs. la compilation manuelle | À confirmer | À approuver | Analyste d'affaires |
| Indice de confiance des données | Confiance rapportée par les parties prenantes envers l'exactitude du tableau de bord | À confirmer | À approuver | Produit / UX |
| Exceptions | % de dossiers avec données de statut manquantes/incorrectes | À confirmer | À approuver | Opérations |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les parties prenantes se méfient des données du tableau de bord par rapport aux rapports manuels familiers | Exécuter le tableau de bord en parallèle avec la reddition de compte manuelle brièvement et réconcilier les écarts |
| Des problèmes de qualité des données sous-jacents nuisent à l'exactitude du tableau de bord | Valider les flux de données source avant la mise en production |
| Le tableau de bord utilisé pour blâmer plutôt que pour s'améliorer | Orienter les consignes d'utilisation vers le soutien proactif, non la surveillance de performance |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec dirigeants, gestionnaires et analystes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
