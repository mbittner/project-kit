# FEAT-006 | Canevas de fonctionnalité : Confirmation de soumission et notifications

*[Read this document in English](feat-006-submission-confirmation-and-notifications.md)*

> **Statut du document :** Ébauche de travail illustrative  
> **Version du document :** Not baselined  
> **Épopée parente :** [EPIC-001 Configuration numérique de groupe et collecte de données](../epics/epic-001-digital-group-setup-and-data-collection-fr.md)  
> **Bilan de gestion du changement :** [CM-FEAT-006 Confirmation de soumission et notifications](../change-management/cm-feat-006-submission-confirmation-and-notifications-fr.md)  
> **Important :** Les cibles, règles, champs, intégrations et exigences de contrôle sont des exemples proposés et nécessitent une validation.

## 1. Objectif d'affaires
Confirmer la réception et notifier les parties concernées de la prochaine étape.

## 2. Problème / Opportunité
Les utilisateurs ont besoin d'une façon cohérente de réaliser les activités prises en charge par **la confirmation de soumission et notifications**. Les détails de l'état actuel et les données de référence doivent être confirmés par la découverte.

## 3. Valeur d'affaires attendue
Prise en charge plus rapide, exhaustivité améliorée, moins d'échanges manuels et validation plus précoce.

## 4. Description de la fonctionnalité
Confirmer la réception et notifier les parties concernées de la prochaine étape. La fonctionnalité doit offrir un statut clair, une validation préventive lorsque cela est pertinent, et des résultats traçables pour les utilisateurs autorisés.

## 5. Personas
- Administrateur promoteur de régime
- Administrateur des nouvelles affaires
- Propriétaire de produit

## 6. Portée
### Dans la portée
- Référence de confirmation
- Notification de réception
- Notification interne
- Message de prochaine étape

### Hors de la portée
- Capacités attribuées à une autre fonctionnalité ou épopée.
- Choix d'implémentation technique finaux.
- Changements de politique d'affaires non explicitement approuvés.

## 7. Parcours utilisateur proposé
`Accéder au dossier autorisé → Ouvrir la confirmation de soumission et notifications → Compléter ou réviser l'information requise → Résoudre les problèmes de validation → Confirmer l'action → Consulter le statut mis à jour`

## 8. Règles d'affaires à valider
- Seuls les rôles autorisés peuvent consulter ou modifier l'information concernée.
- Les données et preuves obligatoires doivent être complètes avant l'action finale.
- Une information invalide ou incohérente doit produire un parcours de correction compréhensible.
- Les actions importantes et les changements de statut doivent être traçables.
- Les exigences de conservation, de confidentialité, d'accessibilité, de contenu bilingue et de gestion des documents doivent être confirmées.

## 9. Données / Information
- Identifiants du dossier et du groupe
- Partie autorisée et rôle
- Données propres à la fonctionnalité, résultats de validation et statut
- Horodatages de création, de mise à jour, de soumission et d'achèvement
- Motif de décision, d'exception ou de correction, le cas échéant
- Champs d'audit et de mesure requis par les contrôles approuvés

## 10. Considérations UX / Interface
- Langage clair sur la progression et le statut
- Messages de validation exploitables placés près du problème
- Comportement accessible au clavier, pour lecteur d'écran, contraste et focus
- Comportement adaptatif pour les appareils approuvés
- Préparation du contenu en anglais et en français, le cas échéant

## 11. Dépendances
- Modèle d'identité, d'accès et de rôles
- Données et règles d'affaires faisant autorité
- Services de flux de travail, de notification, de documents, d'intégration et de rapports, le cas échéant
- Approbations d'architecture, de sécurité, de confidentialité, de conformité, d'accessibilité et opérationnelles
- Séquencement des fonctionnalités connexes au sein de l'épopée parente

## 12. Considérations non fonctionnelles
- Sécurité et accès selon le principe du moindre privilège
- Confidentialité et minimisation des données
- Disponibilité et capacité de récupération appropriées à la criticité d'affaires
- Cibles de performance basées sur l'utilisation et le volume attendus
- Auditabilité, surveillance et diagnostics de soutien
- Exigences d'accessibilité et d'expérience bilingue

## 13. Indicateurs clés de performance (ICP) et plan de mesure
| Mesure | Définition | Référence | Cible | Responsable |
|---|---|---|---|---|
| Achèvement | Pourcentage des parcours de fonctionnalité amorcés qui sont complétés | À confirmer | À approuver | Gestionnaire de produit |
| Succès dès la première fois | Pourcentage complété sans correction ni suivi | À confirmer | À approuver | Propriétaire de produit / AA |
| Délai de traitement | Temps écoulé ou actif pour l'activité prise en charge | À confirmer | À approuver | Opérations |
| Exceptions | Pourcentage nécessitant une intervention manuelle | À confirmer | À approuver | Opérations |
| Expérience utilisateur | Mesure de satisfaction ou d'utilisabilité approuvée | À confirmer | À approuver | Produit / UX |

## 14. Risques et mesures d'atténuation
| Risque | Mesure d'atténuation proposée |
|---|---|
| Les règles sont incomplètes ou contradictoires | Animer des ateliers de règles et maintenir un journal de décisions |
| Les utilisateurs contournent la fonctionnalité | Valider le parcours avec les utilisateurs et corriger les incitatifs du processus |
| Les données ne peuvent pas soutenir la validation | Attribuer la propriété des données et définir le traitement des corrections |
| Les dépendances retardent la livraison | Séquencer le travail dépendant et exposer le statut de préparation |
| La mesure est ajoutée trop tard | Définir les besoins en événements et en ICP avant la conception détaillée |

## 15. Répartition proposée des récits utilisateurs
- En tant qu'utilisateur autorisé, je veux utiliser **la référence de confirmation** afin de pouvoir réaliser l'activité de la confirmation de soumission et notifications avec précision et efficacité.
- En tant qu'utilisateur autorisé, je veux utiliser **la notification de réception** afin de pouvoir réaliser l'activité de la confirmation de soumission et notifications avec précision et efficacité.
- En tant qu'utilisateur autorisé, je veux utiliser **la notification interne** afin de pouvoir réaliser l'activité de la confirmation de soumission et notifications avec précision et efficacité.
- En tant qu'utilisateur autorisé, je veux utiliser **le message de prochaine étape** afin de pouvoir réaliser l'activité de la confirmation de soumission et notifications avec précision et efficacité.

## 16. Liste de vérification de préparation de la fonctionnalité
- [ ] Objectif d'affaires et valeur attendue validés
- [ ] Personas et parcours validés avec les utilisateurs
- [ ] Portée, exclusions et règles d'affaires convenues
- [ ] Données, intégrations, dépendances et exigences non fonctionnelles révisées
- [ ] Orientation UX et besoins de contenu identifiés
- [ ] Définitions des ICP, plan de référence, cibles et responsable convenus
- [ ] Récits candidats cartographiés et séquencés
- [ ] Décisions majeures, risques et hypothèses attribués
