# CM-FEAT-001 | Bilan de gestion du changement : Assistant de configuration de groupe en ligne

*[Read this document in English](cm-feat-001-online-group-setup-wizard.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-001 Assistant de configuration de groupe en ligne](../features/feat-001-online-group-setup-wizard-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les administrateurs promoteurs de régime cessent d'assembler l'information sur l'entreprise, la division, la classe, la facturation et la soumission à travers des formulaires, feuilles de calcul et courriels séparés. Ils complètent plutôt un seul assistant numérique guidé avec suivi de progression, aide contextuelle et navigation de révision.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Assemble manuellement l'information de configuration à travers des formulaires/courriels | Complète des sections guidées dans l'assistant avec aide contextuelle | Élevé |
| Administrateur des nouvelles affaires | Réconcilie et relance les détails de configuration manquants/incorrects | Révise une soumission complète et structurée | Moyen |
| Propriétaire de produit | Recueille les exigences de façon informelle à partir de la rétroaction du terrain | Utilise les ICP d'achèvement/première soumission pour prioriser le carnet | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur repère le bon formulaire/gabarit par courriel | Le promoteur ouvre directement un dossier autorisé dans l'assistant |
| Fournir l'information | Remplit des formulaires/feuilles de calcul déconnectés au fil du temps | Complète des sections guidées avec un indicateur de progression visible |
| Résoudre les problèmes | Les erreurs sont trouvées plus tard par le personnel, exigeant des va-et-vient | Les erreurs sont signalées immédiatement avec des indications concrètes |
| Confirmer et soumettre | Soumet par courriel sans confirmation formelle | Confirme l'action via la navigation de révision de l'assistant |
| Vérifier le statut | Appelle ou envoie un courriel pour demander le statut | Consulte le statut mis à jour directement dans l'assistant |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Sections guidées, indicateur de progression, aide contextuelle, navigation de révision.
- **Étapes supprimées/automatisées :** Assemblage manuel de plusieurs formulaires/feuilles de calcul; va-et-vient par courriel pour les détails manquants.
- **Nouvelles règles à suivre :** Seuls les rôles autorisés peuvent consulter/modifier l'information de configuration; les données obligatoires doivent être complètes avant la soumission; les données invalides doivent être corrigées avant de continuer.
- **Nouvelles informations à fournir/réviser :** Données structurées sur l'entreprise, la division, la classe, la facturation et la soumission, avec statut de validation visible en tout temps.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — visite guidée d'une page de l'assistant pour les promoteurs.
- Visite guidée/courte vidéo : Oui — vidéo de 3 à 5 minutes couvrant les sections guidées et les points de sauvegarde.
- Orientation intégrée à l'application : Indicateur de progression et aide contextuelle intégrés à la fonctionnalité (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — erreurs de validation courantes et comment les résoudre.

## 6. Champions locaux / soutien des experts
- Champions nommés par équipe/région : à confirmer avec le responsable des opérations des nouvelles affaires.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade pour les problèmes découverts après le lancement : équipe des administrateurs des nouvelles affaires, puis propriétaire de produit.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux d'achèvement de l'assistant | % de parcours d'assistant amorcés qui sont complétés | À confirmer | À approuver | Gestionnaire de produit |
| Succès dès la première fois | % complété sans correction ni suivi | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps écoulé/actif pour compléter la configuration | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction du promoteur envers l'assistant | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les promoteurs reviennent à l'envoi d'information par courriel | Restreindre/retirer le canal de prise en charge par courriel et rediriger vers l'assistant |
| Confusion pendant une période de transition en parallèle | Communiquer une date de bascule claire pour le processus hérité |
| Règles d'affaires incomplètes au lancement, causant une validation incohérente | Animer des ateliers de règles et maintenir un journal de décisions avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec des utilisateurs promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
