# Quantum Transformer HAR Experiments

This repository contains a cleaned and simplified version of selected code from my MSc research work on hybrid quantum-classical machine learning models for Human Activity Recognition experiments. It is intended as a representative code sample for academic and teaching-related applications.

## Overview

The notebooks demonstrate experiments around quantum-enhanced transformer-style models for time-series Human Activity Recognition (HAR), including comparisons across qubit counts, quantum-layer depths, and training durations. A compact results visualization notebook and sample results table are included to show the evaluation workflow without publishing the full thesis archive.

This is a representative code sample, not the complete thesis release. Datasets, large experiment files, raw outputs, model checkpoints, third-party source trees, and unpublished thesis materials are excluded.

## Repository Structure

```text
quantum-transformer-har/
├── README.md
├── LICENSE
├── environment.yml
├── .gitignore
├── notebooks/
│   ├── 01_proposed_model_demo.ipynb
│   ├── 02_qubits_evaluation.ipynb
│   ├── 03_qlayers_evaluation.ipynb
│   ├── 04_epochs_comparison.ipynb
│   └── 05_results_visualization.ipynb
├── results/
│   ├── sample_results.csv
│   └── har_avg_acc_vs_avg_flops_bubble_paramsize.png
├── scripts/
│   └── run_experiment.sh
├── data/
│   └── README.md
└── archive_excluded/
    └── README.md
```

## Skills Demonstrated

- Python programming for machine learning experiments
- PyTorch model implementation and training workflows
- Quantum machine learning experimentation with TorchQuantum-style circuits
- Time-series HAR evaluation and model comparison
- Experiment organization, result tracking, and visualization
- Repository cleanup for reproducible public review

## Notebooks

- `01_proposed_model_demo.ipynb`: Demonstrates the proposed hybrid quantum-classical model workflow and baseline comparison structure.
- `02_qubits_evaluation.ipynb`: Evaluates quantum transformer behavior across different qubit configurations.
- `03_qlayers_evaluation.ipynb`: Evaluates the effect of changing the number of quantum layers.
- `04_epochs_comparison.ipynb`: Compares training behavior across different epoch settings.
- `05_results_visualization.ipynb`: Builds the included accuracy/FLOPs/parameter-size bubble plot.

Notebook outputs have been cleared so reviewers can inspect the code cleanly. Local dataset paths should be configured through `DATA_DIR` and experiment outputs should be written under `RESULTS_DIR` or `results/`.

## Setup

Create the conda environment:

```bash
conda env create -f environment.yml
conda activate quantum-transformer-har
```

If TorchQuantum or PyTorch installation differs on your platform, install the CPU/GPU build appropriate for your machine and then rerun the notebooks.

## Running

Open notebooks directly in Jupyter:

```bash
jupyter lab
```

Or execute a selected notebook from the command line:

```bash
./scripts/run_experiment.sh notebooks/02_qubits_evaluation.ipynb
```

The script uses local project paths by default:

```bash
DATA_DIR=./data
RESULTS_DIR=./results
```

## Data Availability

Datasets are not included. Large datasets are excluded for storage, privacy, licensing, and academic release reasons. Place any locally obtained HAR datasets under `data/` and update notebook configuration cells as needed.

## Notes on Excluded Files

The duplicate working folder originally contained large checkpoints, raw experiment outputs, generated figures, local backup notebooks, dataset folders, and a vendored `torchquantum/` source tree. These are not part of the public repository. TorchQuantum should be installed as a dependency rather than committed as third-party source code.

The `archive_excluded/` folder is intentionally ignored by Git. It exists only in this local duplicate as a holding area for material excluded from the representative public code sample.

## License

This project is released under the MIT License. See `LICENSE` for details.
