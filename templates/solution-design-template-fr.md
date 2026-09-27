# SD-XXX | Conception de solution : <Nom de la solution>

*[Read this document in English](solution-design-template.md)*

> **Statut du document :** Ébauche  
> **Version du document :** Not baselined  
> **Last validated:** Not recorded  
> **Architecte de solutions :** <nom, à confirmer>  
> **Artéfacts d'affaires liés :** [FEAT-XXX <Nom de la fonctionnalité>](../../features/feat-XXX-slug-fr.md)  
> **Décisions applicables :** [ADR-XXX <Titre de la décision>](../decisions/adr-XXX-slug-fr.md), ou Aucune  
> **Systèmes concernés :** <SYS-### — Nom canonique du système>, ou Aucun identifié  
> **Important :** Ceci est un gabarit. Remplissez chaque espace réservé entre crochets et retirez le texte d'orientation avant publication. Gardez la conception proportionnée : ne documentez que le niveau de détail nécessaire pour construire, tester, déployer et exploiter la solution, et indiquez « Sans objet (<raison>) » plutôt que de laisser une section muette.  
> **Barrière de statut :** Valeurs valides : Ébauche, En révision, Approuvé. Ne passer à Approuvé qu'après que `/validate design <id>` a confirmé une liste d'approbation complète, aucun marqueur `[NEEDS CLARIFICATION]` restant et aucune question encore Ouverte dans le registre des questions — puis remplacer « Not recorded » par : `> **Last validated:** <date> — Score <NN>/100 (<Rating>)` (cette ligne technique reste en anglais pour la cohérence des outils). Le score est indicatif et ne bloque jamais l'approbation.

## 1. Portée et traçabilité
*(Obligatoire)* Ce que couvre et ne couvre pas cette conception. Rattacher chaque élément de conception important à un résultat d'affaires, un critère d'acceptation, une contrainte ou un ADR. Une conception ne doit pas ajouter de portée visible pour l'utilisateur; signaler tout écart au propriétaire de produit.

| Élément de conception | Se rattache à |
|---|---|
| *(élément)* | *(critère d'acceptation de FEAT-XXX, contrainte ou ADR-XXX)* |

## 2. Contexte du système et limites
*(Obligatoire)* Systèmes, utilisateurs et parties externes concernés, et limites de cette solution. Un diagramme est recommandé.

```mermaid
flowchart LR
    User[Rôle d'utilisateur] --> Solution[Cette solution]
    Solution --> SystemA[SYS-### — Système]
```

## 3. Composants et responsabilités
*(Obligatoire)*

| Composant | Responsabilité | Appartient à |
|---|---|---|
| *(composant)* | *(responsabilité)* | *(équipe, à confirmer)* |

## 4. Interfaces et intégrations
*(Obligatoire — « Sans objet (<raison>) » est acceptable)*

| Interface | De → Vers | Style (synchrone/asynchrone/lot/fichier) | Données échangées | Gestion des défaillances |
|---|---|---|---|---|
| *(interface)* | *(SYS-### → SYS-###)* | *(style)* | *(données)* | *(nouvelle tentative, repli, alerte)* |

## 5. Données
*(Obligatoire)* Flux de données, système de référence et propriété, classification, migration, conservation et suppression.

## 6. Sécurité, confidentialité et accessibilité
*(Obligatoire)* Authentification et autorisation, moindre privilège, protection des données en transit et au repos, impacts sur la vie privée, journalisation d'audit et obligations d'accessibilité. Indiquer explicitement « Sans objet (<raison>) » lorsque c'est le cas.

## 7. Exigences non fonctionnelles
*(Obligatoire)* Ne jamais inventer de cibles; indiquer « À confirmer ».

| Attribut de qualité | Exigence ou cible | Source | Méthode de vérification |
|---|---|---|---|
| Disponibilité | *(cible, à confirmer)* | *(artéfact d'affaires ou norme)* | *(test ou surveillance)* |
| Performance | | | |
| Évolutivité | | | |
| Résilience et reprise | | | |

## 8. Déploiement et exploitation
*(Obligatoire)* Environnements, approche de déploiement, surveillance et alertes, responsabilité du soutien, gestion des défaillances, sauvegarde et reprise, et retour arrière.

## 9. Approche de vérification
*(Obligatoire)* Comment démontrer que la conception fonctionne : quels tests ou quelles preuves montrent que les exigences non fonctionnelles, les intégrations et les contrôles de sécurité sont respectés.

## 10. Dépendances, hypothèses et risques
*(Obligatoire)*

| Type | Élément | Impact | Réponse ou responsable |
|---|---|---|---|
| Dépendance / Hypothèse / Risque | *(élément)* | Élevé / Moyen / Faible | *(réponse ou responsable)* |

## 11. Registre des questions ouvertes
*(Conditionnel — conserver le tableau seulement s'il reste des questions.)*

| Question | Pourquoi c'est important | Décision requise d'ici | Responsable suggéré | Statut |
|---|---|---|---|---|
| *(question)* | *(impact)* | *(date, à confirmer)* | *(rôle)* | Ouverte / Résolue |

## 12. Liste de vérification pour l'approbation
- [ ] Liée à au moins un artéfact d'affaires, et chaque élément de conception important se rattache à un résultat, un critère, une contrainte ou un ADR
- [ ] N'ajoute aucune portée visible pour l'utilisateur au-delà des artéfacts d'affaires liés
- [ ] Le contexte du système et ses limites sont clairs
- [ ] Les interfaces, intégrations et la propriété des données sont documentées ou déclarées sans objet avec une raison
- [ ] La sécurité, la confidentialité et l'accessibilité sont traitées explicitement
- [ ] Les exigences non fonctionnelles ont une source et une méthode de vérification, ou sont « À confirmer »
- [ ] Le déploiement, la surveillance, la responsabilité du soutien et le retour arrière sont traités
- [ ] Les ADR applicables sont liés et cohérents avec la conception
- [ ] Les systèmes concernés sont cités sous la forme `SYS-### — Nom` et rapprochés du registre des systèmes
- [ ] Le niveau de détail est proportionné au risque et à la complexité
- [ ] L'équipe de livraison a examiné la faisabilité
