# Princess Quest I–III (Fan Recreation)

A non-commercial, fan-made recreation of the **Princess Quest** arcade minigames from *Five Nights at Freddy’s: Security Breach*, made as a technical and design exercise.

This project exists purely as a way for me to test my skills in GameMaker before moving on to a fully original game. It is not intended to replace, compete with, or redistribute the original game.

> Play *Five Nights at Freddy’s: Security Breach* here:
>
> * [Windows / Linux (Steam)](https://store.steampowered.com/app/747660/Five_Nights_at_Freddys_Security_Breach/)
> * [Windows (Epic Games)](https://store.epicgames.com/en-US/p/five-nights-at-freddys-security-breach-8dee2a)
> * [Xbox One / Series X|S](https://www.xbox.com/en-us/games/store/five-nights-at-freddys-security-breach/9nmp8kfrtncd)
> * PlayStation 4 / 5
> * Nintendo Switch

---

## Project Status

🚧 **Princess Quest I** — In progress
- ~~Intro animation and controller object~~
- ~~Movment function and gamepad support~~
- Princess sprite import
- Room import and transition animations
- Enemie sprite import and AI setup
- Events (item pickup, puzzles, glitchtrap)

⛔ **Princess Quest II** — Not started\
⛔ **Princess Quest III** — Not started

Expect bugs, missing features, and probably gamemaker quirks

---

## Engine & Platform

* **Engine:** GameMaker Beta 2024.1400.2.940
* **Language:** GML
* **OS:** Arch Linux

This project uses a **beta build** of GameMaker that is known to be unstable. If something breaks, the engine is probably to blame (and occasionally me).

---

## Developer Notes – GameMaker Beta Setup

⚠️ This section exists mainly as a reminder for myself. You do **not** need to follow these steps to understand or browse the project.

I am using a very specific GameMaker beta version that was never officially supported on Arch Linux. The version I use is packaged in the AUR and adapted from the Ubuntu `.deb` build.

### Installation Sources

* **Windows:** https://gms.yoyogames.com/GameMaker-Installer-2024.1400.2.940.exe
* **macOS:** https://gms.yoyogames.com/GameMaker-2024.1400.2.940.pkg
* **Linux (Ubuntu):** https://download.opr.gg/GameMaker-Beta-2024.1400.2.940.deb
* **Linux (Arch):** The version was at some point available on the AUR, but the maintainer keeps gamemaker constantly updated (nice job btw) so I placed the PKGBUILD and licence inside the `gamemaker-beta-bin` folder, just install it as any other repo from the AUR.

Huge thanks to **danielah05** for maintaining and adapting the AUR package.

### Arch Linux Dependencies

* clang
* gamemaker-steamruntime-sdk-bin (AUR)
* linuxdeploy-appimage (AUR)
* obsolete-appimagetool-bin (AUR)
* openal
* unzip / zip

---

## Devlog

### 15-12-2025 — Engine hopping and regret

This project originally started on **GameMaker LTS (Windows)**. After switching to Arch Linux because Windows kept giving me problems (the audio driver broke and I was fighting for an entire week with how limited access Windows gives me to MY OWN COMPUTER) so I moved the project to **Godot Engine** after not finding the same LTS build available to download from the official Arch repo.

That experiment didn’t last long. While Godot is powerful and has potential for way better (mind you buckshot roulette was made on godot, a fairly decent and fun 3d game), I’m significantly more comfortable with GML and GameMaker’s simplicity, specially for 2d games. After discovering a maintained GameMaker beta package on the AUR (and discovering how to install stuff from the AUR), I switched engines *again* and restarted development there.

The current build is unstable and occasionally broken, but development is noticeably faster now thanks to the simplicity of the engine and my familiarity with it. I'm working now on testing the beta build as it massively differs from the LTS build I was using and is packed with more features that I might use for convenience.

### 16-12-2025 — Intro recovered and working on glitching shader

Got the intro screen to work with animations and all. Finding assets of princess quest is hard due to me not being a dataminer, so I don't know how to access Security Breach's version of it and I'm relying on people's upladed sprite sheets.

Princess Quest has a glitching effect whenever you press enter in the intro of any of the three entries, or pick up an item or at random sometimes, I'm working on recreating that.


---

## Disclaimer

This is a **non-commercial fan project**. *Five Nights at Freddy’s*, *Princess Quest*, and all related characters, names, and assets are the property of their respective owners (Scott Cawthon / Steel Wool Studios).

No assets from the original game are redistributed here.
