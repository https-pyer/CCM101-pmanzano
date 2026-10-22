# ⚙️ Checkpoint 6 — Backup Script Technical Documentation

## 📌 1. Overview

This document explains the backup automation process completed for Laboratory Activity 9: The Cloud Automation Engineer. The task involves creating a Bash script, configuring Linux file permissions, creating compressed backup files, and scheduling the script to run automatically using Cron.

The purpose is to reduce repetitive manual work, organize backup files, and demonstrate how Linux commands can support cloud administration.

## 💻 2. Complete Bash Backup Script

The following is the complete `backup.sh` script used in this laboratory.

### 🧾 Script Code

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

### 🔍 Explanation of the Script Components

| Component | Definition and Purpose |
|---|---|
| `#!/bin/bash` | Specifies Bash as the interpreter for the script. |
| `SOURCE_DIR="app-data"` | Defines the directory containing the application data. |
| `BACKUP_DIR="backups"` | Defines where the backup archives will be stored. |
| `TIMESTAMP=$(date +"%Y%m%d_%H%M%S")` | Gets the current date and time to create a unique backup filename. |
| `echo` | Displays messages in the terminal. |
| `mkdir -p "$BACKUP_DIR"` | Creates the backup directory if it does not already exist. |
| `tar -czf` | Compresses the source directory into a `.tar.gz` archive. |

## 🛠️ 3. Commands Used During the Laboratory

This section explains the main commands used during the earlier checkpoints to prepare the application data, create and execute the backup script, and configure the scheduled task.

### 📁 A. Create the Application Data Directory

```bash
mkdir -p app-data
```

**Purpose:** Creates a directory named `app-data` for storing the files that will be backed up.

- `mkdir` — Creates a directory.
- `-p` — Prevents an error if the directory already exists.

### 📝 B. Create a Sample Data File

```bash
echo "This is sample application data." > app-data/data.txt
```

**Purpose:** Creates a file named `data.txt` inside the `app-data` directory and writes sample text into it.

- `echo` — Displays text.
- `>` — Redirects the text into a file, creating the file if needed or replacing its existing contents.
- `app-data/data.txt` — Specifies the file's location.

### 📄 C. Create or Edit the Backup Script

```bash
nano backup.sh
```

**Purpose:** Opens the Nano text editor so you can write or modify the Bash backup script.

After entering the script, save the file and exit Nano.

### 🔐 D. Grant Permission to Execute the Script

```bash
chmod +x backup.sh
```

**Purpose:** Adds execute permission to `backup.sh`, allowing you to run it directly.

### ▶️ E. Run the Backup Script

```bash
./backup.sh
```

**Purpose:** Executes the backup script from the current directory. The script attempts to compress the `app-data` directory and save the resulting archive in `backups`.

### 📦 F. Check the Generated Backup

```bash
ls -lh backups/
```

**Purpose:** Displays the backup files and their sizes in a readable format.

- `ls` — Lists files and directories.
- `-l` — Displays detailed file information.
- `-h` — Shows file sizes in a human-readable format.

### ⏰ G. Open the Cron Configuration

```bash
env EDITOR=nano crontab -e
```

**Purpose:** Opens the current user's Cron schedule in Nano so you can add or edit scheduled tasks.

Add this line to schedule the backup every day at 2:00 AM:

```cron
0 2 * * * /root/backup.sh
```

Save the file and exit Nano.

### 🔎 H. Verify the Cron Schedule

```bash
crontab -l
```

**Purpose:** Displays the scheduled tasks for the current user. Check that the backup schedule appears in the output.

## 🔑 4. File Permissions and the `chmod +x` Command

Linux uses file permissions to determine whether users can read, modify, or execute files.

The command:

```bash
chmod +x backup.sh
```

has the following components:

| Component | Explanation |
|---|---|
| `chmod` | Changes a file's permission settings. |
| `+x` | Adds execute permission. |
| `backup.sh` | Specifies the file whose permissions will be changed. |

To check the file's permissions, use:

```bash
ls -l backup.sh
```

An `x` in the appropriate permission field indicates that execute permission has been granted.

## ⏰ 5. Cron Job Configuration

Cron is a Linux task scheduler that runs commands or scripts automatically at specified times.

### 🧾 Cron Expression

```cron
0 2 * * * /root/backup.sh
```

This entry schedules the script to run every day at 2:00 AM, according to the system's local time.

### 📊 Explanation of the Five Time Fields

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | At minute zero. |
| Hour | `2` | At 2 AM. |
| Day of Month | `*` | Every day of the month. |
| Month | `*` | Every month. |
| Day of Week | `*` | Every day of the week. |

### ⚠️ Important Scheduling Consideration

The script uses relative directory paths (`app-data` and `backups`), while the Cron entry uses `/root/backup.sh`. Cron may run the script from a different working directory than expected.

To help ensure the backup uses the correct directories, configure the script with absolute paths or explicitly change to the correct working directory before accessing the source and destination folders.

Also, verifying the Cron entry confirms that it is configured, but does not prove that a scheduled backup has successfully completed.

## ✅ 6. Verify the Backup Archive

### 📂 List the Backup Files

```bash
ls -lh backups/
```

Check that a timestamped `.tar.gz` archive appears in the output.

### 📦 Inspect the Archive Contents

```bash
tar -tzf backups/backup_YYYYMMDD_HHMMSS.tar.gz
```

Replace the example filename with the actual archive filename.

- `-t` — Lists the archive's contents.
- `-z` — Processes gzip-compressed data.
- `-f` — Specifies the archive filename.

The output should include the `app-data` directory and its `data.txt` file.

### 🖼️ Required Screenshots

Save the following screenshots in the repository's `screenshots/` directory:

- `script-execution.png` — Shows the script execution and generated backup archive.
- `cron-schedule.png` — Shows the output of `crontab -l` with the configured schedule.

## 🎯 7. Conclusion

This laboratory activity demonstrates how Linux commands, Bash scripting, file permissions, archive compression, and Cron scheduling can be combined to automate a routine backup process.

The earlier commands prepare the application data, create and execute the script, verify the resulting archive, and configure the automated schedule. Understanding the purpose of each command helps make the process easier to follow, troubleshoot, and document.

By completing this activity, I developed practical skills in Linux command-line operations, Bash scripting, backup management, and cloud automation.
