# STORY-XXX | <Titre du récit>

*[Read this document in English](story-template.md)*

> **Statut du document :** Ébauche
> **Version du document :** Not baselined  
> **Last validated:** Not recorded  
> **Fonctionnalité parente :** [FEAT-XXX <Nom de la fonctionnalité>](../features/feat-XXX-slug-fr.md)
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication.
> **Barrière de statut :** Valeurs valides : Ébauche, En révision, Approuvé. Ne passer à Approuvé qu'après avoir exécuté `/validate story <id>` et confirmé un score de 90+ (Prêt pour le sprint) avec tous les minimums obligatoires atteints, les listes de vérification « Prêt à démarrer » et « Terminé » entièrement cochées, et aucun marqueur `[NEEDS CLARIFICATION]` restant — puis remplacer « Not recorded » par : `> **Last validated:** <date> — Score <NN>/100 (Sprint-Ready)` (cette ligne technique reste en anglais pour la cohérence des outils).

## 1. Énoncé du récit
*(Obligatoire)*
```text
En tant que <utilisateur ou partie prenante>
Je veux <capacité ou résultat>
Afin de <valeur d'affaires ou utilisateur>.
```

## 2. Fonctionnalité parente
*(Obligatoire)* À quelle fonctionnalité et quel résultat de fonctionnalité ce récit contribue.
- Fonctionnalité : [FEAT-XXX <Nom de la fonctionnalité>](../features/feat-XXX-slug-fr.md)
- Résultat soutenu par ce récit : *(une ligne)*

## 3. Propriétaire du récit
*(Obligatoire)* Propriétaire de produit ou équivalent, responsable de la portée et de l'acceptation.
- *(à confirmer)*

## 4. Utilisateur principal / partie prenante
*(Obligatoire)* Qui a besoin de cela — précis, pas « les utilisateurs ».
- *(persona)*

## 5. Valeur d'affaires / utilisateur
*(Obligatoire)* Pourquoi c'est important — rendre le « afin de » explicite et, si possible, mesurable.
- *(énoncé de valeur)*

## 6. Critères d'acceptation
*(Obligatoire)* Conditions de satisfaction observables et testables.

> Étant donné `<précondition>`, quand `<déclencheur>`, alors :
> - *(condition observable)*
> - *(condition observable)*

## 7. Portée
*(Obligatoire)*

### Dans la portée
- *(élément)*

### Hors de la portée
- Capacités attribuées à un autre récit ou à la fonctionnalité parente.
- Choix d'implémentation technique finaux.

## 8. Dépendances
*(Obligatoire)*
- *(dépendance, p. ex. un autre récit, un système, une décision)*

## 9. Hypothèses
*(Obligatoire)*
- *(hypothèse)*

## 10. Risques
*(Seulement si pertinent — les petits récits n'en ont souvent aucun)*
- *(risque, ou « Aucun identifié »)*

<!--
Journal des questions ouvertes (Conditionnel — à inclure seulement s'il reste des éléments non résolus au-delà des 5 marqueurs [NEEDS CLARIFICATION] plafonnés; supprimer cette section s'il n'y a rien à consigner)

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| (question) | (pourquoi c'est important) | (date) | (responsable) | Ouverte |
-->

## 11. Liste de vérification « Prêt à démarrer »
- [ ] Énoncé du récit, fonctionnalité parente et propriétaire du récit complets
- [ ] Utilisateur principal/partie prenante et valeur énoncés
- [ ] Critères d'acceptation rédigés et testables
- [ ] Dépendances identifiées
- [ ] L'équipe a assez de détails pour estimer

## 12. Liste de vérification « Terminé »
- [ ] Chaque critère d'acceptation démontré comme satisfait
- [ ] Perspective d'assurance qualité incluse, pas seulement l'approbation Produit/BA
- [ ] Aucun marqueur `[NEEDS CLARIFICATION]` non résolu
- [ ] Le plan de mesure/ICP pertinent de la fonctionnalité parente mis à jour, le cas échéant
