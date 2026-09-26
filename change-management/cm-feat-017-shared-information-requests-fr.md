# CM-FEAT-017 | Bilan de gestion du changement : Demandes d'information partagées

*[Read this document in English](cm-feat-017-shared-information-requests.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-017 Demandes d'information partagées](../features/feat-017-shared-information-requests-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-005 Collaboration avec les courtiers externes](cm-epic-005-external-broker-collaboration-fr.md)

## 1. Sommaire du changement
Les promoteurs et courtiers passent de l'échange de demandes par courriel sans propriétaire ni statut visibles à la réponse à des demandes d'information partagées montrant un répondant assigné clair, un parcours de soumission et un statut.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Répond à des demandes par courriel sans statut suivi | Répond à des demandes partagées avec propriétaire et statut visibles | Moyen |
| Administrateur des nouvelles affaires | Suit manuellement qui doit fournir quelle information | Voit directement le statut des demandes sans relancer individuellement | Moyen |
| Propriétaire de produit | Aucune visibilité sur les délais de cycle des demandes | Utilise les ICP de statut des demandes pour repérer les points de friction | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur/courtier reçoit une demande par courriel | Le promoteur/courtier voit la demande directement dans le dossier |
| Fournir l'information | Répond par courriel, facile à perdre de vue | Soumet une réponse via une soumission de réponse structurée |
| Résoudre les problèmes | Aucun propriétaire clair si une demande reste sans réponse | Le répondant assigné est visible pour toutes les parties |
| Confirmer et soumettre | Aucun registre cohérent qu'une demande a été satisfaite | Le statut de la demande se met à jour automatiquement à la réponse |
| Vérifier le statut | Le personnel relance manuellement pour vérifier les demandes en suspens | Le statut de la demande est visible en temps réel pour toutes les parties |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Création de demande, répondant assigné, soumission de la réponse, statut de la demande.
- **Étapes supprimées/automatisées :** Relance manuelle pour repérer les propriétaires de demande et les éléments en suspens.
- **Nouvelles règles à suivre :** Chaque demande doit avoir un répondant assigné et un statut traçable.
- **Nouvelles informations à fournir/réviser :** Réponses structurées liées à des demandes suivies spécifiques.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment répondre à une demande partagée et vérifier son statut.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Indicateurs de répondant assigné et de statut (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — ce qui se passe si une demande n'est pas répondue à temps.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les administrateurs des nouvelles affaires.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires pour les demandes non résolues.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Délai de réponse aux demandes | Temps entre la création de la demande et la réponse | À confirmer | À approuver | Opérations |
| Taux de demandes en double | % de demandes identifiées comme des doublons | À confirmer | À approuver | Opérations |
| Achèvement | % de demandes atteignant un statut fermé | À confirmer | À approuver | Gestionnaire de produit |
| Expérience utilisateur | Satisfaction des promoteurs/courtiers envers le processus de demande | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les promoteurs/courtiers répondent par courriel au lieu d'utiliser le système | Rediriger toutes les nouvelles demandes via le portail et fixer une date de bascule claire |
| Le répondant assigné est peu clair ou mal configuré | Valider la logique d'attribution avec les utilisateurs avant la mise en production |
| Demandes dupliquées entre les canaux courtier et promoteur | Renforcer la conception d'une demande unique par élément en formation |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec promoteurs et courtiers
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
