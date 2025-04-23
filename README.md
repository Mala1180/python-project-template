# python-project-template

A python project template, using Poetry.

## Setup Instructions

1. **Rename the Template**  
   Run the following command to rename the template to your desired project name:
    ```bash
    ./rename-template.sh <new_project_name>
    ```

2. **Install Poetry and Poethepoet**  
   If you don't have Poetry and Poe installed, you can install them from requirements using pip:
    ```bash
    pip install -r requirements.txt
    ```

3. **Install Project Dependencies**  
   Use Poetry to install all project dependencies:
    ```bash
    poetry install
    ```
4. **Setup Releases**
    - Add your `RELEASE_TOKEN` (see [Personal Access Tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)) to GitHub secrets (or modify [deploy.yml](.github/workflows/deploy.yml) to use
      `GITHUB_TOKEN`).
    - If you want to publish your package to PyPI, you need to add your `PYPI_TOKEN` to GitHub secrets.
        - Make sure to adopt [Conventional Commits](https://www.conventionalcommits.org/) to trigger properly [Semantic Release](https://github.com/DanySK/semantic-release-preconfigured-conventional-commits).

## Main Commands

- **Run Tests**  
  Execute the test suite using `pytest`:
  ```bash
  poe test
  ```
  
- **Run Tests with Coverage**  
  Execute the test suite with coverage reporting:
  ```bash
  poe coverage
  ```
  and generate a report with `poe coverage-report` or `poe coverage-html`
   

- **Run Static Checks**  
  Perform static code analysis using both `mypy` and `ruff`:
  ```bash
  poe static-checks
  ```
  
- **Format Code**  
  Format your code using `ruff`:
  ```bash
  poe format
  ```
  
Note: All these checks are required to pass in order to create a release.