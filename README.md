# Projet Data Engineering End-to-End sur Azure : AdventureWorks

Ce projet présente un pipeline de données complet construit sur Microsoft Azure, traitant les données "AdventureWorks" depuis l'ingestion jusqu'à la visualisation. Il met en œuvre une architecture Medallion (Bronze, Silver, Gold) en utilisant les services Azure clés.

**Documentation Complète (PDF) :** [docs/Documentation.pdf](Documentation.pdf) *(Fortement recommandé pour une compréhension détaillée)*

## Objectif

Démontrer la conception et l'implémentation d'un pipeline de données E2E pour ingérer, stocker, transformer et analyser des données en utilisant :
- **Source :** Dataset AdventureWorks (fichiers CSV via simulation d'API GitHub)
- **Ingestion & Orchestration :** Azure Data Factory (ADF)
- **Stockage :** Azure Data Lake Storage Gen2 (ADLS Gen2)
- **Transformation :** Azure Databricks (Apache Spark, PySpark)
- **Service & Analyse :** Azure Synapse Analytics (Pool SQL Serverless)
- **Visualisation :** Microsoft Power BI

---
*Ce README offre un aperçu. Pour une analyse approfondie, veuillez vous référer à la documentation PDF détaillée.*
