# CM-FEAT-004 | Bilan de gestion du changement : Sauvegarder et reprendre

*[Read this document in English](cm-feat-004-save-and-resume.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-004 Sauvegarder et reprendre](../features/feat-004-save-and-resume-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les promoteurs n'ont plus besoin de compléter la configuration de groupe en une seule séance ou de recommencer à zéro en cas d'interruption. Ils peuvent sauvegarder un brouillon, voir son statut et reprendre à partir de la dernière section complétée.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Complète les formulaires en une seule séance ou recommence en cas d'interruption | Sauvegarde des brouillons et reprend à la dernière section complétée | Moyen |
| Administrateur des nouvelles affaires | Aucune visibilité sur les soumissions en cours | Peut voir le statut des brouillons et relancer les brouillons abandonnés | Moyen |
| Propriétaire de produit | Ne peut pas mesurer où survient l'abandon | Utilise les ICP d'achèvement/exception pour repérer les points de friction | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Débute un formulaire sans état persistant | Ouvre le dossier et voit tout brouillon existant |
| Fournir l'information | Doit terminer en une séance ou perdre sa progression | Sauvegarde la progression à tout moment |
| Résoudre les problèmes | Recommence du début après une interruption | Reprend à partir de la dernière section complétée |
| Confirmer et soumettre | Aucune visibilité sur les soumissions bloquées | Le statut du brouillon est visible au promoteur et à l'administrateur |
| Vérifier le statut | Aucun suivi des tentatives abandonnées | Les brouillons abandonnés sont repérés et peuvent faire l'objet d'un suivi |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Sauvegarde de brouillon, reprise à partir de la dernière section complétée, statut du brouillon, gestion des brouillons abandonnés.
- **Étapes supprimées/automatisées :** Recommencer à zéro après une interruption.
- **Nouvelles règles à suivre :** Seul l'utilisateur autorisé (ou son délégué) peut reprendre un brouillon sauvegardé.
- **Nouvelles informations à fournir/réviser :** Statut du brouillon et dernier point sauvegardé dans la soumission.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — comment sauvegarder, reprendre et interpréter le statut du brouillon.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Langage clair de progression/statut (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — ce qu'il advient des brouillons abandonnés et leur durée de conservation.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires pour les problèmes de récupération de brouillon.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Achèvement | % de parcours amorcés éventuellement complétés (incluant les reprises) | À confirmer | À approuver | Gestionnaire de produit |
| Délai de traitement | Temps écoulé à travers les sessions de sauvegarde/reprise | À confirmer | À approuver | Opérations |
| Exceptions | % de brouillons abandonnés sans résolution | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Satisfaction des promoteurs envers la sauvegarde/reprise | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les utilisateurs pensent que la progression est perdue et ressaisissent inutilement les données | Communiquer clairement le comportement de sauvegarde/reprise dans l'application et la formation |
| Les brouillons abandonnés s'accumulent sans suivi | Définir et opérationnaliser les règles de gestion des brouillons abandonnés |
| Les exigences de conservation/confidentialité pour les brouillons stockés ne sont pas résolues | Confirmer les exigences de conservation, de confidentialité et de gestion des documents avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec des utilisateurs promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
