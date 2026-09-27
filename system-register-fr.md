# Registre des systèmes

*[System Register in English](system-register.md)*

## Objectif et portée

Ce registre suit les systèmes confirmés mentionnés dans la documentation informatique et d'architecture du projet. Un système est une application, une plateforme ou un service géré de façon indépendante, qui fournit une capacité, détient ou échange des données, ou possède son propre cycle de vie ou responsable imputable.

N'inscrivez pas chaque fournisseur, langage de programmation, bibliothèque, composant interne, API ou objet de base de données. Incluez un composant seulement s'il est géré indépendamment comme un système. N'ajoutez aucun exemple ou système non confirmé.

Hopex demeure la source faisant autorité pour l'identité et le responsable d'un système existant lorsque sa fiche est fournie. Ce registre n'est pas directement intégré à Hopex et n'y vérifie pas automatiquement les données. Une référence Hopex est facultative; ce registre est un index documentaire et ne remplace pas Hopex.

## Systèmes

Aucun système du projet n'est confirmé et inscrit pour le moment.

| ID système | Nom canonique du système | Alias | Type | État du cycle de vie | Objectif | Responsable du système | Référence Hopex (facultative) | Nom réel / ID du CMCD |
|---|---|---|---|---|---|---|---|---|

Utilisez des IDs stables de la forme `SYS-001`; ne réutilisez jamais un ID. Dans la documentation d'architecture, référencez un système confirmé par son ID et son nom canonique. L'état du cycle de vie doit être `Prévu`, `Actif`, `Déprécié` ou `Retiré`. Conservez les systèmes retirés pour assurer la traçabilité au lieu de les supprimer.

## Références techniques

| ID système | Document technique | Relation ou utilisation |
|---|---|---|

Liez chaque système inscrit aux évaluations, ADR, conceptions ou autres documents techniques qui le mentionnent.

## Questions ouvertes

L'absence du responsable ou des renseignements CMCD ne bloque pas la documentation d'un système confirmé. Inscrivez `À confirmer` pour chaque donnée manquante et consignez la question ci-dessous, à l'attention de l'architecte de solution.

| ID système | Champ | Question | À demander à | État |
|---|---|---|---|---|

## Inscription des systèmes

- Confirmez qu'il s'agit d'un système du projet, et non simplement d'une technologie, bibliothèque ou composante de conception.
- Demandez à l'architecte de solution le responsable du système et le nom réel/ID du CMCD. Ne déduisez aucune de ces données. Si l'une n'est pas fournie, inscrivez `À confirmer` et ajoutez une question ouverte précise ci-dessus; poursuivez sans bloquer le document technique.
- Demandez un nom/ID Hopex uniquement comme référence facultative. S'il n'est pas fourni, laissez le champ vide et ne créez pas de question ouverte pour cette seule omission.
- Si l'utilisateur confirme explicitement qu'un champ requis ne s'applique pas, inscrivez `Sans objet (confirmé)`.
- Gardez les fiches anglaises et françaises alignées, notamment les IDs, noms, responsables, références Hopex, valeurs CMCD, états du cycle de vie et liens vers les documents techniques.
