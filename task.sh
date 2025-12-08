#!/bin/bash

# 1. Define the array of commit messages
messages=(
    "🐛 Fixed a minor bug" 
    "✨ Updated documentation" 
    "🚀 Performance improvements" 
    "🎨 Code style formatting" 
    "📦 Dependency update" 
    "📝 Notes updated"
)

# 2. Select a random message
size=${#messages[@]}
index=$(($RANDOM % $size))
message=${messages[$index]}

# 3. Get current date/time and update the file
# If update.md doesn't exist, this creates it. If it does, it overwrites it.
echo "Last update: $(date)" > update.md

# 4. Configure Git User (Replace with your details)
git config --global user.email "razeeniqbal98@gmail.com"
git config --global user.name "razeeniqbal"

# 5. Stage, Commit, and Push
git add update.md
git commit -m "$message"
git push
