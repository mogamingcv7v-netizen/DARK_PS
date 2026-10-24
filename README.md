# DARK_PS

**DarkPs 4.0** — the dark terminal agent + WebUI. One-line install:

```sh
curl -fsSL https://raw.githubusercontent.com/mogamingcv7v-netizen/DARK_PS/main/install.sh | sh
```

## What it installs
- The agent at `~/.local/share/darkps/agent` (Termux / Linux / macOS / Git Bash)
- The `darkps` launcher:
  - `darkps` — terminal agent
  - `darkps --ui` — the WebUI on port 7861
  - `darkps --web-port N` — WebUI on any port
- Termux: native dependencies via `pkg install` (python-cryptography, python-psutil, python-pillow) so nothing has to compile on the phone

## Uninstall
```sh
curl -fsSL https://raw.githubusercontent.com/mogamingcv7v-netizen/DARK_PS/main/install.sh | sh -- --uninstall
```
(removes `~/.local/share/darkps` and `~/.darkps`)

## License & attribution

This project is a redistribution of [**dark-ps/ps-Agent**](https://github.com/dark-ps/ps-Agent) by **Mr Dark (T.me/sii_3)**.

Licensed under the **Apache License, Version 2.0**. All credit for the agent, its logos, prompts and runtime goes to the original author. See [LICENSE](LICENSE).

> Due credit: upstream repo → https://github.com/dark-ps/ps-Agent
- Upstream author: `T.me/sii_3`
- Installer/launcher/WebUI delivery tooling in this repo is built from that distribution and is released under the same Apache-2.0 terms.
