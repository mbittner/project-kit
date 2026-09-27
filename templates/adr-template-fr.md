# ADR-XXX | <Titre de la décision>

*[Read this document in English](adr-template.md)*

> **Statut de la décision :** Proposée  
> **Date de la décision :** Non décidée  
> **Last validated:** Not recorded  
> **Responsable de la décision :** <nom de l'architecte de solutions, à confirmer>  
> **Évaluation source :** [ARCH-XXX <Titre de l'évaluation>](../assessments/arch-XXX-slug-fr.md), ou Sans objet (<raison>)  
> **Artéfacts d'affaires liés :** [FEAT-XXX <Nom de la fonctionnalité>](../../features/feat-XXX-slug-fr.md)  
> **Systèmes concernés :** <SYS-### — Nom canonique du système>, ou Aucun identifié  
> **Remplace :** Aucune  
> **Remplacée par :** Aucune  
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication.  
> **Barrière de statut :** Valeurs valides : Proposée, Acceptée, Rejetée, Remplacée, Obsolète. Seul l'architecte de solutions peut accepter une décision, et seulement après que `/validate adr <id>` a confirmé une liste de vérification complète, aucun marqueur `[NEEDS CLARIFICATION]` restant et aucune question encore Ouverte dans le registre des questions. Inscrire la date de la décision lors de l'acceptation. Une fois Acceptée, ne pas modifier la substance de la décision : la remplacer par un nouvel ADR. Le score est indicatif et ne bloque jamais le statut.

## 1. Contexte
*(Obligatoire)* Les forces en présence : résultat d'affaires, contraintes, attributs de qualité et problème qui exige une décision. Lier les artéfacts d'affaires et l'évaluation plutôt que les recopier.

## 2. Décision
*(Obligatoire)* Une seule décision, énoncée à la voix active : « Nous allons ... ». Nommer les systèmes sous la forme `SYS-### — Nom`.

## 3. Options envisagées
*(Obligatoire)*

| Option | Résumé | Pourquoi retenue ou non |
|---|---|---|
| *(option retenue)* | *(résumé)* | Retenue — *(raison)* |
| *(solution de rechange)* | *(résumé)* | *(raison)* |

## 4. Justification
*(Obligatoire)* Pourquoi cette option répond le mieux aux résultats et contraintes, y compris les compromis acceptés en connaissance de cause.

## 5. Conséquences
*(Obligatoire — inclure les conséquences négatives.)*

| Type | Conséquence | Suivi ou responsable |
|---|---|---|
| Positive | *(conséquence)* | |
| Négative | *(conséquence)* | *(atténuation ou responsable)* |
| Suivi | *(travail requis, p. ex. conception, migration, nouvelle norme)* | *(responsable)* |

## 6. Conceptions touchées
*(Obligatoire — « Aucune pour l'instant » est acceptable)* Conceptions de solution régies par cette décision : [SD-XXX <Nom de la solution>](../designs/sd-XXX-slug-fr.md).

## 7. Déclencheur de révision
*(Obligatoire)* Le fait ou l'événement qui rouvrirait cette décision (p. ex. volume au-delà d'un seuil, fin du soutien d'un fournisseur, changement réglementaire).

## 8. Registre des questions ouvertes
*(Conditionnel — conserver le tableau seulement s'il reste des questions.)*

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, à confirmer)* | *(rôle)* | Ouverte / Résolue |

## 9. Liste de vérification de la décision
- [ ] Une seule décision, énoncée clairement
- [ ] Le contexte est lié à au moins un artéfact d'affaires et, s'il y a lieu, à l'évaluation source
- [ ] Au moins une solution de rechange consignée avec la raison pour laquelle elle n'a pas été retenue
- [ ] La justification explique les compromis acceptés
- [ ] Les conséquences négatives et les suivis sont consignés avec des responsables
- [ ] Les systèmes concernés sont cités sous la forme `SYS-### — Nom` et rapprochés du registre des systèmes
- [ ] Aucun conflit avec d'autres ADR Acceptés, ou le conflit est résolu par remplacement
- [ ] Le déclencheur de révision est défini
- [ ] Le responsable de la décision est nommé et la date de décision est inscrite lorsque Acceptée
