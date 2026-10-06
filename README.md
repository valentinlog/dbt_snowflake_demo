# dbt Snowflake Demo

## Présentation

Ce projet présente un exemple simple de transformation de données avec **dbt** et **Snowflake**.

Le projet utilise les données d’exemple **TPCH** disponibles dans Snowflake afin de construire des modèles analytiques organisés en plusieurs couches :

- Sources
- Staging
- Intermediate
- Marts

L’objectif est de démontrer les principales fonctionnalités de dbt :

- Déclarer des sources de données
- Créer des modèles SQL modulaires
- Utiliser les fonctions `source()` et `ref()`
- Construire un pipeline de transformation
- Ajouter des tests de qualité
- Documenter les modèles et les colonnes
- Visualiser le lineage des données dans le DAG dbt

---

## Gestion du code source

Le code du projet est versionné dans un dépôt Git.

L'ensemble des développements est réalisé dans des branches dédiées avant d'être intégré à la branche principale.

### Flux de développement

```text
Feature Branch
      │
      ▼
Pull Request
      │
      ▼
Validation automatique
      │
      ▼
Code Review
      │
      ▼
Merge
      │
      ▼
Pipeline de déploiement
      │
      ▼
Environnement cible
```

### Bonnes pratiques

- Une fonctionnalité par branche.
- Des commits fréquents et descriptifs.
- Une Pull Request pour chaque changement.
- Une revue de code avant fusion.
- Aucun développement directement dans la branche principale.
- Validation automatique des modèles avant déploiement.

---

## Pull Requests

Les Pull Requests permettent :

- La revue du code SQL et YAML.
- La validation des standards de développement.
- La vérification des dépendances dbt.
- Le contrôle des tests de qualité.
- La validation des impacts sur le DAG.

Avant la fusion d'une Pull Request, les éléments suivants doivent être validés :

- Compilation dbt réussie.
- Exécution des modèles réussie.
- Tests dbt réussis.
- Documentation générée sans erreur.

---

## Pipeline CI/CD

Le projet utilise des pipelines de déploiement afin d'automatiser la validation et la promotion des changements.

### Validation continue (CI)

Lors de la création ou de la mise à jour d'une Pull Request :

```bash
dbt parse
dbt compile
dbt build
```

Les étapes de validation permettent de :

- Vérifier la syntaxe SQL.
- Vérifier les dépendances entre modèles.
- Exécuter les tests de qualité.
- Détecter les erreurs avant la fusion du code.

---

## Déploiement continu (CD)

Après la fusion dans la branche principale :

```text
Merge vers main
      │
      ▼
Pipeline de déploiement
      │
      ▼
Compilation dbt
      │
      ▼
Exécution des modèles
      │
      ▼
Tests
      │
      ▼
Génération de la documentation
      │
      ▼
Publication
```

Le pipeline permet notamment :

- Le déploiement automatisé des modèles.
- L'exécution des tests de qualité.
- La génération de la documentation dbt.
- La mise à jour du lineage et du catalogue de données.

---

## Cycle de vie du développement

```text
Développement
      │
      ▼
Commit Git
      │
      ▼
Pull Request
      │
      ▼
Validation CI
      │
      ▼
Code Review
      │
      ▼
Merge
      │
      ▼
Déploiement automatisé
      │
      ▼
Documentation dbt
```