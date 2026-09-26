# CM-EPIC-006 | Bilan de gestion du changement : Analytique opérationnelle et tableau de bord des ICP

*[Read this document in English](cm-epic-006-operational-analytics-and-kpi-dashboard.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-006 Analytique opérationnelle et tableau de bord des ICP](../epics/epic-006-operational-analytics-and-kpi-dashboard-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-019](cm-feat-019-onboarding-status-dashboard-fr.md) · [CM-FEAT-020](cm-feat-020-bottleneck-and-aging-analysis-fr.md) · [CM-FEAT-021](cm-feat-021-outcome-and-benefits-reporting-fr.md)

## 1. Sommaire du changement
Les dirigeants d'affaires, gestionnaires de produit, gestionnaires des opérations et analystes d'affaires passent d'une reddition de compte fragmentée et d'une connaissance anecdotique des goulots d'étranglement à un tableau de bord partagé du statut d'intégration, une analyse systématique des goulots d'étranglement/de l'ancienneté, et un tableau de bord des ICP lié aux cibles approuvées.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Visibilité limitée du statut, et absence d'une façon fiable et partagée de voir l'avancement, les goulots d'étranglement, la qualité et les résultats de l'intégration.
- **Valeur attendue :** Gestion fondée sur des données probantes, intervention plus précoce et réalisation transparente des bénéfices.
- **Ce qui se produit si nous n'agissons pas :** Les goulots d'étranglement et les problèmes de qualité sont détectés tardivement, les bénéfices des autres épopées sont difficiles à démontrer, et la reddition de compte demeure manuelle et incohérente entre les équipes.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Dirigeant d'affaires | Reçoit des mises à jour de statut ad hoc, compilées manuellement | Consulte un tableau de bord de portefeuille en direct | Moyen |
| Gestionnaire de produit | Assemble manuellement les preuves d'ICP pour la reddition de compte des bénéfices | Utilise un tableau de bord des ICP avec comparaison référence/cible | Moyen |
| Gestionnaire des opérations | Repère les goulots d'étranglement de façon réactive via les escalades | Utilise l'analyse d'ancienneté et de goulots d'étranglement pour intervenir de façon proactive | Élevé |
| Analyste d'affaires | Réconcilie manuellement les données pour la reddition de compte | S'appuie sur une source de reddition de compte cohérente et partagée | Faible |

## 4. Nature du changement
- **Changement de processus :** La reddition de compte du statut et des bénéfices passe d'une compilation manuelle à un tableau de bord et une fiche de pointage permanents et partagés.
- **Changement d'outil/système :** Introduction du tableau de bord du statut d'intégration, de l'analyse des goulots d'étranglement/de l'ancienneté, et des capacités de rapports sur les résultats/bénéfices.
- **Changement de rôle/responsabilité :** Les gestionnaires des opérations passent d'une intervention réactive pilotée par l'escalade à une gestion de dossiers proactive et fondée sur les données.
- **Changement de politique/règle :** Les définitions, références et cibles des ICP doivent être formellement approuvées et attribuées plutôt que suivies de façon informelle.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Compilation manuelle et périodique du statut | Tableau de bord et fiche de pointage disponibles en continu | Exige de faire confiance aux données automatisées plutôt qu'aux rapports curés manuellement |
| Outils/systèmes | Feuilles de calcul, rapports ad hoc | Tableau de bord d'intégration, analyse de l'ancienneté, fiche de pointage des ICP | Adoption d'un nouvel outil de reddition de compte par tous les rôles |
| Rôles/compétences | Gestion réactive par escalade | Gestion proactive des goulots d'étranglement, fondée sur les données | Les gestionnaires doivent développer l'habitude de consulter régulièrement le tableau de bord |
| Volume/charge de travail | Temps consacré à assembler manuellement les rapports | Temps réorienté vers l'action sur les constats | Une période initiale de stabilisation de la qualité des données est anticipée |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Direction d'affaires | Cette épopée offre une visibilité transparente et fondée sur des données probantes sur la performance de l'intégration | Mise à jour au comité de pilotage | Avant la construction et avant le lancement | Gestionnaire de produit |
| Gestionnaires des opérations | L'analyse des goulots d'étranglement et de l'ancienneté appuiera une intervention plus précoce | Séance de gestionnaires et démonstration du tableau de bord | 2 semaines avant la mise en production | Gestionnaire des opérations |
| Analystes d'affaires | La reddition de compte passe de la réconciliation manuelle à une source de tableau de bord partagée | Réunion d'équipe | 2 semaines avant la mise en production | Responsable des analystes d'affaires |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : gestionnaires des opérations et dirigeants d'affaires (interprétation du tableau de bord), analystes d'affaires (maintien de la fiche de pointage des ICP).
- Format : séance de démonstration du tableau de bord et guide de référence rapide.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des trois canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Les parties prenantes se méfient des données du tableau de bord par rapport aux rapports manuels familiers | Dirigeants d'affaires, gestionnaires | Exécuter le tableau de bord en parallèle avec la reddition de compte manuelle brièvement et réconcilier les écarts |
| Les références et cibles des ICP demeurent non approuvées | Direction produit/affaires | Faire de l'approbation des références et cibles un bloqueur de mise en production (voir l'épopée source, section 6) |
| Le tableau de bord utilisé pour blâmer plutôt que pour s'améliorer | Gestionnaires des opérations | Orienter les consignes d'utilisation vers le soutien proactif, non la surveillance de performance |

## 9. Critères de préparation et de mise en production
- [ ] Les trois fonctionnalités enfants approuvées et dans la portée
- [ ] Dirigeants d'affaires, gestionnaires et analystes identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Formation complétée pour les utilisateurs du tableau de bord
- [ ] Références, cibles et responsables des ICP approuvés
- [ ] Repli vers la reddition de compte manuelle défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Utilisation active du tableau de bord | % d'utilisateurs cibles accédant régulièrement au tableau de bord | À confirmer | À approuver | Gestionnaire de produit |
| Délai de détection des goulots d'étranglement | Temps entre l'apparition d'un goulot d'étranglement et sa détection | À confirmer | À approuver | Opérations |
| Délai de cycle de reddition de compte des ICP | Temps requis pour produire un rapport de bénéfices | À confirmer | À approuver | Analyste d'affaires |
| Confiance des parties prenantes dans les données | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

*(Contribue à l'ensemble des mesures de succès de l'initiative, cette épopée étant le principal mécanisme de reddition de compte pour la réalisation des bénéfices.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
