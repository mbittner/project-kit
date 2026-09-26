# CM-FEAT-015 | Bilan de gestion du changement : Gestion des exceptions et des escalades

*[Read this document in English](cm-feat-015-exception-and-escalation-management.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-015 Gestion des exceptions et des escalades](../features/feat-015-exception-and-escalation-management-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-004 Gestion des flux de travail et des dossiers](cm-epic-004-workflow-and-case-management-fr.md)

## 1. Sommaire du changement
Les gestionnaires des opérations et spécialistes passent de la remontée d'exceptions par courriel ou téléphone sans suivi formel de propriété à la création de registres d'exception structurés avec gravité, responsable, parcours d'escalade et statut de résolution.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur des nouvelles affaires | Signale les exceptions de façon informelle par courriel/téléphone | Crée un registre d'exception structuré directement dans le dossier | Moyen |
| Gestionnaire des opérations | Gère les escalades de façon réactive et incohérente | Gère les escalades via un parcours formel et visible | Élevé |
| Spécialiste assigné | Apprend les exceptions de seconde main | Voit des registres d'exception avec gravité et propriété claires | Moyen |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le personnel remarque un problème et envoie un courriel/appelle quelqu'un | Le personnel crée un registre d'exception directement dans le dossier |
| Fournir l'information | Décrit le problème de façon informelle, incohérente | Consigne la gravité et le responsable dans un registre structuré |
| Résoudre les problèmes | Le parcours d'escalade est flou, dépend de qui est consulté | Le parcours d'escalade est défini et suivi de façon cohérente |
| Confirmer et soumettre | La résolution est communiquée de façon informelle, souvent non documentée | Le statut de résolution est consigné et visible pour toutes les parties prenantes |
| Vérifier le statut | Le gestionnaire ne peut voir le portrait complet des exceptions ouvertes | Le gestionnaire voit toutes les exceptions, gravités et responsables ensemble |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Registre d'exception, gravité et responsable, parcours d'escalade, statut de résolution.
- **Étapes supprimées/automatisées :** Signalement d'exception informel et non documenté par courriel/téléphone.
- **Nouvelles règles à suivre :** Chaque exception doit avoir une gravité, un responsable et un statut de résolution consignés avant sa fermeture.
- **Nouvelles informations à fournir/réviser :** Données d'exception structurées appuyant l'escalade et le suivi de la résolution.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — définitions de gravité et déclencheurs d'escalade.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Champs de parcours d'escalade et de statut de résolution (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — comment choisir le bon niveau de gravité.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer parmi les gestionnaires des opérations.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade pour les problèmes de la fonctionnalité : gestionnaire des opérations, puis propriétaire de produit.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Délai de résolution des exceptions | Temps entre la création et la fermeture du statut de résolution | À confirmer | À approuver | Opérations |
| Respect du parcours d'escalade | % d'exceptions suivant le parcours d'escalade défini | À confirmer | À approuver | Opérations |
| Exceptions | % de dossiers nécessitant une escalade | À confirmer | À approuver | Opérations |
| Satisfaction des gestionnaires | Score de sondage post-lancement | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Le personnel perçoit la consignation formelle des exceptions comme orientée vers le blâme | Présenter le processus comme un mécanisme de soutien, non une critique de performance |
| La classification de gravité est appliquée de façon incohérente | Fournir des définitions claires et des exemples en formation |
| Le personnel revient à l'escalade informelle par courriel/téléphone | Renforcer le système comme seul canal d'escalade reconnu |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec gestionnaires et spécialistes
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
