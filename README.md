# Oil Crises Analysis 2026

Brief description of the project, its purpose, and the main problem it solves.

## Table of Contents

* [Project Overview](#project-overview)
* [Data Sources](#data-sources)
* [Directory Structure](#directory-structure)
* [Environment Setup](#environment-setup)
* [Usage](#usage)
* [Methodology](#methodology)
* [Key Insights & Results](#results)
* [Security Scanning](#security-scanning)
* [Contributing](#contributing)
* [License](#license)

## Project Overview

*Provide a detailed explanation of the business or research problem. What are the objectives of this analysis? What is the expected impact?*

## Data Sources

*Describe the data used in this project.*

* **Source 1:** [Link or description]
* **Source 2:** [Link or description]

> **Note:** Raw or sensitive data should never be committed to the repository. Add data directories to your `.gitignore`.

## Directory Structure

```text
├── justfile                # Command runner recipes (setup, tests, etc.)
├── notebooks               # Jupyter notebooks
│   ├── data_processing_notebook.ipynb  # Data cleaning and integrity checks
│   └── data_analysis_notebook.ipynb    # Exploratory analysis and findings
├── pyproject.toml          # Configuration file for project and dependency management
├── reports                 # Generated analysis and documentation
│   ├── REPORT.md           # Full write-up: summary, methodology, findings
│   └── cleaning_log.md     # Running log of data-cleaning decisions
├── src
│   └── oil_crises_analysis_2026# Importable package, installed in editable mode by `uv sync`
│       ├── __init__.py
│       ├── data            # Scripts to fetch, clean, or generate data
│       └── visualization   # Scripts to create exploratory and results-oriented visualizations
├── tests                   # Unit tests and integration tests
│   ├── __init__.py
│   └── test_example.py
└── README.md               # The top-level README for developers using this project.
```

## Environment Setup

*Instructions on how to set up the isolated computational environment to run the analysis scripts. Choose the package manager that fits your workflow.*

```bash
# Clone the repository
git clone https://github.com/username/oil_crises_analysis_2026.git
cd oil_crises_analysis_2026
```

### Option 1: uv

```bash
# uv sync automatically creates the .venv and installs dependencies from pyproject.toml
uv sync
source .venv/bin/activate  # On Windows use `.venv\Scripts\activate`, or run via WSL2 terminal
```

### Option 2: Standard pip (venv)

```bash
python -m venv .venv
source .venv/bin/activate  # On Windows use `.venv\Scripts\activate`, or run via WSL2 terminal
pip install .              # Installs dependencies listed in pyproject.toml
```

### Option 3: Poetry

```bash
poetry install
poetry shell
```

## Usage

*Explain how to run the project.*

Start with `notebooks/data_processing_notebook.ipynb` to clean and validate the data, logging changes in `reports/cleaning_log.md` as you go.
Move to `notebooks/data_analysis_notebook.ipynb` for exploratory analysis, then write up findings in `reports/REPORT.md`.

The package lives under `src/oil_crises_analysis_2026/` using an src layout. Once you've run `uv sync`, it installs in editable mode, so it's importable from notebooks and scripts anywhere in the project without extra path setup.

```bash
# Example: run the data ingestion pipeline (add src/oil_crises_analysis_2026/data/make_dataset.py)
uv run python -m oil_crises_analysis_2026.data.make_dataset
```

## Methodology

*Briefly describe the data analysis lifecycle for this project:*

1. **Data Cleaning & Preprocessing:** How was the data prepared and cleaned?
2. **Exploratory Data Analysis (EDA):** What were the key findings and distributions?
3. **Evaluation:** What metrics or comparisons were used to validate the findings?

## Results

*Summarize the final results of the analysis. Include key metrics, business insights, and potentially a visual representation (e.g., a link to a chart in `reports/`).*

## Security Scanning

[Semgrep](https://semgrep.dev) scans every pull request and push to `main` (`.github/workflows/semgrep.yml`).

Create a token at [semgrep.dev](https://semgrep.dev/orgs/-/settings/tokens) and add it as a repository secret:

```bash
gh secret set SEMGREP_APP_TOKEN
```

## Contributing

*Guidelines for how others can contribute to the project.*

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'feat: add AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

### Commits and PRs

Pull requests must pass these checks:

* **`lint` and `tests`**: ruff and pytest must pass. `tests` is skipped on release-please PRs that only change version files and `CHANGELOG.md`.
* **Commit lint**: every non-merge commit subject must be a [Conventional Commit](https://www.conventionalcommits.org/), `type(scope)!: description`, with `type` one of `feat`, `fix`, `docs`, `refactor`, `test`, `build`, `ci`, `chore`, or `revert`. release-please versions from the same messages: `feat` bumps the minor version, `fix` the patch, and `!` or a `BREAKING CHANGE:` footer the major.
* **Semgrep**: any finding fails the PR ([Security Scanning](#security-scanning)).

Squash merges replace a PR's commits with one commit titled after the PR, which the commit lint never checks. If you squash, give the PR a Conventional Commit title.

## License

MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
