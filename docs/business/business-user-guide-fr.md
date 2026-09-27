# Guide d'utilisation pour les gens d'affaires : travailler avec l'assistant aux exigences

*[Read this guide in English](business-user-guide.md)*

Ce guide explique ce qui se passe lorsque les gestionnaires de produit et propriétaires de produit utilisent Copilot Chat dans cet espace de travail : quoi demander, ce que l'assistant vérifie, à quoi servent les commandes enregistrées et quelles décisions restent humaines.

## Comment l'aide est organisée

| Élément | Fonction | Valeur pour vous |
|---|---|---|
| Instructions de l'espace de travail | Appliquent les conventions communes : identifiants, paires bilingues, liens parentaux et présence dans les tables des matières | Les documents suivent les mêmes règles sans que vous ayez à les mémoriser |
| Guides par type d'artéfact | Fournissent le processus détaillé et les critères de qualité pour les initiatives, épopées, fonctionnalités, récits et bilans de gestion du changement | Chaque document reste au bon niveau et les renseignements importants manquants sont signalés |
| Assistants spécialisés | BA Requirements Writer aide à rédiger; BA Requirements Reviewer fournit une critique indépendante en lecture seule | Choisissez une aide ciblée pour créer ou réviser un artéfact d'affaires |
| Assistants spécialisés | BA Requirements Writer aide à rédiger; BA Requirements Reviewer fournit une critique indépendante; Lifecycle Navigator recommande la prochaine étape | Choisissez la rédaction, la révision indépendante ou une recommandation fondée sur les éléments disponibles |
| Commandes obliques | Exécutent des tâches répétables : proposer des fonctionnalités, valider un artéfact ou partager du travail | Les processus à plusieurs étapes sont plus faciles à demander de façon cohérente |
| Scripts d'intégrité | Vérifient les éléments pouvant être vérifiés mécaniquement : liens, identifiants, paires linguistiques, en-têtes et présence dans les tables des matières | Ils détectent des omissions faciles à manquer en révision |
| Registres | Résument les parties prenantes et l'état de la documentation | Ils facilitent la consultation des responsables, des impacts, du travail actif et des bases approuvées |

Une commande oblique est un raccourci vers un processus enregistré. Les guides fournissent à Copilot les étapes propres au domaine. Les scripts réalisent des vérifications ciblées; ils ne remplacent pas le jugement d'affaires. Vous pouvez utiliser la conversation Copilot habituelle pour les demandes courantes, choisir **BA Requirements Writer** pour une aide spécialisée à la rédaction ou **BA Requirements Reviewer** pour une révision distincte qui ne modifie aucun fichier.
Choisissez **Lifecycle Navigator** lorsque vous hésitez entre poursuivre la découverte, avancer vers la livraison, vérifier une hypothèse ou consulter une personne spécialiste. Il lit l'artéfact pertinent et formule une recommandation en lecture seule; il n'approuve pas le travail et ne décide pas à votre place.
Les garanties de gestion du travail sont documentées indépendamment de l'interface et du stockage actuels. Copilot Chat et la copie partagée hébergée sur GitHub sont les choix actuels; les remplacer ne change pas ce que l'enregistrement ou le partage garantit.

## Exemple : de l'idée à l'épopée

Supposons que vous êtes gestionnaire de produit et souhaitez créer une épopée sous une initiative existante. Commencez par un résultat d'affaires et les personnes touchées. Par exemple :

> « Rédige une épopée sous <identifiant d'initiative> pour <capacité d'affaires>. Le résultat visé est <résultat mesurable>. Garde l'épopée centrée sur une capacité d'affaires, sans nommer de solution technique et sans inventer de faits. »

### 1. Copilot vérifie le contexte

Le guide `epic-documentation` demande à Copilot de confirmer l'initiative parente, d'en lire les résultats et le portefeuille d'épopées, d'examiner les épopées sœurs et de trouver le prochain identifiant `EPIC-XXX` disponible. Avant de lire ce portefeuille ou de choisir un identifiant, la création d'épopée exécute automatiquement le processus `/get-latest`; vous n'avez pas à lancer la commande manuellement. Si vous avez des modifications non enregistrées, Copilot vous demande d'abord de les enregistrer. Il s'arrête pour résoudre les conflits et vous informe si l'actualisation est impossible. Le script `check-ids.ps1` confirme ensuite qu'un identifiant est libre et qu'il n'y a ni doublon ni trou dans la séquence.

**Valeur :** L'épopée est rattachée à la bonne initiative et risque moins de dupliquer une capacité existante ou d'entrer en conflit avec un nouvel identifiant.

### 2. Copilot rédige l'épopée dans les deux langues

Le guide d'épopée s'appuie sur les gabarits anglais et français. Il structure le document autour du problème d'affaires, des utilisateurs, de la capacité, du résultat, des mesures de succès, de la portée, des dépendances, des risques, des hypothèses, des responsables et des critères de préparation. Il évite les exigences détaillées et la conception technique, qui appartiennent aux niveaux inférieurs.

À partir d'une courte demande, Copilot peut faire des hypothèses structurelles raisonnables, mais doit les rendre visibles et ne doit pas inventer de responsable, de date, de cible ou de nom de partie prenante. Il pose des questions sur les inconnues importantes et consigne les éléments non résolus dans la section de clarification ou de questions ouvertes appropriée.

**Valeur :** Vous obtenez une première ébauche révisable sans devoir construire vous-même la structure; les versions anglaise et française sont créées ensemble.

### 3. Les parties prenantes sont vérifiées et documentées

Le guide `stakeholder-register-validation` compare les utilisateurs et groupes touchés nommés avec le registre central. Il réutilise les noms de groupes déjà établis, ajoute les nouveaux groupes réellement pertinents aux deux versions du registre et actualise les documents dans lesquels ils sont impliqués. Lorsqu'un nouveau groupe touché est identifié, Copilot demande qui est son gestionnaire et son expert en la matière (SME). Si l'un de ces contacts est inconnu, il indique « À confirmer » et consigne la question précise dans la section des questions ouvertes du groupe. Les noms et réponses ne sont jamais devinés.

Le script `check-stakeholders.ps1` est un avertissement heuristique distinct. Il peut signaler des noms possiblement absents du registre dans les sections de parties prenantes, mais il ne détermine pas seul si la correspondance est correcte et ne modifie pas le registre.

**Valeur :** Les utilisateurs du document sont visibles et traçables; vous savez qui consulter et quelles coordonnées restent à confirmer.

### 4. La portée et les chevauchements sont examinés

Le guide d'épopée vérifie que la proposition est bien une capacité d'affaires de niveau épopée : ni assez large pour relever de l'initiative, ni assez étroite pour être une fonctionnalité. Il applique également `sibling-overlap-validation` pour comparer la capacité et la portée proposées aux autres épopées de la même initiative.

Si vous planifiez plusieurs épopées, `/decompose-initiative <numéro d'initiative>` récupère automatiquement les dernières mises à jour avant de lire l'initiative et de proposer un ensemble cohérent sans chevauchements. Après votre confirmation, il actualise de nouveau les données avant d'attribuer les identifiants et de créer les fichiers. Si les nouveaux changements touchent l'initiative ou l'ensemble proposé, Copilot révise la proposition et vous demande une nouvelle confirmation.

**Valeur :** Des limites claires réduisent le travail en double et rendent la décomposition en fonctionnalités plus utile.

### 5. Les liens parentaux et les tables des matières sont mis à jour

Lors de la création de l'épopée, le portefeuille d'épopées de l'initiative parente est mis à jour et les tables des matières anglaise et française reçoivent les entrées correspondantes. L'en-tête de l'épopée renvoie à l'initiative et au bilan de gestion du changement; les artéfacts connexes sont liés au fur et à mesure.

**Valeur :** Les personnes peuvent naviguer entre initiative, épopée, fonctionnalités et documentation du changement sans fouiller les dossiers.

### 6. Les fonctionnalités ne sont proposées que sur demande

Quand l'épopée est prête à être décomposée, utilisez :

```text
/decompose-epic <numéro d'épopée>
```

La commande lit le résultat, la portée et la liste de fonctionnalités existantes de l'épopée. Elle propose des fonctionnalités couvrant les éléments inclus, vérifie les propositions entre elles et par rapport aux fonctionnalités sœurs, puis présente l'ensemble pour révision. **Aucun fichier de fonctionnalité n'est créé avant votre confirmation.** Après confirmation, le processus des fonctionnalités crée les documents bilingues et met à jour les liens dans l'épopée et les tables des matières.

**Valeur :** Vous pouvez ajuster la structure du travail avant qu'elle ne devienne un ensemble de documents et d'engagements.

### 7. La préparation est validée

Lorsque l'épopée est prête pour une révision de qualité et de préparation, utilisez :

```text
/validate epic <numéro d'épopée>
```

Le validateur applique le modèle de qualité, les garde-fous, la liste de contrôle et la barrière d'approbation de l'épopée. Il indique un score, les lacunes précises et si l'épopée est admissible à la découverte des fonctionnalités. Le seuil de préparation d'une épopée est de 90/100, avec des scores minimums obligatoires dans des dimensions clés. La validation est en lecture seule, sauf si vous demandez explicitement des changements.

Le processus exécute aussi des vérifications d'intégrité pertinentes : identifiants, parité anglais-français, résolution des liens, avertissements sur les parties prenantes, cohérence des en-têtes et présence des documents d'affaires dans la table des matières. Un avertissement heuristique est consultatif; Copilot doit l'expliquer plutôt que modifier le registre sans le dire.

Si l'épopée réussit et que vous demandez son approbation, Copilot la compare à sa dernière version approuvée lorsqu'elle existe et propose une version de base. Si vous demandez de consigner la proposition avant de décider, une section **Proposition de version de base en attente** est ajoutée aux deux versions linguistiques. Elle ne modifie ni `Version du document` ni le registre des bases approuvées. Lorsque vous confirmez l'approbation et la version proposée, la section en attente est retirée, la version et la preuve de validation sont enregistrées, puis le registre est actualisé.

**Valeur :** Vous obtenez une décision de préparation structurée et des corrections exploitables. Un score seul ne vaut pas approbation.

### 8. Le travail est enregistré, partagé et suivi

Utilisez `/save-my-work` pour consigner les modifications et mettre à jour la section **Travail actif** du registre lorsqu'une exigence est toujours en cours. Copilot demande les renseignements manquants sur le responsable et la prochaine étape; les inconnues restent « À confirmer ». Pour chaque ensemble de changements significatif, Copilot classe les changements d'affaires et techniques, actualise automatiquement la documentation pertinente et crée une note de version horodatée. Le générateur actualise les totaux et les bases approuvées sans écraser les notes de Travail actif.

Utilisez `/share-my-work` lorsque vous êtes prête ou prêt à partager. La commande récupère d'abord les dernières mises à jour, explique les conflits à résoudre, actualise la documentation pour les changements reçus, réutilise la note de version en attente ou consigne un ajout distinct, puis exécute les vérifications. Elle demande votre confirmation avant de publier les changements prévus dans l'espace partagé, vérifie la réussite et signale tout échec sans perdre le travail local. `/show-history <identifiant de document>` explique la chronologie des modifications; `/undo-my-last-change` explique ce qui serait perdu avant de demander votre confirmation.

**Valeur :** Le travail a un responsable et une prochaine étape visibles, le sommaire des bases approuvées reste cohérent avec les en-têtes et les changements sont traçables.

## Autres commandes utiles

| Commande | Quand l'utiliser |
|---|---|
| `/decompose-initiative <numéro d'initiative>` | Proposer un ensemble non chevauchant d'épopées sous une initiative |
| `/decompose-epic <numéro d'épopée>` | Proposer des fonctionnalités sous une épopée; confirmer l'ensemble avant la création des fichiers |
| `/decompose-feature <numéro de fonctionnalité>` | Proposer des récits sous une fonctionnalité; confirmer l'ensemble avant la création des fichiers |
| `/validate epic <numéro d'épopée>` | Évaluer une épopée et vérifier sa préparation; remplacez `epic` par le type d'artéfact à valider |
| `/audit-pack <identifiant d'initiative>` | Examiner une initiative et ses descendants : qualité, chevauchements, traçabilité des ICP et fatigue liée au changement |
| `/screen-architecture <type> <numéro>` | Savoir si une épopée ou une fonctionnalité exige un architecte de solutions avant la livraison; rien n'est modifié |
| `/get-latest` | Actualiser manuellement les mises à jour pour les processus sans vérification automatique de fraîcheur |
| `/save-my-work` / `/share-my-work` | Consigner le travail, puis le réviser et le partager |

## Ce qui demande toujours votre jugement

Copilot peut structurer, comparer et signaler; il ne peut pas prendre les décisions d'affaires à votre place. Les gestionnaires de produit et propriétaires de produit confirment toujours le résultat, les limites de portée, les groupes d'utilisateurs, les responsables, les hypothèses, les cibles et la version proposée. L'assistant doit rendre les inconnues visibles, pas les transformer en faits.

Pour un deuxième avis indépendant en lecture seule, choisissez **BA Requirements Reviewer** dans Copilot Chat et demandez-lui d'examiner une initiative, une épopée, une fonctionnalité, un récit ou un bilan de gestion du changement. Il fournit des constats classés par priorité; `/validate` reste le processus structuré de préparation.