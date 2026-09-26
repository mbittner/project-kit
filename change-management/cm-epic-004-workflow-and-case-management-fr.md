# CM-EPIC-004 | Bilan de gestion du changement : Gestion des flux de travail et des dossiers

*[Read this document in English](cm-epic-004-workflow-and-case-management.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-004 Gestion des flux de travail et des dossiers](../epics/epic-004-workflow-and-case-management-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-013](cm-feat-013-automated-work-routing-fr.md) · [CM-FEAT-014](cm-feat-014-task,-milestone,-and-sla-tracking-fr.md) · [CM-FEAT-015](cm-feat-015-exception-and-escalation-management-fr.md)

## 1. Sommaire du changement
Les administrateurs des nouvelles affaires, gestionnaires des opérations et spécialistes assignés passent d'un travail distribué de façon informelle et d'un suivi personnel à un acheminement automatisé et basé sur des règles, avec des tâches, jalons et ententes de service visibles, ainsi qu'un processus formel d'exception/escalade.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Transferts manuels, responsabilité fragmentée, validation tardive et visibilité limitée du statut dans le parcours d'intégration actuel.
- **Valeur attendue :** Responsabilité plus claire, moins de dossiers bloqués et des transferts plus prévisibles.
- **Ce qui se produit si nous n'agissons pas :** Les dossiers continuent de stagner entre les équipes sans propriété claire, et les exceptions sont traitées de façon incohérente sans visibilité partagée.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Administrateur des nouvelles affaires | Reçoit et suit manuellement le travail assigné | Reçoit le travail via un acheminement automatisé et une file visible | Moyen |
| Gestionnaire des opérations | Réattribue manuellement et relance les dossiers bloqués | Surveille les tableaux de bord d'ententes de service/jalons et gère les escalades formellement | Élevé |
| Spécialiste assigné | Travaille à partir de transferts informels et de listes personnelles | Travaille à partir d'une file acheminée avec visibilité des tâches, jalons et ententes de service | Moyen |

## 4. Nature du changement
- **Changement de processus :** L'attribution du travail passe d'un transfert informel à un acheminement automatisé basé sur des règles; les exceptions obtiennent un cycle de vie formel de création/escalade/résolution.
- **Changement d'outil/système :** Introduction des règles d'acheminement, files d'attribution, suivi des tâches/jalons/ententes de service, et registres d'exception.
- **Changement de rôle/responsabilité :** Les gestionnaires des opérations passent de la relance manuelle du statut à une gestion par exception via des tableaux de bord.
- **Changement de politique/règle :** Les règles d'acheminement et les définitions d'ententes de service deviennent explicites et appliquées par le système.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Distribution informelle du travail et suivi manuel | Acheminement automatisé avec statut d'entente de service et de jalon visible | Le personnel doit faire confiance au travail assigné par le système plutôt qu'aux habitudes informelles |
| Outils/systèmes | Suiveurs personnels, transferts par courriel/clavardage | Moteur d'acheminement, tableau de bord tâches/jalons, registre d'exceptions | Les outils partagés remplacent les méthodes de suivi individuelles |
| Rôles/compétences | Priorisation ad hoc | Priorisation pilotée par les ententes de service et discipline d'escalade | Les gestionnaires doivent s'adapter à une supervision basée sur des tableaux de bord |
| Volume/charge de travail | Temps consacré à localiser le statut d'un dossier | Temps de recherche réduit, plus de temps sur le travail actif | Une période d'ajustement des règles d'acheminement est anticipée au départ |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Direction des opérations | Cette épopée améliore la responsabilité et réduit les dossiers bloqués | Mise à jour au comité de pilotage | Avant la construction et avant le lancement | Gestionnaire de produit |
| Administrateurs des nouvelles affaires / spécialistes | Le travail sera désormais attribué et suivi automatiquement | Réunion d'équipe, procédures mises à jour | 2 semaines avant la mise en production | Gestionnaire des opérations |
| Gestionnaires des opérations | De nouveaux tableaux de bord d'ententes de service et d'exceptions remplacent la relance manuelle | Séance de gestionnaires et démonstration du tableau de bord | 2 semaines avant la mise en production | Gestionnaire des opérations |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : gestionnaires des opérations (tableaux de bord, gestion des escalades), spécialistes/administrateurs (travailler à partir des files acheminées).
- Format : séance en salle et aide au travail pour les gestionnaires; courte visite guidée pour les spécialistes.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des trois canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Le personnel contourne l'acheminement et s'auto-attribue le travail de façon informelle | Spécialistes/administrateurs | Désactiver l'auto-attribution manuelle lorsque possible; renforcer via la supervision des gestionnaires |
| Les gestionnaires se méfient des calculs automatisés d'ententes de service | Gestionnaires des opérations | Valider la logique des ententes de service par rapport à des dossiers connus avant la mise en production |
| Le processus d'escalade perçu comme orienté vers le blâme | Tous les rôles | Présenter l'escalade comme un mécanisme de soutien, non une critique de performance |

## 9. Critères de préparation et de mise en production
- [ ] Les trois fonctionnalités enfants approuvées et dans la portée
- [ ] Administrateurs, gestionnaires et spécialistes identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Formation complétée pour tous les rôles touchés
- [ ] Modèle de soutien en hypersoins en place pour le premier cycle d'acheminement
- [ ] Repli vers l'attribution manuelle défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux d'automatisation de l'acheminement | % de travail attribué automatiquement vs. manuellement | À confirmer | À approuver | Gestionnaire de produit |
| Respect des ententes de service | % de tâches/jalons complétés dans les délais d'entente de service | À confirmer | À approuver | Opérations |
| Taux de dossiers bloqués | % de dossiers sans activité au-delà d'un seuil défini | À confirmer | À approuver | Opérations |
| Satisfaction des gestionnaires | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

*(Contribue aux mesures d'initiative : délai de cycle d'intégration et taux de traitement manuel.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
