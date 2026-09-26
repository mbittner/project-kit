# CM-FEAT-016 | Bilan de gestion du changement : Accès et délégation pour les courtiers

*[Read this document in English](cm-feat-016-broker-access-and-delegation.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-016 Accès et délégation pour les courtiers](../features/feat-016-broker-access-and-delegation-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-005 Collaboration avec les courtiers externes](cm-epic-005-external-broker-collaboration-fr.md)

## 1. Sommaire du changement
Les courtiers passent de l'absence d'accès direct au système — en s'appuyant sur le personnel interne pour relayer le statut des dossiers — à un accès délégué et basé sur les rôles à leurs dossiers d'intégration assignés, avec des contrôles d'accès et une expiration définis.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Représentant de courtier | Aucun accès direct au système; s'appuie sur le personnel interne | Accède directement aux dossiers assignés via un accès délégué et basé sur les rôles | Élevé |
| Administrateur promoteur de régime | S'appuie sur le courtier pour relayer l'information manuellement | Interagit avec un courtier ayant désormais une visibilité directe du dossier | Faible |
| Utilisateur des opérations des nouvelles affaires | Relaie manuellement l'information entre courtier et promoteur | Approvisionne/gère l'accès des courtiers plutôt que de relayer l'information | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le courtier demande une mise à jour au personnel interne | Le courtier se connecte et accède directement à ses dossiers assignés |
| Fournir l'information | S.O. (étape d'accès) | S.O. |
| Résoudre les problèmes | Les demandes d'accès sont traitées au cas par cas, sans processus formel | Le droit d'accès et la délégation sont approvisionnés formellement |
| Confirmer et soumettre | Aucune expiration définie pour les arrangements d'accès informels | Les règles d'expiration de l'accès sont appliquées automatiquement |
| Vérifier le statut | Le courtier attend une réponse du personnel | Le courtier voit le statut du dossier directement, en temps réel |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Droit d'accès au dossier, accès délégué, contrôles de rôle, expiration de l'accès.
- **Étapes supprimées/automatisées :** Relais manuel du statut des dossiers par le personnel des opérations internes.
- **Nouvelles règles à suivre :** L'accès des courtiers doit être explicitement attribué, contrôlé par rôle et assujetti à une expiration.
- **Nouvelles informations à fournir/réviser :** Registres de droit d'accès et de délégation pour chaque relation de courtage.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — guide d'accueil des courtiers couvrant la connexion, la portée d'accès et l'expiration.
- Visite guidée/courte vidéo : Oui — pour les courtiers nouveaux à l'accès direct au portail.
- Orientation intégrée à l'application : Messagerie sur les contrôles de rôle et la portée d'accès (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — que faire si l'accès expire ou n'est pas encore approvisionné.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires de relations avec les courtiers.
- Heures de bureau à la mise en production : à confirmer, particulièrement pour l'approvisionnement initial des courtiers.
- Parcours d'escalade : équipe des opérations des nouvelles affaires pour les problèmes d'approvisionnement d'accès.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Adoption du portail courtier | % de courtiers actifs utilisant l'accès délégué vs. s'appuyant sur le personnel | À confirmer | À approuver | Gestionnaire de produit |
| Délai d'approvisionnement de l'accès | Temps entre la demande et l'accès actif du courtier | À confirmer | À approuver | Opérations |
| Exceptions | % de problèmes d'accès nécessitant une intervention manuelle | À confirmer | À approuver | Opérations |
| Satisfaction des courtiers | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| La configuration de l'accès/délégation crée de la friction à l'accueil des courtiers | Fournir un processus d'approvisionnement simple et un soutien dédié durant le déploiement |
| Les courtiers continuent de contacter le personnel directement par habitude | Rediriger les demandes vers le portail et renforcer avec des communications |
| Règles de rôle/accès incomplètes ou trop restrictives au lancement | Valider les scénarios d'accès avec un groupe pilote de courtiers avant le déploiement complet |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec courtiers et personnel des opérations
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
