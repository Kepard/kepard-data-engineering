# Projet Data Engineering End-to-End sur Azure : AdventureWorks

Ce projet présente un pipeline de données complet construit sur Microsoft Azure, traitant les données "AdventureWorks" depuis l'ingestion jusqu'à la visualisation. Il met en œuvre une architecture Medallion (Bronze, Silver, Gold) en utilisant les services Azure clés.

**Documentation Complète (PDF) :** [docs/project_documentation.pdf](docs/project_documentation.pdf) *(Fortement recommandé pour une compréhension détaillée)*

## Objectif

Démontrer la conception et l'implémentation d'un pipeline de données E2E pour ingérer, stocker, transformer et analyser des données en utilisant :
- **Source :** Dataset AdventureWorks (fichiers CSV via simulation d'API GitHub)
- **Ingestion & Orchestration :** Azure Data Factory (ADF)
- **Stockage :** Azure Data Lake Storage Gen2 (ADLS Gen2)
- **Transformation :** Azure Databricks (Apache Spark, PySpark)
- **Service & Analyse :** Azure Synapse Analytics (Pool SQL Serverless)
- **Visualisation :** Microsoft Power BI

## Architecture du Pipeline

![Architecture du Pipeline](docs/pipeline_architecture.png)
*(Consultez la [documentation complète](docs/project_documentation.pdf) pour les détails de chaque couche et composant.)*

## Structure du Dépôt

- `docs/` : Documentation complète du projet (PDF, sources LaTeX, images).
- `adf/` : Exports JSON des pipelines et datasets Azure Data Factory.
- `databricks/` : Notebook PySpark pour la transformation des données.
- `synapse/` : Scripts SQL pour la configuration d'Azure Synapse Analytics.
- `data_config/` : Fichier de configuration `git.json` pour l'ingestion dynamique.


## Pour Explorer

1.  Clonez le dépôt.
2.  Consultez la [documentation complète](docs/project_documentation.pdf) pour comprendre le flux de travail et les configurations.
3.  Explorez les scripts et notebooks dans les dossiers respectifs (`adf/`, `databricks/`, `synapse/`).
    *   **Note sur les Identifiants :** Les clés d'accès et secrets ont été remplacés par des placeholders dans les scripts. Vous devrez utiliser vos propres identifiants pour une éventuelle reproduction.

## Apprentissages Clés & Améliorations

Ce projet a permis de consolider la compréhension de l'écosystème Azure pour le Data Engineering.
Les pistes d'amélioration incluent une sécurité renforcée (Service Principals/Managed Identities), l'utilisation de Delta Lake, l'automatisation complète avec triggers et CI/CD, et une gestion des erreurs plus robuste.
*(Plus de détails dans la [documentation complète](docs/project_documentation.pdf).)*

---
*Ce README offre un aperçu. Pour une analyse approfondie, veuillez vous référer à la documentation PDF détaillée.*
