# How to install GDB on Mac OS M3 🍺

<img src="https://github.com/user-attachments/assets/ee2bc99b-9377-4a1d-a470-a431eb0664ca" alt="late-night-girl" width="800" height="500">



### Step 1 - Install Homebrew (if not already installed):

**What is homebrew? 🤔**

- Homebrew is a package manager for macOS and Linux that simplifies the installation of software. It allows users to easily download, install, and manage applications and utilities directly from the command line, without needing to search for them online or deal with complex installation processes.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For the latest Mac M3 chip, GDB cannot be directly downloaded. Attempting to do so will result in the following error message:

```sh
brew install gdb

gdb: The x86_64 architecture is required for this software.
Error: gdb: An unsatisfied requirement failed this build.
```

**⚠️ Why this Error Occurs**

- The error arises because GDB relies on the x86-64 architecture, which is incompatible with the ARM-based M3 chip.

**What it is x86-64 architecture?**

The x86-64 architecture (also called x64, AMD64, or Intel 64) is a 64-bit version of the older 32-bit x86 architecture used in most modern CPUs. Here’s what it means in simple terms:
- **More Memory**: It allows computers to use much more memory (RAM) than 32-bit systems, which are limited to 4 GB.
- **Faster Performance**: With 64-bit registers, it can process larger amounts of data at once, making it faster for tasks like gaming, video editing, and large applications.
- **Backward Compatibility**: It can still run older 32-bit programs alongside newer 64-bit ones without problems.
- **Widely Used**: Most modern PCs and servers use x86-64 processors.


### Step 2 - Install Rosetta 2 (if not already installed)

```sh
softwareupdate --install-rosetta
```
**What it is Rosetta?**

- Rosetta 2 is a translation tool for Macs with Apple Silicon (like M1, M2, or M3 chips). It allows apps built for Intel processors to run on these newer Macs by converting their code into a format Apple Silicon can understand. This process happens automatically in the background when you open an Intel-based app on an Apple Silicon Mac, making the transition seamless for users


#### 1.Install GDB under Rosetta

Force Homebrew to run under Rosetta and install GDB:

- Open a new Terminal window using Rosetta:
  - Go to Applications > Utilities > Terminal.
  - Right-click Terminal and select Get Info.
  - ✅ Check the Open using Rosetta box.


<img src="https://github.com/user-attachments/assets/300e3c90-c0f0-4b1c-b89f-4a91826d642a" alt="Activate Rosetta" width="300" height="100">


**Why is Rosetta Needed?**

- When Apple transitioned from Intel processors to its own ARM-based Apple Silicon in 2020, many existing applications were still built for x86 processors. To ensure a smooth transition, Apple introduced Rosetta so users could run their existing software while developers updated their apps for ARM.

#### 2. Use Homebrew in Rosetta Mode

```sh
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Why this error occurs?**
```sh
arch -x86_64 /usr/local/bin/brew install gdb
arch: /usr/local/bin/brew isn't executable
```

The error arch: /usr/local/bin/brew isn't executable suggests that your Homebrew installation is not configured for x86_64 emulation. This typically happens if Homebrew is installed in a different location (e.g., /opt/homebrew for ARM-based Macs like M1, M2, or M3).


#### How to fix this

**Step 1: Verify Homebrew Installation**
```sh
which brew
```
If it returns `/opt/homebrew/bin/brew`, your Homebrew is installed for ARM architecture, which is not compatible with running x86-based tools directly.


**Step 2: Create an x86 Homebrew Installation**

To install GDB in x86 mode, you need a separate Homebrew installation configured for x86_64:

Open a Rosetta Terminal:
- Go to Applications > Utilities > Terminal.
  - Right-click Terminal, select Get Info, and check Open using Rosetta.
  - Launch this Terminal.
  - Install x86 Homebrew: In the Rosetta Terminal, install Homebrew in /usr/local (the x86 location):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
Follow the prompts, and ensure it installs under /usr/local.
```

### Step 3 - Code-Sign GDB 🛡️

#### Create a Code-Signing Certificate 🔑

1. Open Keychain Access:

```bash
open /Applications/Utilities/Keychain\ Access.app
````

2. Create a Code-Signing Certificate:

- Go to Keychain Access > Certificate Assistant > Create a Certificate.
- Set the certificate name (e.g., gdb-cert).
- Choose Code Signing as the certificate type.
- Save and set the certificate to **Always Trust**.


<img width="615" alt="Certificate assistance" src="https://github.com/user-attachments/assets/26ad3442-ea45-4c5a-b917-4820566bff21" />


**3. Apply the certificate to GDB 🔒**:

```bash
codesign -s gdb-cert /usr/local/bin/gdb
```

### Step 4 - Verify GDB Installation ✅

Test the GDB installation by checking its version:

```sh
gdb --version
```



---
