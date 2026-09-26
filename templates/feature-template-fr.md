# FEAT-XXX | Canevas de fonctionnalité : <Nom de la fonctionnalité>

*[Read this document in English](feature-template.md)*

> **Statut du document :** Ébauche
> **Version du document :** Not baselined  
> **Last validated:** Not recorded  
> **Épopée parente :** [EPIC-XXX <Nom de l'épopée>](../epics/epic-XXX-slug-fr.md)
> **Bilan de gestion du changement :** [CM-FEAT-XXX <Nom de la fonctionnalité>](../change-management/cm-feat-XXX-slug-fr.md)
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication.
> **Barrière de statut :** Valeurs valides : Ébauche, En révision, Approuvé. Ne passer à Approuvé qu'après avoir exécuté `/validate feature <id>` et confirmé un score de 90+ avec tous les minimums obligatoires atteints, une liste de vérification entièrement cochée, et aucun marqueur `[NEEDS CLARIFICATION]` restant — puis remplacer « Not recorded » par : `> **Last validated:** <date> — Score <NN>/100 (Story-ready)` (cette ligne technique reste en anglais pour la cohérence des outils).

## 1. Nom de la fonctionnalité et responsabilité
**Propriétaire de la fonctionnalité :** *(Propriétaire de produit ou équivalent, à confirmer)*
**Bénéficiaire principal :** *(qui reçoit le bénéfice direct)*
**Bénéficiaires secondaires :** *(le cas échéant)*

## 2. Objectif d'affaires
*(Obligatoire)* Énoncé court et orienté valeur de ce que livre cette fonctionnalité.

## 3. Problème de l'utilisateur ou de la partie prenante
*(Obligatoire)* Décrire le besoin, la difficulté, le risque ou l'occasion précis — pas la solution.

## 4. Énoncé de la fonctionnalité
*(Obligatoire)*
```text
Permettre à [bénéficiaire]
de [effectuer une action ou recevoir un service]
afin de [bénéfice attendu].
```

## 5. Hypothèse de bénéfice
*(Obligatoire)*
```text
Nous croyons que [fonctionnalité proposée]
pour [bénéficiaire]
entraînera [bénéfice attendu].

Nous saurons que c'est un succès lorsque [mesure et cible].
```

## 6. Description de la fonctionnalité
*(Obligatoire)* Développer le comportement en langage d'affaires clair — une fonction produit cohérente, pas un composant technique.

## 7. Personas
- Principal : *(persona)*
- Secondaire : *(persona)*
- Opérationnel : *(persona)*

## 8. Portée
*(Obligatoire)*

### Dans la portée
- *(élément)*

### Hors de la portée
- Capacités attribuées à une autre fonctionnalité ou épopée.
- Choix d'implémentation technique finaux.
- Changements de politique d'affaires non explicitement approuvés.

## 9. Critères d'acceptation au niveau de la fonctionnalité
*(Obligatoire)* Conditions de satisfaction observables et testables — au niveau de la fonctionnalité, pas un inventaire complet au niveau des récits.

> Étant donné `<précondition>`, quand `<déclencheur>`, alors :
> - *(condition observable)*
> - *(condition observable)*

## 10. Parcours utilisateur candidat
`<Étape 1> → <Étape 2> → <Étape 3> → <Étape 4>`

## 11. Règles d'affaires à valider
- *(règle)*

## 12. Données / Information
- *(élément de donnée)*

## 13. Considérations UX / Interface
- *(considération)*

## 14. Dépendances
*(Obligatoire)*
- *(dépendance, p. ex. capacité d'authentification, modèle de données en amont, règles de propriété, politique de rétention)*

## 15. Considérations non fonctionnelles / de qualité et de conformité
*(Obligatoire)* Sécurité, confidentialité, accessibilité, performance, disponibilité, auditabilité, rétention, conformité réglementaire. Indiquer explicitement « Non applicable » lorsque réellement non pertinent — ne pas omettre.
- *(considération)*

## 16. Mesures de succès
*(Obligatoire)*

| Mesure | Référence | Cible | Période de mesure |
|---|---:|---:|---|
| *(mesure)* | *(à confirmer)* | *(à approuver)* | *(période)* |

## 17. Hypothèses
*(Obligatoire)*
- *(hypothèse)*

## 18. Risques et mesures d'atténuation
*(Obligatoire)*

| Risque | Mesure d'atténuation proposée |
|---|---|
| *(risque)* | *(atténuation)* |

## 19. Récits utilisateur candidats
Énumérer les récits probables sans les spécifier entièrement dès la définition initiale de la fonctionnalité.
- *(récit candidat)*

## Journal des questions ouvertes *(Conditionnel — à inclure seulement s'il reste des éléments non résolus au-delà des 5 marqueurs `[NEEDS CLARIFICATION]` plafonnés; supprimer cette section s'il n'y a rien à consigner)*

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| *(question)* | *(pourquoi c'est important)* | *(date)* | *(responsable)* | Ouverte |

## 20. Liste de vérification de préparation de la fonctionnalité
- [ ] Objectif d'affaires, énoncé de fonctionnalité et hypothèse de bénéfice validés
- [ ] Bénéficiaire principal et personas validés avec les utilisateurs
- [ ] Portée, exclusions et règles d'affaires convenues
- [ ] Critères d'acceptation au niveau de la fonctionnalité définis et testables
- [ ] Données, intégrations, dépendances et considérations non fonctionnelles examinées
- [ ] Orientation UX et besoins de contenu identifiés
- [ ] Mesures de succès (référence, cible, période, responsable) convenues
- [ ] Récits candidats cartographiés et séquencés
- [ ] Décisions majeures, risques et hypothèses attribués
- [ ] Propriétaire de la fonctionnalité assigné et revue de faisabilité de l'équipe de livraison terminée
