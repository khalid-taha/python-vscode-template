# 🚀 Master Guide: Python Projects with VS Code + pyenv + venv + Git + Extensions

---

## 0. One-time global setup

* **pyenv** manages Python versions (3.11.9 default, 3.13.0 extra, 3.8.10 system).
* **VS Code** installed.
* **Git** + **GitHub CLI (`gh`)** configured (`gh auth login`).

Check:

```bash
pyenv versions
git --version
gh auth status
```

---

## 1. Start a new project

```bash
cd ~/projects
git clone https://github.com/<OWNER>/<REPO>.git myapp
cd myapp
```

---

## 2. Pick Python version

👉 Different projects may need different Python versions.

```bash
pyenv local 3.11.9   # or 3.13.0
```

Check:

```bash
python --version
```

---

## 3. Create a virtual environment

👉 Keeps dependencies isolated.

```bash
python -m venv .venv
source .venv/bin/activate
```

Check:

```bash
python --version
which python   # should be .../myapp/.venv/bin/python
```

---

## 4. Configure VS Code to use `.venv`

1. Open project in VS Code:

   ```bash
   code ~/projects/myapp
   ```
2. Press **Ctrl+Shift+P → Python: Select Interpreter** → choose `.venv/bin/python`.
3. Confirm in VS Code terminal:

   ```bash
   python --version
   ```

---

## 5. Install dev tools

Inside `.venv`:

```bash
pip install --upgrade pip
pip install black ruff pytest jupyter
```

---

## 6. Save dependencies

```bash
pip freeze > requirements.txt
git add requirements.txt
git commit -m "Add requirements.txt"
```

---

## 7. Add `.gitignore`

```gitignore
# venv
.venv/

# Python cache
__pycache__/
*.pyc
*.pyo

# VS Code
.vscode/*
!.vscode/settings.json

# OS junk
.DS_Store
Thumbs.db

# Jupyter
.ipynb_checkpoints/

# Docker
*.log
*.pid
*.sock
*.tmp
```

Commit it:

```bash
git add .gitignore
git commit -m "Add gitignore"
```

---

## 8. Configure VS Code settings

Create `.vscode/settings.json`:

```json
{
  "python.defaultInterpreterPath": "${workspaceFolder}/.venv/bin/python",

  // Formatting
  "editor.formatOnSave": true,
  "python.formatting.provider": "black",

  // Ruff linting
  "ruff.lint.enable": true,
  "ruff.fixAll": true,

  // Pylance type checking
  "python.analysis.typeCheckingMode": "basic",

  // Testing
  "python.testing.pytestEnabled": true,
  "python.testing.unittestEnabled": false,

  // Git
  "git.autofetch": true,
  "git.enableSmartCommit": true,
  "git.confirmSync": false,

  // GitLens
  "gitlens.currentLine.enabled": true,
  "gitlens.hovers.currentLine.over": "line",

  // Jupyter
  "jupyter.notebookFileRoot": "${workspaceFolder}",

  // Markdown
  "markdown.extension.toc.githubCompatibility": true
}
```

---

# 🧩 Extensions — How to Use Them in Practice

---

### 🐍 Python (Microsoft) + Pylance

* **What they do**: IntelliSense, debugging, test discovery, hover tooltips, type checking.
* **How to use**:

  * Hover variables/functions → see types/docs.
  * Press **F5** → debug current script.
  * **Testing panel** → run pytest tests.

---

### 🎨 Black Formatter

* **What it does**: Formats code to standard style.
* **How to use**:

  * Save file (`Ctrl+S`) → auto-formats.
  * Or run manually: **Ctrl+Shift+P → Format Document**.

---

### 🧹 Ruff

* **What it does**: Linting + import sorting + style checks.
* **How to use**:

  * Warnings appear as yellow/red underlines.
  * Hover → see message.
  * Use **lightbulb icon** or **Ctrl+.** → apply auto-fix.

---

### 🧪 Pytest

* **What it does**: Runs tests.
* **How to use**:

  * Create `tests/test_*.py`.
  * Open **Testing** panel (flask icon).
  * Click **Run All Tests** or run individual tests.

---

### 🔗 GitHub Pull Requests and Issues

* **What it does**: Lets you manage GitHub PRs/issues inside VS Code.
* **How to use**:

  * Bottom-left → Accounts → Sign in to GitHub.
  * Side bar → GitHub panel → view PRs, checkout branches, leave comments.

---

### 📜 GitLens

* **What it does**: Enhances Git inside VS Code.
* **How to use**:

  * Hover a line → see who last changed it.
  * Open **GitLens panel** → browse commit history.
  * Right-click file → **Open File History**.

---

### 📓 Jupyter

* **What it does**: Lets you open/run `.ipynb` notebooks.
* **How to use**:

  * Open `notebook.ipynb`.
  * Select kernel = your `.venv`.
  * Run cells with ▶️ icons or **Shift+Enter**.

---

### 🐳 Docker

* **What it does**: Manage containers/images.
* **How to use**:

  * Open Docker panel (whale icon).
  * See containers, start/stop, view logs.
  * Right-click → **Attach Shell** to a running container.

---

### 📝 Markdown All in One

* **What it does**: Improves Markdown editing (docs, README).
* **How to use**:

  * **Ctrl+Shift+V** → open preview.
  * `[TOC]` → auto table of contents.
  * **Ctrl+B / Ctrl+I** → bold/italic.
  * Lists auto-renumber on save.

---

# 🔄 Daily Workflow (all extensions together)

1. Open project → `.venv` auto-selected.
2. Code → Pylance highlights mistakes instantly.
3. Save → Black formats + Ruff fixes style.
4. Run/debug with F5.
5. Run tests via Testing panel.
6. Open notebook.ipynb → run cells with Jupyter.
7. If using Docker → manage containers in VS Code.
8. Write/update README.md → use Markdown preview + TOC.
9. Commit in Source Control panel → GitLens shows history, GitHub extension handles PRs.
10. Update dependencies → `pip freeze > requirements.txt` → commit.

---

✅ This single guide now covers setup, config, **and actual usage** of:

* Python + Pylance
* Black
* Ruff
* Pytest
* GitHub PRs
* GitLens
* Jupyter
* Docker
* Markdown All in One

