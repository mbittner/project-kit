# CM-FEAT-011 | Bilan de gestion du changement : Révision des documents et statut des versions

*[Read this document in English](cm-feat-011-document-review-and-version-status.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-011 Révision des documents et statut des versions](../features/feat-011-document-review-and-version-status-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-003 Collecte de documents et signature électronique](cm-epic-003-document-collection-and-e-signature-fr.md)

## 1. Sommaire du changement
Les réviseurs de documents passent du suivi manuel des versions et de l'acceptation par courriel ou feuilles de calcul à un système avec historique des versions, une décision de révision formelle, des demandes de correction, et un marqueur de version acceptée.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Réviseur de documents | Suit manuellement les versions et le statut d'acceptation | Classifie les documents à l'aide de l'historique des versions et de la disposition | Élevé |
| Administrateur promoteur de régime | Apprend les documents rejetés/incorrects par courriel | Voit directement les demandes de correction et le statut de version acceptée | Moyen |
| Représentant de courtier | Relaie les demandes de correction entre réviseur et promoteur | Voit directement les demandes de correction dans le système | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le réviseur ouvre un fil de courriel pour trouver la dernière version | Le réviseur ouvre le dossier et voit l'historique complet des versions |
| Fournir l'information | S.O. (étape de révision) | S.O. |
| Résoudre les problèmes | Le réviseur envoie une demande de correction informelle par courriel | Le réviseur émet une demande de correction structurée |
| Confirmer et soumettre | Acceptation communiquée de façon informelle | Le réviseur marque formellement la version acceptée |
| Vérifier le statut | Le promoteur/courtier ignore quelle version est actuelle | Le marqueur de version acceptée clarifie l'état actuel |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Historique des versions, décision de révision, demande de correction, marqueur de version acceptée.
- **Étapes supprimées/automatisées :** Suivi manuel des versions et demandes de correction informelles par courriel.
- **Nouvelles règles à suivre :** Les documents doivent être classifiés comme reçus, acceptés ou nécessitant une correction avant de progresser.
- **Nouvelles informations à fournir/réviser :** Historique complet des versions et disposition actuelle pour chaque document.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — catégories de disposition et ce que chacune signifie pour le promoteur/courtier.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Étiquetage de l'historique des versions et de la disposition (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment resoumettre après une demande de correction.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les réviseurs de documents.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable des réviseurs de documents pour les dispositions contestées.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Succès dès la première fois | % de documents acceptés sans correction | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps entre la réception et le marqueur de version acceptée | À confirmer | À approuver | Opérations |
| Exceptions | % de documents nécessitant plus d'un cycle de correction | À confirmer | À approuver | Opérations |
| Satisfaction des réviseurs | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les réviseurs sont incertains des nouvelles catégories de disposition | Fournir une aide au travail faisant le pont avec l'ancienne pratique |
| Les promoteurs/courtiers sont confus par le processus de demande de correction | Valider le parcours de correction avec les utilisateurs avant la mise en production |
| L'historique des versions perçu comme une complexité ajoutée | Mettre l'accent sur les avantages d'audit et de traçabilité en formation |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec réviseurs, promoteurs et courtiers
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
