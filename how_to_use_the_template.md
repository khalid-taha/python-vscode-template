Here’s the **step-by-step flow using only github.com first, then pulling it to your laptop**:

---

## 🔹 Step 1. Create the new repo on github.com

1. Log into [github.com](https://github.com).
2. Open your template repo:
   👉 [`khalid-taha/python-vscode-template`](https://github.com/khalid-taha/python-vscode-template).
3. Click the green **Use this template** button.
4. Select **Create a new repository**.
5. Fill in:

   * **Repository name**: e.g. `test1`.
   * Visibility: Public or Private (your choice).
6. Click **Create repository**.

✅ Now you have a fresh repo `khalid-taha/test1` created from your template.

---

## 🔹 Step 2. Pull (clone) it to your laptop

On your Ubuntu machine:

```bash
cd ~/projects
git clone https://github.com/khalid-taha/test1.git
cd test1
```

---

## 🔹 Step 3. Bootstrap the project

Run the init script:

```bash
./init.sh 3.11.9   # or ./init.sh 3.13.0
```

This will:

* Tell pyenv which Python version to use.
* Create `.venv/` and activate it.
* Install tools from `requirements.txt` (black, ruff, pytest, jupyter).
* Update `requirements.txt` with exact versions.

---

## 🔹 Step 4. Open in VS Code

```bash
code .
```

Inside VS Code:

* Press **Ctrl+Shift+P → Python: Select Interpreter**.
* Choose **.venv/bin/python**.

---

## 🔹 Step 5. Start coding

* Add Python files, commit changes with Source Control panel.
* Push back to GitHub:

  ```bash
  git add .
  git commit -m "First code"
  git push
  ```

---

✅ That’s the simplest workflow:

1. **github.com** → new repo from template.
2. **Client** → clone → `./init.sh` → `code .`.

