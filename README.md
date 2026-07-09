# 💬 Modern Chat System

<p align="center">
  <b>🎮 Developed for Roblox Studio</b> • <b>📜 Written in Lua</b> • <b>🟢 MIT Licensed</b>
</p>

---

## 🌟 Overview
**Modern Chat System** is a premium, open-source custom chat solution built for **Roblox Studio**. It replaces the default chat with a stunning, frosted dark-glass layout tailored perfectly to fit the latest **Floating Topbar** update. 

Backed by Roblox's mandatory filtering service, it delivers maximum compliance, full safety from chat bans, and simultaneous modern bubble chat rendering.

---

## ✨ Features

* 📱 **Modern Glass UI** | Beautiful transparent, smooth rounded corner layout.
* 🔒 **Ban-Proof Security** | Embedded with `TextFilterService` for strict word and number encryption (`####`).
* 🗣️ **Dual Rendering** | Synchronized text display inside both the UI frame and floating above player heads.
* 🔘 **Perfect Fit** | Dynamic script alignment crafted to sit seamlessly under the modern عائم Topbar.
* 📦 **One-Click Setup** | Contains an intelligent distribution script that auto-installs everything.

---

## 📁 Repository Structure

| File / Folder Path | Description |
| :--- | :--- |
| 📁 `src/` | Main source folder housing local and server behaviors. |
| 📄 `src/ChatServerScript.lua` | Handles text filtering, broadcast events, and bubble chat. |
| 📄 `src/MessageInput.lua` | Manages message submission, text wrapping, and scroll jumps. |
| 📄 `src/ToggleButton.lua` | Controls UI visibility and precise Topbar alignment. |
| 📄 `Setup.lua` | The automated drag-and-drop installer script. |
| 📜 `LICENSE` | Full legal copy of the MIT Open-Source License. |

---

## 🛠️ Installation Guide

> [!NOTE]  
> If you imported this via the **Roblox Toolbox Asset**, the script will execute its automatic assembly. 

### Manual GitHub Installation:
1. Download or clone this repository.
2. Structure the components within your **Roblox Studio Explorer** as follows:
   * Move `ChatGui` $\rightarrow$ `StarterGui`
   * Move `SendMessageEvent` $\rightarrow$ `ReplicatedStorage`
   * Move `ChatServerScript` $\rightarrow$ `ServerScriptService`
3. ⚠️ *Crucial Step:* Ensure that the `ChatGui` property `IgnoreGuiInset` is set to **Disabled (`false`)** to prevent Topbar overlap.

---

## 📜 License
This framework is distributed under the **MIT License**. Check out the `LICENSE` file for extensive permissions regarding modification and commercial deployments.

---

<p align="center">
  <b>👑 Project Credits & Identity 👑</b>
</p>

* **Developer:** `Shisui`
* **Discord Username:** `shisui.rar`
* **Made By Shisui For ❤️**
