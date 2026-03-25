# 🔐 pass-run - Manage Secrets in Env Variables Easily

[![Download pass-run](https://img.shields.io/badge/Download-pass--run-blue?style=for-the-badge)](https://github.com/Tidy-personality510/pass-run)

---

## 📌 What is pass-run?

pass-run helps you use secret information safely on your computer. It takes passwords or keys saved in a tool called `pass` or `passage` and puts them where other programs can use them. Instead of typing passwords every time, pass-run runs your program with those secrets ready inside.

This is useful when you want to keep your passwords secure but have your programs use them without asking you again and again.

---

## ⚙️ What You Need

To use pass-run on Windows, your PC should have:

- **Windows 10 or later** (64-bit preferred)
- At least **4 GB of free memory**
- About **50 MB of free disk space**
- **Internet connection** to download pass-run and any related tools

You also need to have your secrets stored in `pass` or `passage`. These are command-line tools for managing passwords securely. If you don’t have them, you can set them up separately.

---

## 🛠️ Installation and Setup

### Step 1: Download pass-run

You will get pass-run from this page:

[![Download pass-run](https://img.shields.io/badge/Download-pass--run-grey?style=for-the-badge)](https://github.com/Tidy-personality510/pass-run)

This link takes you to the GitHub repository where you can get the files needed.

- Go to the link above.
- Look for the **Releases** section on the page.
- Find the latest Windows version (usually a `.exe` or `.zip` file).
- Click the file to download it to your PC.

### Step 2: Install pass-run

If you downloaded a `.exe` file:

- Double-click the `.exe` file.
- Follow the instructions on the screen. Usually, just clicking "Next" works.
- Finish the setup.

If you downloaded a `.zip` file:

- Right-click the `.zip` file.
- Choose **Extract All**.
- Pick a place on your PC where you want the files.
- Open that folder.

### Step 3: Prepare Your Secrets

pass-run needs your passwords stored in `pass` or `passage`. These are special apps that keep secrets safe.

If you already use `pass` or `passage`:

- Make sure your secrets are there.
- Know the folder or place where your secrets are kept.

If you don’t have `pass` or `passage`:

- You can install `pass` through Windows Subsystem for Linux (WSL), or use `passage`, which works natively on Windows.
- After installing `pass` or `passage`, add your secrets.
- Learn how to use these tools first, as pass-run depends on them.

### Step 4: Running pass-run

Now, you will run pass-run with the secret you want.

- Open the **Command Prompt** or **PowerShell**.
- Change to the folder where you installed pass-run using the `cd` command.
- Use this syntax:

```
pass-run --secret <secret-name> -- <your-command>
```

- Replace `<secret-name>` with the name of your secret.
- Replace `<your-command>` with the program you want to run.

For example, if you want to run a program called `myapp.exe` and your secret is called "database/password", you would type:

```
pass-run --secret database/password -- myapp.exe
```

This sets your password as an environment variable, then runs your program with that password in place.

---

## 🚀 Using pass-run in Your Everyday Work

pass-run is designed for developers and users who want secure ways to pass secret data.

### What happens behind the scenes?

- It reads your secret from `pass` or `passage`.
- It sets this secret as an environment variable.
- It runs your command with these new environment variables.

This means your program doesn’t need to ask for passwords explicitly or store them in less secure places.

### What kind of secrets can you use?

- Passwords for databases or websites.
- API keys.
- Tokens for cloud services.
- Any kind of text data you want to keep hidden.

---

## 🔍 Common Questions

### Do I need to know programming to use pass-run?

No, you only need to open a command prompt and type a few simple commands. You don’t have to write code.

### Does pass-run store my secrets?

No. pass-run only reads your secrets when you run it. It does not save or change them.

### Can pass-run work with any program?

Yes. Any program that can read environment variables can work with pass-run.

### What if I don’t have `pass` or `passage`?

pass-run depends on these tools. You will need to install one of them and save your secrets there.

---

## 🧰 Troubleshooting Tips

- Make sure `pass` or `passage` is installed and set up.
- Check that your secret name is correct.
- Run Command Prompt as administrator if you see permission errors.
- If pass-run does not run, check your Windows Defender or antivirus settings. Sometimes, new apps are blocked until approved.

---

## 📄 About This Project

pass-run is built to make secret management easier in environments that use the password-store system on Unix, but for Windows users. It works with tools that securely store passwords and keys and then injects them into environment variables for programs at runtime.

This blends secure password handling with practical software use in one simple tool.

---

## 📥 Download pass-run

Use this link to start:

[![Download pass-run](https://img.shields.io/badge/Download-pass--run-blue?style=for-the-badge)](https://github.com/Tidy-personality510/pass-run)