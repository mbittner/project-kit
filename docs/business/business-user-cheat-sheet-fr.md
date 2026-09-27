# Aide-mémoire pour les gens d'affaires

Cette page est un aide-mémoire. Le [Guide d'utilisation pour les gens d'affaires](business-user-guide-fr.md) décrit le processus complet de l'initiative à l'épopée; les guides spécialisés ci-dessous restent la référence détaillée pour la qualité et la préparation.

## Processus en bref

```text
Résultat d'affaires
    -> Initiative : pourquoi investir et comment mesurer la valeur
    -> Épopée : quelle capacité d'affaires est nécessaire
    -> Fonctionnalité : quelle capacité visible par l'utilisateur apportera la valeur
    -> Récit utilisateur : ce que la personne doit accomplir et comment le vérifier
    -> Tâches, livraison, mise en production, adoption et mesure de la valeur
```

1. Commencez par le problème, les personnes touchées, le résultat souhaité et les faits disponibles. Consignez les idées de solution comme des hypothèses tant que les options n'ont pas été évaluées.
2. Créez une Initiative pour établir le dossier d'affaires et les résultats attendus.
3. Décomposez une Initiative approuvée en épopées sans chevauchement.
4. Décomposez une épopée en fonctionnalités utiles; confirmez l'ensemble proposé avant la création des fichiers.
5. Décomposez une fonctionnalité en récits petits et vérifiables; confirmez l'ensemble proposé avant la création des fichiers.
6. Vérifiez la préparation, résolvez les questions ouvertes et gardez les liens ainsi que les versions anglaise et française cohérents.
7. Enregistrez le travail localement, puis partagez-le lorsque vous êtes prête ou prêt. Après confirmation, le partage le publie à l'équipe.

## Aide de Copilot

| Aide | À quoi elle sert |
|---|---|
| **BA Requirements Writer** | Rédiger, mettre à jour et décomposer les exigences d'affaires selon les pratiques propres à chaque artéfact. |
| **BA Requirements Reviewer** | Fournir une critique distincte en lecture seule d'un artéfact nommé, sans le modifier. |
| **Lifecycle Navigator** | Recommander en lecture seule la prochaine étape, la poursuite du travail ou la consultation d'une personne spécialiste comme un architecte de solutions. Il n'approuve pas le travail et ne décide pas à votre place. |
| Guides de pratique | `initiative-documentation`, `epic-documentation`, `feature-documentation`, `user-story-documentation` et `change-management-documentation` définissent la structure, les critères de qualité et la préparation de chaque artéfact. |
| Vérifications communes | `sibling-overlap-validation` vérifie le chevauchement entre artéfacts sœurs; `stakeholder-register-validation` vérifie l'inscription des parties prenantes; `pack-integrity-check` exécute les contrôles mécaniques; `version-history` guide l'enregistrement, le partage et l'historique. |

## Commandes obliques

| Commande | Fonction |
|---|---|
| `/validate <type> <ID>` | Évalue et vérifie une `initiative`, une `epic`, une `feature`, une `story`, une `cm-epic` ou une `cm-feature`. La commande est en lecture seule sauf si vous demandez des modifications. |
| `/decompose-initiative <ID>` | Propose un ensemble d'épopées sans chevauchement. Vous confirmez avant la création des fichiers; les mises à jour partagées sont récupérées avant l'attribution des identifiants. |
| `/decompose-epic <ID>` | Propose des fonctionnalités sans chevauchement sous une épopée. Vous confirmez avant la création des fichiers. |
| `/decompose-feature <ID>` | Propose des récits utilisateur sous une fonctionnalité. Vous confirmez avant la création des fichiers. |
| `/audit-pack [ID d'initiative]` | Vérifie tout l'ensemble ou une initiative nommée et ses artéfacts descendants. |
| `/save-my-work [note]` | Actualise la documentation et les registres pertinents, crée une note horodatée pour les changements significatifs et consigne le travail localement. Le travail n'est pas partagé. |
| `/share-my-work` | Récupère les dernières mises à jour, résout les conflits, actualise la documentation, exécute les vérifications, résume les changements et demande votre confirmation avant le partage. |
| `/get-latest` | Récupère les changements des collègues et résume les nouveautés. La création d'épopée le fait automatiquement. |
| `/show-history [ID de document]` | Montre l'historique d'un document ou l'historique récent du projet si aucun identifiant n'est fourni. |
| `/undo-my-last-change` | Montre ce qui serait perdu et demande votre confirmation avant d'annuler un changement local. Le travail déjà partagé n'est pas effacé silencieusement. |

## Épopée

**Question :** Quelle capacité d'affaires est nécessaire pour atteindre le résultat de l'Initiative?

**À inclure :** problème ou occasion, utilisateurs, capacité, résultat d'affaires, indicateurs de réussite, portée, fonctionnalités candidates, dépendances, risques, hypothèses et responsables.

**À éviter :** choix de fournisseur ou de technologie, décisions d'architecture, plans de mise en œuvre, critères d'acceptation détaillés et récits. L'épopée reste indépendante de la solution et se rattache à une seule initiative.

**Étape suivante :** `/validate epic <ID>` pour vérifier la préparation; `/decompose-epic <ID>` lorsque l'épopée est prête pour la découverte des fonctionnalités.

**Règles détaillées :** [Guide des épopées](../../.github/skills/epic-documentation/SKILL.md)

## Fonctionnalité

**Question :** Quelle capacité précise, visible par l'utilisateur, et quel résultat répondra à une partie de l'épopée?

**À inclure :** bénéficiaire principal, besoin de l'utilisateur ou de la partie prenante, énoncé de fonctionnalité, hypothèse de bénéfice, portée, critères d'acceptation au niveau de la fonctionnalité, mesures de réussite, exigences de qualité/conformité, dépendances, hypothèses, risques et récits candidats.

**À éviter :** imposer un fournisseur, un langage, un stockage, une infrastructure, une conception d'API ou une autre mise en œuvre, sauf contrainte approuvée. Consignez les décisions d'architecture dans la documentation technique et liez-les à la fonctionnalité.

**Étape suivante :** `/validate feature <ID>` pour vérifier la préparation; `/decompose-feature <ID>` pour proposer des récits.

**Règles détaillées :** [Guide des fonctionnalités](../../.github/skills/feature-documentation/SKILL.md)

## Récit utilisateur

**Question :** Que doit accomplir une personne et comment l'équipe saura-t-elle que cela fonctionne?

**À inclure :** `En tant que ... Je veux ... Afin de ...`, une fonctionnalité parente, la valeur pour l'utilisateur, des critères d'acceptation vérifiables, la portée du récit, les dépendances, hypothèses, risques et listes de préparation/achèvement.

**À vérifier :** INVEST (Indépendant, Négociable, Valuable/Apportant de la valeur, Estimable, Small/Petit, Testable/Vérifiable). Gardez le récit petit et centré sur le comportement, pas sur les tâches de mise en œuvre.

**Étape suivante :** `/validate story <ID>` pour vérifier la préparation. Décomposez les activités de mise en œuvre en tâches durant la planification de livraison.

**Règles détaillées :** [Guide des récits utilisateurs](../../.github/skills/user-story-documentation/SKILL.md)

## À retenir

- Les artéfacts d'affaires décrivent les besoins, résultats, utilisateurs et comportements attendus. Les évaluations d'architecture, ADR et conceptions de solution vont dans la documentation technique.
- Les constats de validation et conseils du Lifecycle Navigator éclairent la décision; ils n'approuvent ni la portée, ni le financement, ni l'architecture.
- `/save-my-work` consigne le travail localement. `/share-my-work` ne le publie qu'après révision du résumé et votre confirmation.
- Les notes de version de save/share comportent un horodatage UTC à la seconde. Aucun note n'est créée pour une commande sans changement ni pour de la documentation seulement.
- Cet ensemble est un point de départ, pas une norme organisationnelle approuvée. Confirmez les politiques, responsables, mesures et autorités d'approbation propres au projet avec les personnes concernées.