# Guide d'utilisation pour les architectes : travailler avec l'assistant d'architecture

*[Read this guide in English](architect-user-guide.md)*

Ce guide explique ce qui se passe lorsqu'un architecte de solutions utilise Copilot Chat dans cet espace de travail : quoi demander, ce que l'assistant vérifie, ce que font les commandes enregistrées et où vos décisions restent nécessaires. Pour un résumé de référence sur le moment d'intervenir et le document à utiliser, consultez le [Guide de l'architecte de solutions](solution-architect-guide-fr.md).

## Comment l'aide est organisée

| Élément | Ce qu'il fait | Valeur pour vous |
|---|---|---|
| Instructions de l'espace de travail | Appliquent les conventions communes : identifiants, fichiers bilingues, index de l'architecture et liens vers les documents d'affaires | Les documents d'architecture suivent les mêmes règles sans que vous ayez à les retenir |
| Orientation d'architecture | Fournit le processus et le niveau de qualité des évaluations, registres de décision et conceptions de solution, ainsi que des vérifications communes de triage, de cohérence des décisions et de traçabilité | Garde chaque document proportionné et demande les faits qui comptent |
| Assistants spécialisés | Solution Architecture Writer rédige; Solution Architecture Reviewer fournit une critique indépendante; Lifecycle Navigator recommande une prochaine étape | Choisissez la rédaction, la révision indépendante ou une recommandation fondée sur les éléments disponibles |
| Commandes obliques | Exécutent des tâches répétables : trier une fonctionnalité, consigner une décision ou proposer une conception | Facilite la demande cohérente de processus en plusieurs étapes |
| Scripts d'intégrité | Vérifient ce qui peut l'être mécaniquement : identifiants, paires de langues, liens, en-têtes, chaînes de décisions, traçabilité et références aux systèmes | Détectent les omissions faciles à manquer en révision |
| Registres | L'[index de l'architecture](../../architecture/README-fr.md), le [registre des systèmes](../../system-register-fr.md) et le [registre de l'état de la documentation](../../documentation-register-fr.md) | Rend les décisions, les systèmes et les bases approuvées des conceptions faciles à trouver |

Choisissez **Solution Architecture Writer** dans Copilot Chat pour rédiger, ou **Solution Architecture Reviewer** pour une révision distincte qui ne modifie aucun fichier. Choisissez **Lifecycle Navigator** si vous ne savez pas si un travail d'architecture est nécessaire. Aucun d'eux n'accepte une décision ni n'approuve une conception à votre place.

## Exemple : de la fonctionnalité à la décision acceptée et à la conception

*Les identifiants, systèmes et détails ci-dessous sont fictifs, à titre d'illustration.*

Supposons qu'un propriétaire de produit a rédigé `FEAT-011`, qui permet aux conseillers de joindre des pièces justificatives à un dossier client. Les documents doivent aboutir dans un système de dossiers existant et contiennent des renseignements personnels. Le propriétaire de produit demande si votre intervention est nécessaire.

### 1. Copilot vérifie si votre intervention est nécessaire

```text
/screen-architecture feature 011
```

L'orientation `architecture-screening` lit la fonctionnalité, son épopée parente, ses `Références d'architecture`, l'index de l'architecture et le registre des systèmes. Elle vérifie sept déclencheurs (intégration, données, sécurité et confidentialité, besoins non fonctionnels, achat ou développement, écart par rapport aux normes et irréversibilité) et consigne les éléments trouvés pour chacun. Ici, elle relève une nouvelle intégration et des renseignements personnels, sans décision existante qui les couvre. Son verdict est *Évaluation*, et vous êtes le prochain responsable. Rien n'est modifié.

**Valeur :** Vous intervenez seulement en présence d'un véritable risque d'architecture, et vous voyez les éléments probants plutôt qu'une simple opinion. Un verdict « Non nécessaire » est tout aussi utile : la livraison se poursuit sans vous attendre.

### 2. Copilot rédige l'évaluation dans les deux langues

Demandez à Solution Architecture Writer :

> « Rédige une évaluation d'architecture pour FEAT-011 : comment les documents joints doivent-ils parvenir au système de dossiers? Inclus le statu quo comme option et n'invente ni volumes ni coûts. »

Le Writer récupère les derniers changements partagés, confirme le prochain identifiant libre (`ARCH-001`) avec `check-ids.ps1` et copie les gabarits anglais et français de l'évaluation. Il remplit la question de décision, les résultats et contraintes de la fonctionnalité, les lacunes de données, au moins deux options réelles (dont le processus manuel actuel), des critères d'évaluation rattachés à la fonctionnalité et un tableau de compromis couvrant l'adéquation d'affaires, l'intégration et les données, la sécurité et la confidentialité, les attributs de qualité, l'exploitation, le coût et la complexité, le risque de livraison et la réversibilité. Les volumes et niveaux de service inconnus sont indiqués « À confirmer », et au plus cinq questions sont signalées dans le texte; les autres vont au registre des questions ouvertes.

**Valeur :** Vous obtenez une première ébauche structurée et bilingue qui compare de vraies options sans présenter des suppositions comme des faits.

### 3. Les systèmes sont vérifiés et inscrits

L'orientation `system-register-validation` compare chaque système nommé dans l'évaluation avec le registre des systèmes. Pour le système de dossiers, qui n'est pas encore inscrit, Copilot vous demande son responsable et son nom/ID CMCD, et facultativement une référence Hopex. Il attribue le prochain identifiant `SYS-###` et inscrit le système dans les deux langues du registre. Si vous ne connaissez pas encore le responsable ou les renseignements CMCD, il inscrit « À confirmer » et ajoute une question ouverte précise qui vous est assignée; votre travail n'est pas bloqué. `check-system-refs.ps1` confirme que chaque système cité est inscrit et référencé, et `check-system-mentions.ps1` signale un système nommé sans son identifiant, qu'il s'agisse d'un système inscrit cité seulement par son nom ou d'un système peut-être non inscrit.

**Valeur :** Les systèmes sont nommés de façon cohérente dans tous les documents d'architecture, et les renseignements manquants sur la responsabilité restent visibles jusqu'à leur résolution.

### 4. Les liens et l'index sont mis à jour

L'en-tête de l'évaluation renvoie à `FEAT-011`, et `FEAT-011` reçoit un lien vers `ARCH-001` sous `Références d'architecture` dans les deux langues. Ce lien de retour est la seule modification que le travail d'architecture apporte à un document d'affaires. L'évaluation est aussi ajoutée à l'index de l'architecture anglais et français. `check-arch-traceability.ps1` confirme les liens dans les deux sens et les entrées de l'index.

**Valeur :** Le propriétaire de produit voit le travail d'architecture lié à sa fonctionnalité, et vous voyez quel résultat d'affaires chaque document sert, sans que du contenu technique se retrouve dans l'exigence d'affaires.

### 5. Valider et recommander

```text
/validate assessment 001
```

Le validateur applique les garde-fous de l'évaluation (pas de conclusion d'avance, une recommandation n'est pas une décision, ancrage dans les résultats d'affaires, aucun fait inventé, proportionnalité), attribue un score et liste les lacunes précises. **Le score est indicatif et ne bloque jamais un changement de statut.** La barrière dépend d'une liste de vérification complète, de l'absence de marqueurs de clarification non résolus et de l'absence de questions ouvertes. Lorsque ces conditions sont remplies et que vous confirmez, le statut devient `Recommandée`. Pour un deuxième avis au préalable, choisissez **Solution Architecture Reviewer**.

**Valeur :** Vous obtenez des pistes d'amélioration concrètes et un signal de préparation clair, et le statut reflète votre jugement plutôt qu'un chiffre.

### 6. Consigner la décision

```text
/record-decision 001
```

La commande propose le contenu du registre de décision à partir de l'évaluation : la décision, le contexte, les options, la justification, les conséquences (y compris négatives), les systèmes concernés et un déclencheur de révision. Elle vérifie la proposition par rapport aux décisions acceptées antérieures pour détecter conflits ou doublons. **Elle ne crée aucun fichier avant votre confirmation.** Elle crée ensuite `ADR-001` dans les deux langues au statut `Proposée` et vous demande si vous voulez l'accepter. Ce n'est que lorsque la barrière est franchie et que vous confirmez explicitement qu'il devient `Acceptée`, à la date du jour. `ARCH-001` passe alors à `Clôturée` et est lié à la décision, et `check-adr-chain.ps1` vérifie le responsable, la date et les liens de la décision.

**Valeur :** La décision, sa justification et ses coûts sont consignés une seule fois, liés aux éléments probants, et ne peuvent être acceptés sans vous.

### 7. Concevoir la solution

```text
/design-solution 011
```

La commande lit la fonctionnalité, sa décision applicable et le registre des systèmes, et vérifie si une conception existante couvre déjà le travail. Elle propose un plan de taille appropriée : ce que couvre la conception, la décision applicable, les systèmes concernés, les sections à approfondir et celles probablement « Sans objet », et les questions ouvertes. **Elle ne crée aucun fichier avant votre confirmation.** Elle crée ensuite `SD-001` dans les deux langues au statut Ébauche. Si la conception révèle un écart de portée, par exemple le sort des documents qui échouent à l'analyse antivirus, l'écart est transmis au propriétaire de produit sous forme de question ouverte; la fonctionnalité n'est pas modifiée.

**Valeur :** La conception n'est détaillée qu'autant que le risque l'exige, et la portée d'affaires reste du ressort du propriétaire de produit.

### 8. Approuver la conception et fixer sa base

```text
/validate design 001
```

Le validateur vérifie la traçabilité, les limites, les interfaces et les données, la sécurité, la confidentialité, les exigences non fonctionnelles avec leurs méthodes de vérification, le déploiement et l'exploitation, ainsi que la cohérence avec la décision applicable. Il fournit un score indicatif et les lacunes. Lorsque la barrière est franchie et que vous demandez l'approbation, Copilot propose la version de base `1.0` et attend votre confirmation. La conception figure ensuite dans le registre de l'état de la documentation avec sa version approuvée.

**Valeur :** Les équipes de livraison savent exactement quelle version de la conception est approuvée, et les changements ultérieurs suivent les mêmes règles de versionnement que les exigences d'affaires.

### 9. Modifier une décision plus tard

Si de nouvelles données changent l'approche, ne modifiez pas la décision acceptée. Utilisez :

```text
/supersede-decision 001
```

La commande demande ce qui a changé, rédige une nouvelle décision qui renvoie à l'ancienne et liste les conceptions qui citent l'ancienne décision pour que vous puissiez planifier leur révision. Lorsque vous acceptez la nouvelle décision, l'ancienne passe à `Remplacée`, et les deux registres se renvoient l'un à l'autre.

**Valeur :** L'historique des raisons de chaque décision est conservé, et rien ne contredit silencieusement une décision acceptée.

### 10. Enregistrer, partager et suivre le travail

Utilisez `/save-my-work` pour consigner vos changements localement. La commande vérifie chaque changement technique par rapport au registre des systèmes, met à jour la documentation connexe, crée une note de version horodatée et enregistre un sujet de commit concis axé sur le résultat, avec le résumé complet dans le corps du commit. Utilisez `/share-my-work` lorsque vous êtes prêt à partager : elle récupère d'abord les dernières mises à jour, explique les conflits à résoudre, exécute toutes les vérifications d'intégrité, dont les vérifications d'architecture, et ne publie qu'après votre confirmation. `/audit-pack` comprend une section sur la couverture d'architecture qui montre les fonctionnalités qui pourraient exiger votre intervention, les décisions en conflit, les documents orphelins et les questions ouvertes du registre des systèmes.

**Valeur :** Le travail d'architecture est traçable, partagé en toute sécurité et visible à l'échelle du portefeuille.

## Autres commandes utiles

| Commande | Quand l'utiliser |
|---|---|
| `/screen-architecture <type> <numéro>` | Décider si une initiative, une épopée ou une fonctionnalité exige un travail d'architecture |
| `/validate assessment\|adr\|design <numéro>` | Évaluer un document d'architecture et vérifier sa barrière de statut |
| `/record-decision <numéro d'évaluation>` | Transformer une évaluation Recommandée en registre de décision proposé |
| `/supersede-decision <numéro d'ADR>` | Remplacer une décision acceptée tout en conservant l'originale |
| `/design-solution <numéro de fonctionnalité>` | Proposer et créer une conception de solution de taille appropriée |
| `/audit-pack [identifiant d'initiative]` | Examiner la couverture d'architecture en même temps que la qualité des documents d'affaires |
| `/save-my-work` / `/share-my-work` | Consigner votre travail, puis le réviser et le partager |

## Ce qui demande toujours votre jugement

Copilot peut structurer, comparer, vérifier et signaler; il ne peut pas prendre les décisions d'architecture à votre place.

- **Vous seul** acceptez une décision, recommandez une évaluation ou approuvez une conception, et seulement après l'avoir confirmé explicitement.
- **Vous fournissez les faits** qui ne doivent pas être devinés : responsables des systèmes, noms et ID CMCD, coûts, volumes, niveaux de service, conditions des fournisseurs et dates. Les références Hopex sont facultatives; l'ensemble n'a aucune connexion à Hopex.
- **Vous jugez de la proportionnalité.** Conclure qu'aucun document n'est nécessaire est un résultat valable.
- **La portée relève du propriétaire de produit.** Signalez les écarts; ne redéfinissez pas la fonctionnalité dans une conception.

Pour un deuxième avis indépendant en lecture seule, choisissez **Solution Architecture Reviewer** et demandez-lui d'examiner une évaluation, un registre de décision ou une conception. Il fournit des constats classés par priorité; `/validate` reste le processus structuré de préparation.
