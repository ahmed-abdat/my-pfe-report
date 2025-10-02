# Système de Détection d'Anomalies pour Moteurs Industriels basé sur l'IA Embarquée

## 📚 Projet de Fin d'Études - Master EEA

**Auteur:** Ahmed Abdellahi ABDAT
**Encadrant:** Dr. Khalil JOUILI
**Institution:** Faculté des Sciences de Bizerte, Université de Carthage
**Année Académique:** 2024-2025

## 🎯 Objectif du Projet

Développement d'un système de maintenance prédictive accessible aux PME utilisant TinyML sur ESP32 pour la détection d'anomalies dans les moteurs industriels. Le projet vise à démocratiser l'accès à la maintenance prédictive en réduisant les coûts de 99% par rapport aux solutions commerciales.

## 🚀 Innovations Clés

- **Première implémentation documentée** de K-means en TinyML pour l'analyse vibratoire industrielle
- **Coût total:** 47,50€ (réduction de 99%)
- **Performance:** 92,5% de précision, latence de 4,5ms
- **Autonomie:** 105 heures sur batterie
- **Déploiement:** 20 minutes d'installation

## 📁 Structure du Projet

```
my-pfe-report/
├── main.tex                    # Document principal LaTeX
├── Makefile                     # Automatisation de la compilation
├── CLAUDE.md                    # Guide pour Claude Code AI
├── bibliographie.bib            # Références (44+ sources)
├── chapitres/                   # Chapitres du mémoire
│   ├── introduction.tex         # Introduction générale
│   ├── chapitre1_etat_art.tex   # État de l'art
│   ├── chapitre2_conception.tex # Conception du système
│   ├── chapitre3_realisation.tex # Réalisation et tests
│   └── conclusion.tex           # Conclusion et perspectives
├── annexes/                     # Annexes techniques
│   ├── code_source.tex          # Code C++ complet
│   └── fiches_techniques.tex    # Spécifications
└── images/                      # Figures et diagrammes
    ├── logos/                   # Logos institutionnels
    ├── conception/              # Schémas de conception
    └── resultats/               # Graphiques de résultats
```

## 🛠️ Compilation

### Prérequis
- Distribution LaTeX complète (TeX Live ou MiKTeX)
- Make (pour l'automatisation)
- Éditeur LaTeX (TeXstudio, VS Code avec LaTeX Workshop, etc.)

### Commandes de Compilation

```bash
# Compilation complète avec bibliographie
make all

# Compilation rapide (sans bibliographie)
make quick

# Nettoyer les fichiers temporaires
make clean

# Voir le PDF généré
make view

# Statistiques du document
make stats
```

### Sortie
Le document final est généré sous : `rapport_pfe_abdat_ahmed.pdf`

## 📊 Résultats Principaux

| Métrique | Objectif | Résultat Obtenu | Status |
|----------|----------|-----------------|---------|
| Précision | >90% | 92,5% | ✅ |
| Latence | <10ms | 4,5ms | ✅ |
| Coût Total | <50€ | 47,50€ | ✅ |
| Autonomie | >100h | 105h | ✅ |
| Installation | <30min | 20min | ✅ |

## 🔬 Technologies Utilisées

### Matériel
- **Microcontrôleur:** ESP32-WROOM-32 (Dual-core, 240MHz)
- **Capteur:** ADXL345 (Accéléromètre 3 axes)
- **Alimentation:** Batterie Li-Po 3.7V 2000mAh
- **Boîtier:** Protection IP54

### Logiciel
- **Langage:** C/C++ avec Arduino Framework
- **IA:** K-means adapté pour TinyML
- **Traitement:** FFT pour analyse fréquentielle
- **Communication:** BLE pour monitoring

## 📖 Contenu du Mémoire

### Introduction Générale
Contexte de l'Industrie 4.0 et défis des PME pour accéder à la maintenance prédictive.

### Chapitre 1: État de l'Art
- Évolution de la maintenance industrielle
- Analyse vibratoire et normes ISO
- TinyML et IA embarquée
- Revue critique de la littérature

### Chapitre 2: Conception
- Architecture système proposée
- Choix algorithmique (K-means non supervisé)
- Optimisations pour ESP32
- Métriques de performance

### Chapitre 3: Réalisation
- Implémentation pratique
- Tests sur moteur Leroy Somer au laboratoire FSB
- Analyse des résultats
- Validation expérimentale

### Conclusion
Contributions, limitations et perspectives futures.

## 🔄 État du Projet

- [x] Recherche bibliographique complète
- [x] Conception du système
- [x] Implémentation du prototype
- [x] Tests expérimentaux en laboratoire
- [x] Rédaction du mémoire
- [x] Préparation de la soutenance
- [ ] Soutenance finale

## 📚 Références Principales

- McKinsey (2024): Industry 4.0 adoption challenges
- ISO 10816-3: Vibration severity standards
- Pete Warden (2019): TinyML fundamentals
- Scikit-learn documentation: K-means clustering

## 🤝 Remerciements

- **Dr. Khalil JOUILI** - Encadrement et conseils techniques
- **Laboratoire FSB** - Accès aux équipements de test
- **Équipe pédagogique Master EEA** - Support académique

## 📄 Licence

Ce projet est soumis aux règles de propriété intellectuelle de l'Université de Carthage et de la Faculté des Sciences de Bizerte.

## 📧 Contact

Ahmed Abdellahi ABDAT
Email: [votre.email@etudiant.fsb.tn]
LinkedIn: [votre-profil-linkedin]

---

*Mémoire de Projet de Fin d'Études - Master EEA - FSB 2024-2025*