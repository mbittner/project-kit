# CM-FEAT-006 | Bilan de gestion du changement : Confirmation de soumission et notifications

*[Read this document in English](cm-feat-006-submission-confirmation-and-notifications.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-006 Confirmation de soumission et notifications](../features/feat-006-submission-confirmation-and-notifications-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les promoteurs et les équipes internes passent d'un courriel de confirmation manuel et tardif à une référence de confirmation automatique, une notification de réception, une notification interne et un message de prochaine étape clair dès la soumission.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Attend un courriel de confirmation envoyé manuellement | Reçoit immédiatement une référence de confirmation et un message de prochaine étape | Moyen |
| Administrateur des nouvelles affaires | Envoie manuellement les confirmations et avise les parties concernées | S'appuie sur la notification de réception et les notifications internes automatiques | Moyen |
| Propriétaire de produit | Aucune visibilité sur la rapidité des confirmations | Utilise les ICP de réception/notification pour surveiller la rapidité | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Soumission complétée sans accusé de réception immédiat | La soumission déclenche automatiquement une référence de confirmation |
| Fournir l'information | S.O. (étape post-soumission) | S.O. |
| Résoudre les problèmes | Le promoteur téléphone pour confirmer la réception de la soumission | La notification de réception est envoyée automatiquement |
| Confirmer et soumettre | L'équipe interne est avisée manuellement, parfois tardivement | La notification interne se déclenche automatiquement |
| Vérifier le statut | Le promoteur ignore les prochaines étapes | Le message de prochaine étape clarifie ce qui suit |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Référence de confirmation, notification de réception, notification interne, message de prochaine étape.
- **Étapes supprimées/automatisées :** Courriels de confirmation manuels et notifications manuelles de transfert interne.
- **Nouvelles règles à suivre :** La confirmation et les notifications doivent être traçables jusqu'à la soumission d'origine.
- **Nouvelles informations à fournir/réviser :** Un numéro de référence de confirmation pour les demandes futures.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — ce que représente la référence de confirmation et où la trouver.
- Visite guidée/courte vidéo : Non requise.
- Orientation intégrée à l'application : Message de prochaine étape intégré à l'écran de confirmation (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — que faire si une confirmation n'est pas reçue.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires pour les notifications manquantes/retardées.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Achèvement | % de soumissions recevant une confirmation automatique | À confirmer | À approuver | Gestionnaire de produit |
| Délai de traitement | Temps entre la soumission et la livraison de la confirmation | À confirmer | À approuver | Opérations |
| Exceptions | % de confirmations nécessitant un suivi manuel | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction du promoteur envers la clarté de la confirmation | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Échecs de livraison des notifications (courriel/filtre anti-pourriel) | Fournir une vue de confirmation intégrée à l'application comme solution de repli au courriel |
| Les promoteurs continuent d'appeler pour confirmer la réception par habitude | Renforcer la visibilité de la référence de confirmation et la clarté de la prochaine étape |
| Règles d'acheminement des notifications internes incomplètes au lancement | Confirmer les règles d'acheminement et les responsables avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec les utilisateurs promoteurs et internes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
