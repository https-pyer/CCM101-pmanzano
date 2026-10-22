# ⚙️ Laboratory 09 — The Cloud Automation Engineer

## 📌 Mission Overview

Laboratory Activity 9 focuses on **Linux automation using Bash scripting and Cron scheduling**. In this activity, I created a sample application directory, prepared a data file, and developed a Bash script to automate the backup process.

The script generates a timestamped filename and compresses the contents of the `app-data` directory into a `.tar.gz` archive stored in the `backups` directory. I also configured file permissions to make the script executable and learned how Cron can schedule the backup to run every day at 2:00 AM.

This mission demonstrates how automation can reduce repetitive manual tasks, improve efficiency, and help organize backup files.

## 🎯 Objectives

- 📖 Understand Bash scripts, variables, comments, and the shebang.
- 📁 Create directories and sample application data.
- 📝 Create and edit a Bash script using Nano.
- 🔐 Grant execution permission using `chmod +x`.
- 📦 Compress application data into a timestamped `.tar.gz` archive.
- ⏰ Configure and verify a recurring Cron job.
- 🔍 Check generated backup files and inspect their contents.
- 📄 Document the procedures and results using Markdown.
- 🐙 Complete Laboratory 09 in the GitHub Cloud Computing Portfolio.

## 🛠️ Commands Executed

The following commands were used to prepare the application data, create and run the backup script, verify the archive, and configure Cron.

| Command | Purpose |
|---|---|
| `mkdir -p app-data` | Creates the directory for sample application data. |
| `echo "This is critical client data." > app-data/data.txt` | Creates `data.txt` and writes sample text into it. |
| `nano backup.sh` | Opens Nano to create or edit the backup script. |
| `chmod +x backup.sh` | Grants execute permission to the script. |
| `./backup.sh` | Runs the backup script from the current directory. |
| `ls -lh backups/` | Lists backup files and displays their sizes. |
| `tar -tzf backups/backup_YYYYMMDD_HHMMSS.tar.gz` | Lists the contents of a specific compressed archive. Replace the example filename with the actual filename. |
| `crontab -l` | Displays the current user's scheduled Cron jobs. |
| `env EDITOR=nano crontab -e` | Opens the Cron configuration in Nano for editing. |

## 💻 Bash Backup Script

The `backup.sh` script automates the creation of a compressed backup of the application data.

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Compress the source directory into a tarball (.tar.gz)
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"
```

### 🔍 How the Script Works

1. **Define directories:** `SOURCE_DIR` identifies the application data, while `BACKUP_DIR` specifies where the backup archives are stored.
2. **Generate a timestamp:** The `date` command creates a date-and-time value that helps distinguish backup files.
3. **Create the backup directory:** `mkdir -p` creates the destination directory if it does not already exist.
4. **Compress the data:** `tar -czf` packages and compresses the `app-data` directory into a `.tar.gz` archive.
5. **Display messages:** `echo` prints status messages in the terminal.

**Note:** The final message does not independently confirm that the backup succeeded. Check the generated archive to verify that the backup was created correctly.

## ⏰ Cron Job Configuration

Cron is a Linux scheduling utility that automatically runs commands or scripts at specified times.

The following Cron entry schedules the backup script to run every day at 2:00 AM:

```cron
0 2 * * * /root/backup.sh
```

### 📊 Cron Schedule Breakdown

| Field | Value | Explanation |
|---|---|---|
| Minute | `0` | Runs at minute zero. |
| Hour | `2` | Runs at 2:00 AM. |
| Day of Month | `*` | Runs every day of the month. |
| Month | `*` | Runs every month. |
| Day of Week | `*` | Runs every day of the week. |

### 📝 Steps to Configure Cron

1. Open the Cron configuration:

   ```bash
   env EDITOR=nano crontab -e
   ```

2. Add the schedule:

   ```cron
   0 2 * * * /root/backup.sh
   ```

3. Save the file and exit Nano.
4. Verify the installed schedule:

   ```bash
   crontab -l
   ```

**Important:** Make sure `/root/backup.sh` matches the actual location of your script. Because the script uses relative paths (`app-data` and `backups`), Cron may run it from a different working directory. Use absolute directory paths or explicitly change to the correct working directory to ensure that the expected files are accessed.

## 🔎 Backup Verification

After running the script, check whether a backup archive was created.

### 📂 List the Backup Files

```bash
ls -lh backups/
```

This command displays the backup files, their permissions, and their sizes in a readable format.

### 📦 Inspect the Archive Contents

```bash
tar -tzf backups/backup_YYYYMMDD_HHMMSS.tar.gz
```

Replace `YYYYMMDD_HHMMSS` with the timestamp in your actual backup filename.

The command should list the contents of the archive, including the `app-data` directory and its `data.txt` file.

- `-t` — Lists the archive contents.
- `-z` — Processes gzip-compressed data.
- `-f` — Specifies the archive filename.

## 🧠 Skills Learned

Through this laboratory activity, I developed and practiced the following skills:

- **Bash Scripting:** Writing commands to automate routine operations.
- **Linux File Management:** Creating directories and managing application data.
- **File Permissions:** Using `chmod +x` to make a script executable.
- **Data Compression:** Using `tar` and gzip to create compressed archives.
- **Timestamped Backups:** Generating filenames that identify when backups were created.
- **Cron Scheduling:** Configuring recurring tasks to reduce manual work.
- **Backup Verification:** Checking generated archives and inspecting their contents.
- **Technical Documentation:** Recording procedures and results in Markdown.
- **GitHub Version Control:** Organizing and maintaining a cloud computing portfolio.


## ✅ Conclusion

Laboratory Activity 9 demonstrated how Bash scripting and Cron can work together to automate a routine backup process. By creating a backup script, configuring execution permissions, compressing application data, and scheduling a recurring task, I gained practical experience with Linux automation.

I also learned that reliable automation requires more than writing and executing commands. Verifying backup archives, checking Cron settings, testing scripts carefully, and documenting each step are important for dependable system administration.

The skills gained from this mission will help me in future IT projects involving cloud administration, automation, system maintenance, and data management.
