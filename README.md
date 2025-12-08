# 🟢 Green Commit Bot

An automated GitHub Actions bot that keeps your contribution graph green with daily commits! 🚀

## 📊 What It Does

This bot automatically:
- ✅ Updates `update.md` with timestamps
- ✅ Creates daily commits with random emoji messages
- ✅ Keeps your GitHub contribution graph active
- ✅ Runs on a customizable schedule

## 🎯 Features

- **Automated Daily Commits**: Runs on GitHub Actions (no local setup needed)
- **Random Commit Messages**: Variety of emoji-filled messages
- **Customizable Schedule**: Easy cron configuration
- **Zero Maintenance**: Set it and forget it!

## 🚀 How It Works

1. GitHub Actions runs on a schedule (default: daily at 00:00 UTC)
2. The `task.sh` script generates a random commit message
3. Updates `update.md` with the current timestamp
4. Commits and pushes changes automatically
5. Your contribution graph stays green! 🟩

## ⚙️ Setup

### Prerequisites
- A GitHub account
- A repository (this one!)

### Installation

1. **Fork/Clone this repository**
```bash
   git clone https://github.com/razeeniqbal/green-commit-bot.git
```

2. **Enable GitHub Actions**
   - Go to Settings → Actions → General
   - Under "Workflow permissions", select "Read and write permissions"
   - Save changes

3. **Customize (Optional)**
   - Edit `task.sh` to change commit messages
   - Edit `.github/workflows/schedule.yml` to change schedule
   - Update Git user info in `task.sh`

4. **Push to GitHub**
```bash
   git add .
   git commit -m "🚀 Setup green commit bot"
   git push
```

5. **Test It**
   - Go to Actions tab
   - Click "Daily Green Commit"
   - Click "Run workflow" to test manually

## 📅 Customizing the Schedule

Edit `.github/workflows/schedule.yml`:
```yaml
schedule:
  - cron: '0 0 * * *'  # Daily at midnight UTC
```

**Examples:**
- `'0 16 * * *'` - Daily at midnight Malaysia time
- `'0 */12 * * *'` - Every 12 hours
- `'0 9 * * 1-5'` - Weekdays at 9 AM UTC

Use [crontab.guru](https://crontab.guru/) to create custom schedules!

## 🎨 Customizing Commit Messages

Edit the `messages` array in `task.sh`:
```bash
messages=(
  "📝 Daily update"
  "🚀 Keep the streak alive"
  "💪 Your custom message here"
)
```

## 📝 Files

- **`.github/workflows/schedule.yml`**: GitHub Actions workflow configuration
- **`task.sh`**: Bash script that generates commits
- **`update.md`**: File that gets updated with timestamps
- **`README.md`**: This file!

## ⚠️ Important Notes

- **Timezone**: GitHub Actions runs on UTC time
- **Rate Limits**: Default schedule is once per day (safe)
- **Authenticity**: Use responsibly - this is for legitimate activity tracking
- **Git Config**: Update email and name in `task.sh` with your info

## 🛠️ Troubleshooting

**Workflow not running?**
- Check that "Read and write permissions" are enabled
- Verify the workflow file is in `.github/workflows/`
- Check Actions tab for error messages

**Commits not appearing?**
- Ensure Git user.email and user.name are set in `task.sh`
- Check that the workflow has push permissions
- Verify the branch name (main vs master)

## 👨‍💻 Author

**Razeen Iqbal**
- GitHub: [@razeeniqbal](https://github.com/razeeniqbal)

## 🌟 Support

If you find this useful, give it a ⭐️!

---

**Made with ❤️ and ☕ by Razeen**