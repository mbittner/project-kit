# CM-FEAT-010 | Bilan de gestion du changement : Liste de contrôle des documents et téléversement sécurisé

*[Read this document in English](cm-feat-010-document-checklist-and-secure-upload.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-010 Liste de contrôle des documents et téléversement sécurisé](../features/feat-010-document-checklist-and-secure-upload-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-003 Collecte de documents et signature électronique](cm-epic-003-document-collection-and-e-signature-fr.md)

## 1. Sommaire du changement
Les promoteurs et courtiers passent de l'envoi de documents par courriel sans liste claire des éléments en suspens à l'utilisation d'une liste de contrôle dynamique et d'un téléversement sécurisé, avec statut des exigences et validation de fichier visibles.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Envoie des documents en pièces jointes sans liste de contrôle claire | Téléverse des documents selon une liste de contrôle dynamique | Élevé |
| Représentant de courtier | Achemine ou recueille manuellement les documents du promoteur | Utilise le même téléversement sécurisé et la même liste de contrôle | Moyen |
| Réviseur de documents | Suit manuellement quels documents sont arrivés | Voit le statut des exigences directement dans le système | Élevé |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur/courtier envoie des documents par courriel sans liste définie | Le promoteur/courtier ouvre le dossier et voit la liste de contrôle dynamique |
| Fournir l'information | Joint des fichiers de formats/qualité variables par courriel | Téléverse des fichiers de façon sécurisée avec validation de fichier intégrée |
| Résoudre les problèmes | Le réviseur signale manuellement les fichiers rejetés/invalides | La validation de fichier signale les problèmes au point de téléversement |
| Confirmer et soumettre | Aucun signal clair de ce qui reste en suspens | Le statut des exigences montre ce qui est complet et en suspens |
| Vérifier le statut | Le promoteur/courtier appelle pour vérifier ce qui manque | Le statut des exigences est visible directement à toutes les parties |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Liste de contrôle dynamique, téléversement sécurisé, validation de fichier, statut des exigences.
- **Étapes supprimées/automatisées :** Suivi manuel des documents reçus; échange de fichiers par courriel.
- **Nouvelles règles à suivre :** Les fichiers téléversés doivent réussir la validation (format, taille, type) avant d'être acceptés.
- **Nouvelles informations à fournir/réviser :** Statut des exigences en temps réel montrant les éléments en suspens vs. satisfaits de la liste de contrôle.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — types/tailles de fichiers acceptés et navigation de la liste de contrôle.
- Visite guidée/courte vidéo : Oui — pour les promoteurs et courtiers peu familiers avec le portail.
- Orientation intégrée à l'application : Messagerie de validation de fichier (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — gestion des fichiers rejetés ou trop volumineux.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les réviseurs de documents.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des réviseurs de documents, puis propriétaire de produit pour les problèmes de téléversement récurrents.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Adoption numérique des documents | % de documents soumis via le portail vs. le courriel | À confirmer | À approuver | Gestionnaire de produit |
| Achèvement | % de listes de contrôle entièrement satisfaites sans relance | À confirmer | À approuver | Propriétaire de produit / AA |
| Exceptions | % de fichiers échouant la validation dès la première tentative | À confirmer | À approuver | Opérations |
| Délai de traitement | Temps entre le début de la liste de contrôle et la satisfaction de tous les éléments | À confirmer | À approuver | Opérations |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les promoteurs/courtiers continuent d'envoyer des documents par courriel par habitude | Restreindre/retirer le canal courriel et fixer une date de bascule claire |
| La validation de fichier rejette des documents légitimes | Valider le parcours avec les utilisateurs et ajuster les règles de validation avant le lancement |
| Exigences de liste de contrôle peu claires ou incomplètes au lancement | Confirmer les définitions de la liste de contrôle de documents avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec promoteurs, courtiers et réviseurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
