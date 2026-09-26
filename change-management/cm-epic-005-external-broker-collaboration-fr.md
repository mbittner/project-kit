# CM-EPIC-005 | Bilan de gestion du changement : Collaboration avec les courtiers externes

*[Read this document in English](cm-epic-005-external-broker-collaboration.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-005 Collaboration avec les courtiers externes](../epics/epic-005-external-broker-collaboration-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-016](cm-feat-016-broker-access-and-delegation-fr.md) · [CM-FEAT-017](cm-feat-017-shared-information-requests-fr.md) · [CM-FEAT-018](cm-feat-018-collaboration-history-and-notifications-fr.md)

## 1. Sommaire du changement
Les courtiers, promoteurs de régime et utilisateurs des opérations des nouvelles affaires passent d'une collaboration non structurée par courriel à un accès basé sur les rôles au portail, des demandes d'information partagées avec responsable et statut visibles, et un historique de collaboration suivi avec notifications.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Échanges de courriel non structurés entre courtiers et promoteurs, information fragmentée et visibilité limitée du statut.
- **Valeur attendue :** Collaboration améliorée, moins de demandes en double et responsabilité plus claire entre le courtier et le promoteur.
- **Ce qui se produit si nous n'agissons pas :** Les demandes continuent d'être dupliquées ou perdues dans le courriel, et il demeure difficile de savoir qui est responsable d'une information manquante donnée.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Représentant de courtier | Collabore par courriel/téléphone sans accès formel au statut du dossier | Accède aux dossiers assignés via un accès délégué et basé sur les rôles au portail | Élevé |
| Administrateur promoteur de régime | Envoie/reçoit des demandes de façon informelle | Répond à des demandes d'information partagées avec propriété et statut visibles | Moyen |
| Utilisateur des opérations des nouvelles affaires | Relaie manuellement l'information entre courtier et promoteur | Surveille l'historique de collaboration et les notifications directement dans le système | Moyen |

## 4. Nature du changement
- **Changement de processus :** La collaboration avec les courtiers passe d'un courriel non structuré à des demandes structurées et suivies avec propriété claire.
- **Changement d'outil/système :** Introduction de l'accès/délégation au portail courtier, des demandes d'information partagées, et de l'historique de collaboration/notifications.
- **Changement de rôle/responsabilité :** Les courtiers obtiennent un accès direct et délégué plutôt que de dépendre du personnel interne pour relayer l'information.
- **Changement de politique/règle :** Les règles de droit d'accès, de délégation et d'expiration doivent être explicitement définies et appliquées.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Collaboration ad hoc par courriel | Demandes structurées avec propriétaire et statut visibles | Courtiers et promoteurs doivent adopter un nouveau canal de collaboration |
| Outils/systèmes | Courriel/téléphone | Portail courtier avec accès délégué et basé sur les rôles | Nouveaux identifiants et approvisionnement d'accès pour les courtiers |
| Rôles/compétences | Relais manuel de l'information | Réponse et suivi libre-service des demandes | Les utilisateurs des opérations passent du relais à la supervision |
| Volume/charge de travail | Demandes dupliquées/perdues nécessitant des reprises | Duplication réduite grâce à la propriété visible | Effort initial d'approvisionnement d'accès pour les relations de courtage existantes |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Réseau de courtiers | Les courtiers obtiendront un accès direct et sécurisé aux dossiers et demandes assignés | Bulletin courtier, guide d'accueil | 3 à 4 semaines avant la mise en production | Propriétaire de produit |
| Promoteurs de régime | Les demandes d'information seront désormais suivies avec un statut visible | Bulletin promoteur | 2 semaines avant la mise en production | Propriétaire de produit |
| Opérations des nouvelles affaires | La collaboration est désormais suivie dans le système plutôt que relayée manuellement | Réunion d'équipe | 2 semaines avant la mise en production | Gestionnaire des opérations |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : courtiers (accès au portail et réponse aux demandes), utilisateurs des opérations (surveillance de l'historique de collaboration).
- Format : guide/vidéo d'accueil pour courtiers; guide de référence rapide pour les utilisateurs des opérations.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des trois canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Les courtiers continuent d'utiliser le courriel/téléphone par habitude | Réseau de courtiers | Fixer une date de bascule explicite et acheminer les nouvelles demandes uniquement via le portail |
| La configuration de l'accès/délégation crée de la friction à l'accueil des courtiers | Courtiers, opérations | Fournir un processus d'approvisionnement simple et un soutien dédié durant le déploiement |
| Promoteurs et courtiers ne savent pas clairement qui est responsable d'une demande donnée | Tous les rôles | Renforcer la conception à propriétaire visible dans les communications et la formation |

## 9. Critères de préparation et de mise en production
- [ ] Les trois fonctionnalités enfants approuvées et dans la portée
- [ ] Courtiers, promoteurs et utilisateurs des opérations identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Accès/délégation des courtiers approvisionnés et validés
- [ ] Modèle de soutien en hypersoins en place pour le premier cycle de collaboration
- [ ] Repli vers la collaboration par courriel défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Adoption du portail courtier | % de courtiers actifs utilisant l'accès au portail vs. le courriel | À confirmer | À approuver | Gestionnaire de produit |
| Taux de demandes en double | % de demandes identifiées comme des doublons | À confirmer | À approuver | Opérations |
| Délai de réponse aux demandes | Temps entre la création de la demande et la réponse | À confirmer | À approuver | Opérations |
| Satisfaction des courtiers | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

*(Contribue aux mesures d'initiative : satisfaction du promoteur et adoption numérique.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
