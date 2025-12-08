#!/bin/bash

# Array of commit messages
messages=(
  "📝 Daily update"
  "🚀 Keep the streak alive"
  "💪 Consistent progress"
  "✨ Another day, another commit"
  "🔥 Staying active"
  "📊 Progress tracking"
  "🎯 Daily contribution"
  "⚡ Quick update"
  "🌟 Keeping momentum"
  "💻 Code life"
)

# Generate random index
random_index=$((RANDOM % ${#messages[@]}))
commit_message="${messages[$random_index]}"

# Get current date and time
current_date=$(date "+%Y-%m-%d %H:%M:%S UTC")

# Create update.md if it doesn't exist
if [ ! -f update.md ]; then
  echo "# Daily Updates" > update.md
  git add update.md
fi

# Append timestamp to update.md
echo "Last updated: $current_date" >> update.md

# Configure Git (replace with your info)
git config user.email "razeeniqbal@gmail.com"
git config user.name "Razeen Iqbal"

# Stage and commit
git add update.md
git commit -m "$commit_message - $current_date"