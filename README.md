# Python Project Scaffold Script

A Bash script that automatically creates a production-ready Python project structure with virtual environment setup, dependency installation, configuration files, and logging.

## Features

* Creates project directory structure
* Creates `src/`, `tests/`, and `logs/` directories
* Generates `.env` file
* Generates `.gitignore`
* Creates `requirements.txt`
* Initializes Python packages
* Creates a virtual environment
* Installs project dependencies
* Logs setup actions to `logs/setup.log`
* Includes error handling and help command

## Project Structure

```text
project_name/
├── src/
│   └── __init__.py
├── tests/
│   └── __init__.py
├── logs/
│   └── setup.log
├── venv/
├── .env
├── .gitignore
└── requirements.txt
```

## Requirements

* Linux / WSL
* Bash
* Python 3
* python3-venv package installed

Ubuntu/Debian:

```bash
sudo apt update
sudo apt install python3-venv
```

## Usage

Make the script executable:

```bash
chmod +x setup.sh
```

Create a new project:

```bash
./setup.sh myproject
```

Display help:

```bash
./setup.sh --help
```

## Generated Files

### .env

```env
DB_NAME=
PORT=
HOSTNAME=
DB_PASSWORD=
```

### .gitignore

```gitignore
venv/
__pycache__/
.env
build/
dist/
```

### requirements.txt

```text
flask
gunicorn
python-dotenv
```

## Logging

All setup actions are recorded in:

```text
logs/setup.log
```

Example:

```text
2026-06-03 12:30:15 scaffolded myproject
2026-06-03 12:30:15 .env created
2026-06-03 12:30:15 venv created
2026-06-03 12:30:20 dependencies installed
```

## Example

```bash
./setup.sh blog-api
```

Output:

```text
setup created successfully !
```
