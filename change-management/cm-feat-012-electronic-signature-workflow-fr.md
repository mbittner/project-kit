# CM-FEAT-012 | Bilan de gestion du changement : Flux de signature électronique

*[Read this document in English](cm-feat-012-electronic-signature-workflow.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-012 Flux de signature électronique](../features/feat-012-electronic-signature-workflow-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-003 Collecte de documents et signature électronique](cm-epic-003-document-collection-and-e-signature-fr.md)

## 1. Sommaire du changement
Les promoteurs, courtiers et réviseurs de documents passent de signatures physiques ou d'outils de signature électronique ad hoc suivis manuellement à un flux de signature électronique géré avec attribution des signataires, suivi du statut et réception du document complété.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Signe physiquement ou via des outils de signature électronique déconnectés | Signe via un flux de signature intégré et suivi | Élevé |
| Représentant de courtier | Coordonne manuellement la collecte des signatures | Attribue les signataires et surveille le statut dans le système | Moyen |
| Réviseur de documents | Confirme manuellement que les signatures sont complètes | S'appuie sur le suivi automatisé du statut et la réception du document complété | Élevé |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le réviseur prépare manuellement les documents pour signature | Le réviseur envoie une trousse de signature directement depuis le dossier |
| Fournir l'information | Signataires identifiés de façon informelle par courriel | L'attribution des signataires est définie explicitement dans le système |
| Résoudre les problèmes | Le statut des signatures est suivi manuellement, souvent flou | Le suivi du statut montre la progression des signatures en temps réel |
| Confirmer et soumettre | L'achèvement est confirmé via un document numérisé retourné | La réception du document complété est générée automatiquement |
| Vérifier le statut | Le réviseur relance individuellement chaque signataire | Toutes les parties voient directement le statut actuel de la signature |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Trousse de signature, attribution des signataires, suivi du statut, réception du document complété.
- **Étapes supprimées/automatisées :** Coordination manuelle des processus de signature physiques ou déconnectés.
- **Nouvelles règles à suivre :** Seuls les types de documents admissibles peuvent être acheminés via le flux de signature électronique.
- **Nouvelles informations à fournir/réviser :** Attributions de signataires et statut d'achèvement en temps réel pour chaque trousse.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment attribuer les signataires et interpréter le suivi du statut.
- Visite guidée/courte vidéo : Oui — démonstration du flux de signature de bout en bout.
- Orientation intégrée à l'application : Affichage du suivi du statut (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — quels documents sont admissibles à la signature électronique.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les réviseurs de documents et les courtiers.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : responsable des réviseurs de documents, puis juridique/conformité pour les questions d'admissibilité à la signature.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Délai d'achèvement de la signature | Temps entre l'envoi et l'exécution complète | À confirmer | À approuver | Opérations |
| Adoption numérique | % de documents admissibles signés électroniquement | À confirmer | À approuver | Gestionnaire de produit |
| Exceptions | % de trousses de signature nécessitant une intervention manuelle | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction des promoteurs/courtiers envers la signature électronique | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| La signature électronique n'est pas acceptée pour tous les types de documents | Confirmer la liste des documents admissibles avec juridique/conformité avant la mise en production |
| Les signataires peu familiers avec le processus électronique l'abandonnent | Fournir une courte vidéo de démonstration et un soutien dédié à la mise en production |
| Données de suivi du statut incomplètes en raison de problèmes d'intégration | Valider l'intégration avec le fournisseur de signature avant le lancement |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec promoteurs, courtiers et réviseurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
