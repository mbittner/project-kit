# CM-FEAT-005 | Bilan de gestion du changement : Révision de la soumission et attestation

*[Read this document in English](cm-feat-005-submission-review-and-attestation.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-005 Révision de la soumission et attestation](../features/feat-005-submission-review-and-attestation-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les promoteurs passent d'une soumission d'information sans étape de confirmation formelle à une révision d'un sommaire consolidé, des modifications si nécessaire, et une attestation formelle avant la soumission finale.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Soumet l'information sans révision consolidée | Révise un sommaire, modifie au besoin et atteste avant de soumettre | Moyen |
| Administrateur des nouvelles affaires | Ne peut être certain que la soumission a été révisée/confirmée par le promoteur | S'appuie sur une attestation enregistrée comme preuve de confirmation du promoteur | Moyen |
| Propriétaire de produit | Aucun registre cohérent de confirmation de soumission | Utilise les données de contrôle de soumission et d'attestation pour l'auditabilité | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Soumet l'information directement sans étape de révision | Atteint une révision consolidée avant la soumission finale |
| Fournir l'information | Aucun sommaire structuré de ce qui a été saisi | Voit un sommaire de révision de toute l'information saisie |
| Résoudre les problèmes | Doit contacter l'administrateur pour modifier des données déjà soumises | Peut modifier directement depuis l'écran de révision |
| Confirmer et soumettre | La soumission n'a aucune confirmation formelle enregistrée | Confirme via une attestation enregistrée et un contrôle de soumission |
| Vérifier le statut | On ne sait pas clairement si la soumission est finale | Le statut reflète clairement l'état attesté/soumis |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Sommaire de révision, modification depuis la révision, attestation, contrôle de soumission.
- **Étapes supprimées/automatisées :** Demandes de correction post-soumission en raison de l'absence d'une étape de révision.
- **Nouvelles règles à suivre :** L'attestation doit être complétée avant que le contrôle de soumission ne soit activé.
- **Nouvelles informations à fournir/réviser :** Une attestation enregistrée confirmant l'exactitude de l'information révisée.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — expliquant la séquence révision-attestation-soumission.
- Visite guidée/courte vidéo : Optionnel.
- Orientation intégrée à l'application : Sommaire de révision clair et état du contrôle de soumission (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — ce que représente l'attestation sur le plan légal/opérationnel.

## 6. Champions locaux / soutien des experts
- Champions : à confirmer.
- Heures de bureau à la mise en production : à confirmer.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires, puis conformité/juridique pour les questions d'attestation.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Achèvement | % de révisions atteignant une attestation complétée | À confirmer | À approuver | Gestionnaire de produit |
| Succès dès la première fois | % soumis sans modification post-soumission | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps passé dans l'étape de révision/attestation | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Confiance du promoteur envers le processus de révision | À confirmer | À approuver | Produit / UX |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les promoteurs traitent l'attestation comme une formalité et négligent la révision attentive | Concevoir le sommaire de révision pour mettre en évidence les champs clés/à risque élevé |
| Les exigences légales/de conformité pour l'attestation ne sont pas définies | Confirmer le libellé et les exigences d'attestation avant la mise en production |
| La modification depuis la révision rouvre inopinément des problèmes de validation | S'assurer que les modifications redéclenchent systématiquement la validation |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec des utilisateurs promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
