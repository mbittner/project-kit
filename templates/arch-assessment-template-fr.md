# ARCH-XXX | Évaluation d'architecture : <Titre de la question de décision>

*[Read this document in English](arch-assessment-template.md)*

> **Statut de l'évaluation :** Ébauche  
> **Last validated:** Not recorded  
> **Architecte de solutions :** <nom, à confirmer>  
> **Responsable de la décision :** <nom ou rôle, à confirmer>  
> **Artéfacts d'affaires liés :** [FEAT-XXX <Nom de la fonctionnalité>](../../features/feat-XXX-slug-fr.md)  
> **Systèmes concernés :** <SYS-### — Nom canonique du système>, ou Aucun identifié  
> **Décision résultante :** Pas encore consignée  
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication.  
> **Barrière de statut :** Valeurs valides : Ébauche, En révision, Recommandée, Clôturée. Ne passer à Recommandée qu'après que `/validate assessment <id>` a confirmé une liste de vérification complète, aucun marqueur `[NEEDS CLARIFICATION]` restant et aucune question encore Ouverte dans le registre des questions. Passer à Clôturée une fois la décision consignée dans un ADR et liée ci-dessus. Le score est indicatif et ne bloque jamais le statut.

## 1. Question de décision et pourquoi maintenant
*(Obligatoire)* Une seule question à laquelle répond l'évaluation, p. ex. « Comment <capacité> doit-elle échanger <données> avec <SYS-### — système>? » Expliquer pourquoi la décision est nécessaire maintenant et ce qui arrive si elle est reportée.

## 2. Contexte d'affaires et résultats
*(Obligatoire)* Résumer les résultats, utilisateurs, portée et mesures de succès de l'initiative, de l'épopée ou de la fonctionnalité liée que cette décision doit appuyer. Lier les artéfacts d'affaires plutôt que les recopier.

## 3. Contraintes, normes et hypothèses
*(Obligatoire)*

| Type | Énoncé | Source | Statut |
|---|---|---|---|
| Contrainte / Norme / Hypothèse | *(énoncé)* | *(politique, norme, artéfact d'affaires ou personne)* | Confirmé / À confirmer |

## 4. Lacunes de données probantes
*(Obligatoire — « Aucune identifiée » est acceptable, le silence ne l'est pas)* Faits nécessaires à la décision qui ne sont pas encore connus (volumes, coûts, niveaux de service, conditions du fournisseur, qualité des données). Ne jamais inventer de valeurs.

## 5. Options envisagées
*(Obligatoire — au moins deux options réelles. Inclure le statu quo et des options non technologiques comme un processus, une politique ou la réutilisation, lorsque pertinent.)*

| Option | Description | Type d'option |
|---|---|---|
| A | *(description)* | Technologie / Processus / Politique / Réutilisation / Achat / Développement / Statu quo |
| B | *(description)* | *(type)* |

## 6. Critères d'évaluation
*(Obligatoire)* Chaque critère se rattache à un résultat d'affaires, une contrainte ou un attribut de qualité.

| Critère | Pourquoi c'est important | Se rattache à | Poids (facultatif) |
|---|---|---|---|
| *(critère)* | *(raison)* | *(résultat, contrainte ou exigence non fonctionnelle)* | *(Élevé / Moyen / Faible)* |

## 7. Analyse des compromis
*(Obligatoire)* Évaluer ou décrire chaque option selon les dimensions standard et les critères ci-dessus. Indiquer « À confirmer » lorsque les données manquent.

| Dimension | Option A | Option B |
|---|---|---|
| Adéquation aux besoins d'affaires | | |
| Impact sur l'intégration et les données | | |
| Sécurité et confidentialité | | |
| Attributs de qualité (disponibilité, performance, évolutivité, accessibilité) | | |
| Exploitation et soutien | | |
| Coût et complexité | | |
| Risque de livraison | | |
| Réversibilité | | |

## 8. Risques et dépendances
*(Obligatoire)*

| Risque ou dépendance | Option(s) touchée(s) | Impact | Réponse ou responsable |
|---|---|---|---|
| *(élément)* | *(A/B)* | Élevé / Moyen / Faible | *(réponse ou responsable)* |

## 9. Recommandation et justification
*(Obligatoire)* L'option recommandée, pourquoi elle répond le mieux aux critères, les compromis acceptés et les conditions qui changeraient la recommandation. Une recommandation n'est pas une décision; consigner la décision dans un ADR.

## 10. Registre des questions ouvertes
*(Conditionnel — conserver le tableau seulement s'il reste des questions.)*

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, à confirmer)* | *(rôle)* | Ouverte / Résolue |

## 11. Liste de vérification de préparation
- [ ] La question de décision est unique et liée à au moins un artéfact d'affaires
- [ ] Les résultats d'affaires et les contraintes qui orientent la décision sont énoncés
- [ ] Au moins deux options réelles, dont le statu quo ou une option non technologique lorsque pertinent
- [ ] Les critères d'évaluation se rattachent à des résultats, contraintes ou attributs de qualité
- [ ] Les compromis couvrent l'adéquation d'affaires, l'intégration et les données, la sécurité et la confidentialité, les attributs de qualité, l'exploitation, le coût et la complexité, le risque de livraison et la réversibilité
- [ ] Aucun coût, volume, niveau de service, responsable ou date inventé — les inconnues sont « À confirmer »
- [ ] Les risques et dépendances ont une réponse ou un responsable
- [ ] La recommandation et sa justification sont énoncées et clairement distinguées de la décision
- [ ] Les systèmes concernés sont cités sous la forme `SYS-### — Nom` et rapprochés du registre des systèmes
- [ ] Le responsable de la décision est identifié
