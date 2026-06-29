#!/usr/bin/env bash
set -euo pipefail

# Run a selected notebook or Python experiment from the repository root.
#
# This helper keeps paths local to the project and avoids hardcoded machine
# directories. Full datasets are not included in this representative repository;
# place local data files under ./data before executing experiments.
#
# Usage:
#   ./scripts/run_experiment.sh notebooks/02_qubits_evaluation.ipynb
#   ./scripts/run_experiment.sh path/to/experiment.py

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-notebooks/02_qubits_evaluation.ipynb}"

export DATA_DIR="${DATA_DIR:-${REPO_ROOT}/data}"
export RESULTS_DIR="${RESULTS_DIR:-${REPO_ROOT}/results}"

mkdir -p "${DATA_DIR}" "${RESULTS_DIR}"
cd "${REPO_ROOT}"

case "${TARGET}" in
  *.ipynb)
    if ! command -v jupyter >/dev/null 2>&1; then
      echo "Error: jupyter is not installed. Create the conda environment first:"
      echo "  conda env create -f environment.yml"
      echo "  conda activate quantum-transformer-har"
      exit 1
    fi
    jupyter nbconvert --to notebook --execute "${TARGET}" --output-dir "${RESULTS_DIR}/executed_notebooks"
    ;;
  *.py)
    python "${TARGET}"
    ;;
  *)
    echo "Error: unsupported target '${TARGET}'. Use a .ipynb or .py file."
    exit 1
    ;;
esac
