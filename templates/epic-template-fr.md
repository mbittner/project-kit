# EPIC-XXX | <Nom de l'épopée>

*[Read this document in English](epic-template.md)*

> **Statut du document :** Ébauche
> **Version du document :** Not baselined  
> **Last validated:** Not recorded  
> **Initiative parente :** [INIT-XXX <Nom de l'initiative>](../initiative/init-XXX-slug-fr.md)
> **Bilan de gestion du changement :** [CM-EPIC-XXX <Nom de l'épopée>](../change-management/cm-epic-XXX-slug-fr.md)
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication.
> **Barrière de statut :** Valeurs valides : Ébauche, En révision, Approuvé. Ne passer à Approuvé qu'après avoir exécuté `/validate epic <id>` et confirmé un score de 90+ avec tous les minimums obligatoires atteints, une liste de vérification entièrement cochée, et aucun marqueur `[NEEDS CLARIFICATION]` restant — puis remplacer « Not recorded » par : `> **Last validated:** <date> — Score <NN>/100 (Ready for Feature Discovery)` (cette ligne technique reste en anglais pour la cohérence des outils).

## 1. Sommaire de l'épopée
*(Obligatoire)* Une phrase : quelle capacité d'affaires existera une fois livrée. Nommez une capacité, pas une technologie (p. ex. « Prise en charge numérique des clients », pas « Gestion des dossiers Salesforce »).

**Valeur attendue :** *(une ligne — ce qui s'améliore une fois cette capacité en place)*

## 2. Problème / occasion d'affaires
*(Obligatoire)* Situation actuelle, points de douleur et impact d'affaires.

> *(Exemple : « Les conseillers soumettent actuellement les formulaires d'intégration par courriel et documents PDF, ce qui entraîne des délais et des reprises. »)*

## 3. Utilisateurs
*(Obligatoire)* Identifier qui bénéficie de cette capacité.

| Type d'utilisateur | Utilisateur |
|---|---|
| Principal | *(à confirmer)* |
| Secondaire | *(à confirmer)* |
| Opérationnel | *(à confirmer)* |

## 4. Résultat d'affaires
*(Obligatoire)* Quelle amélioration d'affaires mesurable devrait se produire? Des résultats, pas des livrables.
- *(résultat)*

## 5. Hypothèse de l'épopée
*(Obligatoire)* « Nous croyons que `<énoncé de capacité>`. Ceci devrait contribuer à `<résultat(s) d'affaires>`. L'hypothèse doit être vérifiée par les ICP de fonctionnalité et les résultats de l'initiative approuvés. »

## 6. Mesures de succès
*(Obligatoire)* Tableau d'ICP avec état actuel et cible.

| ICP | Actuel | Cible |
|---|---|---|
| *(ICP)* | *(référence à confirmer)* | *(cible à approuver)* |

## 7. Portée
*(Obligatoire)*

### Dans la portée
- *(élément)*

### Hors de la portée
- Capacités attribuées à une autre épopée de l'initiative parente.
- Conception technique finale et sélection de fournisseur.
- Changements de politique, juridiques, de confidentialité, de sécurité ou opérationnels non approuvés.

## 8. Fonctionnalités
*(Obligatoire)* Lier les canevas de fonctionnalité enfants une fois créés. Avant la décomposition, énumérer les fonctionnalités candidates.

| Fonctionnalité | Objectif |
|---|---|
| *(lien une fois créé, ou nom de fonctionnalité candidate)* | *(objectif)* |

## 9. Dépendances
*(Obligatoire)*
- *(dépendance, p. ex. services d'authentification, plateformes partagées, revues de sécurité/architecture, autres épopées)*

## 10. Risques et hypothèses
*(Obligatoire)*

| Risque | Impact | Réponse |
|---|---|---|
| *(risque)* | *(Élevé/Moyen/Faible)* | *(réponse)* |

**Hypothèses :**
- *(hypothèse)*

## 11. Responsabilité
*(Obligatoire)* Aucune épopée n'est approuvée sans responsabilité claire.

| Rôle | Requis | Nom |
|---|---|---|
| Gestionnaire de produit | Oui | *(à confirmer)* |
| Propriétaire de produit | Oui | *(à confirmer)* |
| Responsable d'affaires | Oui | *(à confirmer)* |

## Journal des questions ouvertes *(Conditionnel — à inclure seulement s'il reste des éléments non résolus au-delà des 5 marqueurs `[NEEDS CLARIFICATION]` plafonnés; supprimer cette section s'il n'y a rien à consigner)*

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| *(question)* | *(pourquoi c'est important)* | *(date)* | *(responsable)* | Ouverte |

## 12. Critères de préparation
- [ ] Objectif et limites de l'épopée approuvés
- [ ] Utilisateurs identifiés (principal, secondaire, opérationnel)
- [ ] Résultat d'affaires et mesures de succès convenus
- [ ] Fonctionnalités identifiées et liées (ou fonctionnalités candidates énumérées)
- [ ] Dépendances inter-épopées attribuées
- [ ] Principaux risques d'affaires, d'architecture, de contrôle et de changement examinés
- [ ] Responsabilité attribuée
