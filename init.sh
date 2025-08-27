#!/usr/bin/env bash
set -euo pipefail

# Usage: ./init.sh [PYTHON_VERSION]
# Example: ./init.sh 3.13.0  (default is 3.11.9)

PY_VERSION="${1:-3.11.9}"
echo "▶ Using Python ${PY_VERSION}"

# 1) Tell pyenv which Python this project uses
pyenv local "${PY_VERSION}"

# remove template-only files
rm -f how_to_use_the_template.md

# 2) Create and activate a project virtual environment
python -m venv .venv
# shellcheck disable=SC1091
source .venv/bin/activate

# 3) Upgrade pip and install dev tools
python -m pip install --upgrade pip
pip install -r requirements.txt

# 4) Pin exact versions for reproducibility
pip freeze > requirements.txt

echo "✅ Done. Open VS Code and select .venv:"
echo "   code ."
