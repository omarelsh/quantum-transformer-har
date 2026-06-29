# Data Directory

Datasets are not included in this representative public repository.

Large HAR datasets, raw experiment data, and private/local dataset copies are excluded for storage, privacy, licensing, and academic release reasons. The notebooks expect users to configure dataset paths locally, preferably through:

```python
DATA_DIR = "../data"
RESULTS_DIR = "../results"
```

Place locally obtained datasets in this directory using the filenames expected by the relevant notebook, or update the notebook configuration cell to point to your local files.
