#!/bin/bash

set -euo pipefail

usage(){
    echo "Usage: $0 PROJECT_NAME"
    echo "create while Python project setup" 
}
if [ $# -eq 0 ]; then
    usage >&2
    exit 1 
fi 


if [ "$1" = "--help" ]; then 
    usage >&2
    exit 0 
fi 

PROJECT=$1

if [ -d "$1" ]; then 
    echo "Error: $PROJECT already exists" 
    exit 1 
fi 

mkdir -p "$PROJECT"/{src,tests,logs}
cd "$PROJECT"
LOG=logs/setup.log
log(){
    echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"
}
log "scafolded $PROJECT"

cat > .env << 'EOF'
DB_NAME=
PORT=
HOSTNAME=
DB_PASSWORD=
EOF
log ".env created"

cat > .gitignore << 'EOF'
venv/
__pycache__/
.env
build/
dist/
EOF
log ".gitignore created"

cat > requirements.txt << 'EOF'
flask
gunicorn
python-dotenv
EOF
log "requirement.txt created"

touch src/__init__.py tests/__init__.py
log "Pyhton initial packages created" 

python3 -m venv venv 
log "venv created"

venv/bin/pip install -r requirements.txt
log "dependencies installed" 

log "setup creation done"
echo .
echo .
echo .
echo "setup created successfully !"
echo .
echo .
echo .
