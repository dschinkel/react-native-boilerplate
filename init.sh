#!/bin/bash
# init.sh: The engine for your "Zero-Friction" Seeding Workflow

SOURCE_DIR="../react-native-boilerplate"
DEST_DIR="."
PROJECT_NAME=$(basename "$(pwd)")

echo "🚀 Starting Name Bin Bootstrap for: $PROJECT_NAME"

# 1. SMART MERGE (rsync -au)
# -a: archive mode, -u: update (don't overwrite newer files in destination)
rsync -auv \
  --exclude='node_modules/' \
  --exclude='.git/' \
  --exclude='tasks.md' \
  --exclude='init.sh' \
  "$SOURCE_DIR/" "$DEST_DIR/"

# 2. DEPENDENCY INSTALL
if [ -f "package.json" ]; then
    echo "📦 Running yarn install..."
    yarn install
fi

# 3. GITHUB CLI AUTOMATION
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "🐙 Initializing Git and creating private repo..."
    git init -b main
    git add .
    git commit -m "initial: seed from react-app-boilerplate"

    # Creates the repo on GitHub and pushes the current folder
    gh repo create "$PROJECT_NAME" --private --source=. --push
else
    echo "✅ Git already initialized. Skipping repo creation."
fi

echo "✅ $PROJECT_NAME is ready. Logic synced, Yarn installed, GitHub pushed."
