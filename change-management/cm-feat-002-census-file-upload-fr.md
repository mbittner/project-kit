# CM-FEAT-002 | Bilan de gestion du changement : Téléversement de fichier de recensement

*[Read this document in English](cm-feat-002-census-file-upload.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Canevas de fonctionnalité source :** [FEAT-002 Téléversement de fichier de recensement](../features/feat-002-census-file-upload-fr.md)  
> **Bilan de changement parent :** [CM-EPIC-001 Configuration numérique de groupe et collecte de données](cm-epic-001-digital-group-setup-and-data-collection-fr.md)

## 1. Sommaire du changement
Les administrateurs promoteurs de régime cessent d'envoyer des feuilles de calcul de recensement par courriel pour révision manuelle ligne par ligne. Ils téléversent plutôt des fichiers structurés selon un gabarit avec rétroaction d'erreurs par ligne et peuvent retéléverser directement des fichiers corrigés.

## 2. Qui est touché
| Persona | Comment ils l'utilisent aujourd'hui | Comment ils l'utiliseront après | Niveau d'impact |
|---|---|---|---|
| Administrateur promoteur de régime | Envoie des feuilles de calcul de recensement de formats variés par courriel | Téléverse des fichiers structurés selon le guide de gabarit | Élevé |
| Administrateur des nouvelles affaires | Révise et réconcilie manuellement les lignes de recensement | Révise la vue des erreurs par ligne et les téléversements validés | Élevé |
| Propriétaire de produit | Visibilité limitée sur les problèmes de qualité des données de recensement | Suit les ICP d'achèvement et de taux d'erreur | Faible |

## 3. Parcours avant / après
| Étape | État actuel (avant) | État futur (après) |
|---|---|---|
| Accéder au dossier | Le promoteur envoie une pièce jointe de feuille de calcul par courriel | Le promoteur ouvre le dossier et accède au téléversement de recensement |
| Fournir l'information | Feuille de calcul libre, formatage incohérent | Téléverse un fichier en suivant le guide de gabarit |
| Résoudre les problèmes | L'administrateur trouve et signale manuellement les erreurs de ligne par courriel | La vue des erreurs par ligne montre les problèmes directement au promoteur |
| Confirmer et soumettre | Le promoteur renvoie un fichier corrigé par courriel | Le promoteur effectue un retéléversement corrigé dans la même session |
| Vérifier le statut | Demande à l'administrateur si le fichier a été accepté | Consulte directement le statut du téléversement/de la validation |

## 4. Ce qui change en pratique
- **Nouvelles étapes introduites :** Guide de gabarit, téléversement de fichier, vue des erreurs par ligne, retéléversement corrigé.
- **Étapes supprimées/automatisées :** Réconciliation manuelle ligne par ligne par les administrateurs; échange de fichiers par courriel.
- **Nouvelles règles à suivre :** Les champs et formats de recensement obligatoires doivent être complets/corrects avant la soumission; les lignes invalides doivent être corrigées avant l'acceptation finale.
- **Nouvelles informations à fournir/réviser :** Données de recensement d'employés structurées correspondant au gabarit requis.

## 5. Formation et aides au travail nécessaires
- Guide de référence rapide : Oui — définitions des champs du gabarit et erreurs de formatage courantes.
- Visite guidée/courte vidéo : Oui — démonstration du flux de téléversement et de correction.
- Orientation intégrée à l'application : Messagerie d'erreurs par ligne (voir la section 10, Considérations UX/Interface).
- FAQ : Oui — problèmes de format et d'encodage de fichier.

## 6. Champions locaux / soutien des experts
- Champions nommés par équipe/région : à confirmer.
- Heures de bureau à la mise en production : à confirmer, particulièrement durant le premier cycle de recensement.
- Parcours d'escalade : équipe des administrateurs des nouvelles affaires, puis propriétaire de produit.

## 7. Mesures d'adoption
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Taux d'achèvement du téléversement | % de téléversements amorcés qui sont complétés | À confirmer | À approuver | Gestionnaire de produit |
| Succès dès la première fois | % de fichiers acceptés sans correction | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps entre le début du téléversement et le fichier accepté | À confirmer | À approuver | Opérations |
| Exceptions | % de fichiers nécessitant une intervention manuelle | À confirmer | À approuver | Opérations |

## 8. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation |
|---|---|
| Les promoteurs continuent d'envoyer des feuilles de calcul dans des formats non standards | Retirer le canal de prise en charge par courriel et fournir un gabarit téléchargeable |
| Des fichiers volumineux ou mal formés causent des échecs de téléversement répétés | Fournir des indications claires sur la taille/le format des fichiers et des vérifications pré-téléversement |
| Les données ne peuvent pas soutenir la validation (p. ex., source faisant autorité manquante) | Attribuer la propriété des données et définir le traitement des corrections avant la mise en production |

## 9. Liste de vérification de préparation
- [ ] Fonctionnalité approuvée et construction/test complétés
- [ ] Parcours avant/après validé avec des utilisateurs promoteurs
- [ ] Matériel de formation et aides au travail publiés
- [ ] Champions/soutien informés et disponibles à la mise en production
- [ ] Mesures d'adoption instrumentées et référence saisie
- [ ] Liste de vérification de préparation de la fonctionnalité (canevas de fonctionnalité source, section 16) satisfaite
