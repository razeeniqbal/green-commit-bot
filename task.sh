#!/bin/bash

# Array of commit messages with emojis
messages=(
  "🚀 Keep the streak alive"
  "💪 Consistency is key"
  "📝 Daily update"
  "✨ Making progress"
  "🔥 On fire today"
  "🎯 Staying focused"
  "💡 Innovation time"
  "🌟 Another day, another commit"
  "⚡ Quick update"
  "🎨 Creative work"
  "🛠️ Building something great"
  "📊 Data-driven development"
  "🧠 Learning and growing"
  "🎪 Keep moving forward"
  "🌈 Colorful contributions"
)

# Generate random number of commits (1-5)
num_commits=$((RANDOM % 5 + 1))

echo "🎲 Making $num_commits random commits today..."

# Configure git
git config --local user.email "razeeniqbal@users.noreply.github.com"
git config --local user.name "Razeen Iqbal"

# Make multiple commits
for ((i=1; i<=num_commits; i++))
do
  # Get random message
  random_index=$((RANDOM % ${#messages[@]}))
  message="${messages[$random_index]}"
  
  # Get current date and time
  current_date=$(date +'%Y-%m-%d %H:%M:%S')
  
  # Create or update the file
  if [ ! -f "update.md" ]; then
    echo "# Auto Commit Log" > update.md
    git add update.md
  fi
  
  # Append update with commit number
  echo "" >> update.md
  echo "## Commit #$i of $num_commits" >> update.md
  echo "**Last Update:** $current_date" >> update.md
  echo "**Message:** $message" >> update.md
  
  # Add a small delay between commits (1-3 seconds) for more natural timestamps
  if [ $i -lt $num_commits ]; then
    sleep $((RANDOM % 3 + 1))
  fi
  
  # Commit changes
  git add update.md
  git commit -m "$message - $current_date" -m "Automated commit $i of $num_commits"
  
  echo "✅ Commit $i/$num_commits: $message"
done

echo "🎉 Successfully made $num_commits commits!"
