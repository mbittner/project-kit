# CM-EPIC-003 | Bilan de gestion du changement : Collecte de documents et signature électronique

*[Read this document in English](cm-epic-003-document-collection-and-e-signature.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée source :** [EPIC-003 Collecte de documents et signature électronique](../epics/epic-003-document-collection-and-e-signature-fr.md)  
> **Initiative parente :** [INIT-001 Moderniser l'intégration de nouvelles affaires](../initiative/init-001-modernize-new-business-onboarding-fr.md)  
> **Bilans de fonctionnalité enfants :** [CM-FEAT-010](cm-feat-010-document-checklist-and-secure-upload-fr.md) · [CM-FEAT-011](cm-feat-011-document-review-and-version-status-fr.md) · [CM-FEAT-012](cm-feat-012-electronic-signature-workflow-fr.md)

## 1. Sommaire du changement
Les promoteurs de régime, courtiers et réviseurs de documents passent de l'échange de pièces jointes par courriel à une liste de contrôle numérique contrôlée, un téléversement sécurisé, une révision versionnée et un flux de signature électronique.

## 2. Facteur d'affaires déterminant
- **Problème résolu :** Échanges de documents manuels, information fragmentée, validation tardive et visibilité limitée du statut dans le parcours d'intégration actuel.
- **Valeur attendue :** Moins de pièces jointes par courriel, une meilleure exhaustivité des documents et une auditabilité améliorée.
- **Ce qui se produit si nous n'agissons pas :** La collecte de documents demeure dispersée à travers des fils de courriel, le contrôle des versions reste informel, et les preuves d'audit de réception/acceptation/signature demeurent incomplètes.

## 3. Groupes de parties prenantes touchés
| Groupe de parties prenantes | Rôle aujourd'hui | Rôle après le changement | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Envoie des documents en pièces jointes par courriel | Téléverse des documents selon une liste de contrôle dynamique et signe électroniquement | Élevé |
| Représentant de courtier | Achemine ou recueille manuellement les documents du promoteur | Soumet et suit les documents via le même portail sécurisé | Moyen |
| Réviseur de documents | Suit manuellement la réception/version/acceptation par courriel ou feuilles de calcul | Classe les documents comme reçus/acceptés/à corriger avec historique de versions complet | Élevé |

## 4. Nature du changement
- **Changement de processus :** La collecte de documents devient pilotée par liste de contrôle avec statut des exigences visible, plutôt que des pièces jointes ad hoc par courriel.
- **Changement d'outil/système :** Introduction du téléversement sécurisé, de la révision/version des documents, et d'un flux de signature électronique.
- **Changement de rôle/responsabilité :** Les réviseurs classifient et disposent formellement des documents plutôt que de suivre le statut de façon informelle.
- **Changement de politique/règle :** L'acceptation des documents et l'achèvement de la signature deviennent des statuts explicites et auditables.

## 5. Évaluation de l'impact du changement
| Dimension | État actuel | État futur | Écart / perturbation |
|---|---|---|---|
| Processus | Échange de documents par courriel, suivi informel | Téléversement sécurisé piloté par liste de contrôle avec statut visible | Les utilisateurs doivent adopter le portail plutôt que le courriel |
| Outils/systèmes | Pièces jointes courriel, lecteurs partagés | Téléversement sécurisé, historique de versions, signature électronique | Nouveaux identifiants/accès et outillage de signature |
| Rôles/compétences | Suivi manuel des documents | Décision de révision structurée et demandes de correction | Les réviseurs ont besoin d'une formation sur les catégories de décision |
| Volume/charge de travail | Temps consacré à relancer des documents manquants/incorrects | Relances réduites grâce à la liste de contrôle et à la validation | Augmentation à court terme des demandes de correction pendant la stabilisation des règles |

## 6. Plan de communication
| Auditoire | Message clé | Canal | Échéancier | Responsable |
|---|---|---|---|---|
| Promoteurs de régime et courtiers | Les documents sont maintenant soumis et signés via une liste de contrôle en ligne sécurisée | Bulletin promoteur/courtier, orientation intégrée à l'application | 2 à 4 semaines avant la mise en production | Propriétaire de produit |
| Réviseurs de documents | La révision et la disposition se font dans le nouveau portail avec historique de versions | Réunion d'équipe, procédures mises à jour | 2 semaines avant la mise en production | Gestionnaire des opérations |
| Commanditaire exécutif | Cette épopée améliore l'exhaustivité des documents et l'auditabilité | Mise à jour au comité de pilotage | Avant la construction et avant le lancement | Gestionnaire de produit |

## 7. Besoins de formation et d'habilitation
- Rôles nécessitant une formation formelle : réviseurs de documents (flux de disposition et de correction), promoteurs/courtiers (liste de contrôle et signature électronique).
- Format : séance en salle pour les réviseurs; courte vidéo/guide rapide pour les promoteurs et courtiers.
- Responsable et date cible d'achèvement : à confirmer.
- Documentation source : sections Considérations UX / Interface des trois canevas de fonctionnalité enfants.

## 8. Risques de résistance et mesures d'atténuation
| Risque | Source probable | Mesure d'atténuation |
|---|---|---|
| Les promoteurs/courtiers continuent d'envoyer des documents par courriel par habitude | Utilisateurs externes | Restreindre ou retirer le canal courriel à la mise en production; renforcer avec des communications |
| Les réviseurs sont incertains des nouvelles catégories de disposition | Réviseurs de documents | Fournir une aide au travail claire faisant le pont entre l'ancienne et la nouvelle pratique |
| La signature électronique n'est pas acceptée pour tous les types de documents | Juridique/conformité | Confirmer la liste des documents admissibles avant la mise en production (voir la Portée de l'épopée source) |

## 9. Critères de préparation et de mise en production
- [ ] Les trois fonctionnalités enfants approuvées et dans la portée
- [ ] Promoteurs, courtiers et réviseurs identifiés et informés
- [ ] Communications pré-lancement exécutées
- [ ] Formation complétée pour les réviseurs et matériel libre-service publié pour les promoteurs/courtiers
- [ ] Modèle de soutien en hypersoins en place pour le premier cycle de documents
- [ ] Repli vers la gestion manuelle des documents défini en cas de défaut majeur
- [ ] Critères de préparation de l'épopée (épopée source, section 10) satisfaits

## 10. Mesure de l'adoption et des bénéfices
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Adoption numérique des documents | % de documents soumis via le portail vs. le courriel | À confirmer | À approuver | Gestionnaire de produit |
| Exhaustivité des documents | % de listes de contrôle entièrement satisfaites sans relance | À confirmer | À approuver | Opérations |
| Délai d'achèvement de la signature | Temps entre l'envoi et l'exécution complète | À confirmer | À approuver | Opérations |
| Satisfaction des réviseurs | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

*(Contribue aux mesures d'initiative : taux de traitement manuel et taux de reprise/clarification.)*

## 11. Liste de vérification d'approbation
- [ ] Commanditaire du changement nommé
- [ ] Évaluation de l'impact sur les parties prenantes révisée
- [ ] Plans de communication et de formation approuvés
- [ ] Mesures d'adoption et responsables convenus
- [ ] Soutien de mise en production et d'hypersoins confirmé
