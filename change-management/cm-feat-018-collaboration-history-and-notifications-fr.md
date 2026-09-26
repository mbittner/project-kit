# CM-FEAT-018 | Bilan de gestion du changement : Historique de collaboration et notifications

*[Read this document in English](cm-feat-018-collaboration-history-and-notifications.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-018 Historique de collaboration et notifications](../features/feat-018-collaboration-history-and-notifications-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-005 Collaboration avec les courtiers externes](cm-epic-005-external-broker-collaboration-fr.md)

## 1. Sommaire du changement
Les courtiers, promoteurs et utilisateurs des opérations passent d'un historique de collaboration dispersé dans des fils de courriel sans alertes proactives à un historique des activités maintenu avec notifications d'événements, gestion des préférences et statut lu/non lu.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Représentant de courtier | Recherche dans d'anciens fils de courriel pour reconstituer l'historique | Consulte un historique des activités consolidé dans le système | Moyen |
| Administrateur promoteur de régime | Manque des mises à jour noyées dans le courriel | Reçoit des notifications d'événements pour les changements pertinents | Moyen |
| Utilisateur des opérations des nouvelles affaires | Avise manuellement les parties des changements | S'appuie sur des notifications d'événements automatiques | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | La partie recherche dans les fils de courriel pour le contexte antérieur | La partie ouvre le dossier et consulte l'historique des activités |
| Fournir l'information | S.O. (étape d'historique/notification) | S.O. |
| Résoudre les problèmes | Des mises à jour sont manquées à cause de la surcharge de courriel | Les notifications d'événements alertent automatiquement les parties concernées |
| Confirmer et soumettre | Aucun registre de qui a vu une mise à jour | Le statut lu/non lu suit l'engagement envers les mises à jour |
| Vérifier le statut | Reconstituer « qui savait quoi, quand » est difficile | L'historique des activités fournit un registre chronologique clair |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Historique des activités, notifications d'événements, gestion des préférences, statut lu/non lu.
- **Étapes supprimées/automatisées :** Aviser manuellement les parties et reconstituer l'historique à partir des fils de courriel.
- **Nouvelles règles à suivre :** Les événements pertinents doivent générer une notification selon les préférences de l'utilisateur.
- **Nouvelles informations à fournir/réviser :** Préférences de notification et historique chronologique des activités par dossier.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment configurer les préférences de notification et lire l'historique des activités.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Indicateurs lu/non lu et paramètres de notification (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment ajuster la fréquence/le canal de notification.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires de relations avec les courtiers.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des opérations des nouvelles affaires pour les notifications manquées/incorrectes.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Engagement envers les notifications | % de notifications marquées comme lues dans une fenêtre définie | À confirmer | À approuver | Gestionnaire de produit |
| Exceptions | % d'échecs de livraison de notifications | À confirmer | À approuver | Opérations |
| Délai de traitement | Temps entre l'événement et l'accusé de réception de l'utilisateur | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction envers la pertinence/fréquence des notifications | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Le volume de notifications submerge les utilisateurs (fatigue d'alerte) | Permettre l'ajustement des préférences et opter par défaut pour des seuils raisonnables |
| Les utilisateurs s'appuient encore sur le courriel pour le contexte historique par habitude | Renforcer l'historique des activités comme registre faisant autorité |
| Les échecs de livraison des notifications réduisent la confiance envers la fonctionnalité | Surveiller étroitement les taux de livraison durant le déploiement initial |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec courtiers, promoteurs et utilisateurs des opérations
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
