# Radeon-Pro-Optimus (Modified INF Driver)

<img width="1280" height="720" alt="image" src="https://github.com/user-attachments/assets/e3db3bdf-68e1-4294-8528-83c8e36ad305" />


---

## Overview
This repository contains a modified installation package for the **AMD Radeon PRO Software for Enterprise** display driver (Version: `21.Q2.1`, Build / Driver Date: `07/06/2021`). This package has been customized for improved performance, stability, and compatibility across legacy and modern AMD graphics architectures.

The INF has been preserved to allow installation directly via the official AMD setup executable (`setup.exe`).

---

## Key Modifications & Features

*   **Radeon Settings Adrenalin Edition UI:** Despite being built on the rock-solid Enterprise driver core, this package provides the feature-rich Radeon Settings Adrenalin Edition control panel. This grants full access to modern tuning, overlays, and advanced display features instead of the basic enterprise interface.
*   **Targeted GPU Identity Rebranding:** Under this modified package, specific hardware identifiers matching the **AMD Radeon HD 8600 / 8700M Series** are custom branded to display as **AMD R8 M670 Rift**. All other compatible GPUs will retain their standard architecture classifications while still benefiting from the core driver optimizations.
*   **ULPS (Ultra-Low Power State) Boot-Loop & Stutter Nuke:** 
    *   `EnableUlps` explicitly disabled to prevent multi-GPU / crossfire stability issues, power-state drop stutter, and common black-screen/boot-loop behaviors on waking from sleep.
    *   Disabled Deep Sleep (`PP_SclkDeepSleepDisable = 1`) and dynamic GFX memory power gating.
*   **OpenGL Optimizations:**
    *   Enabled Video Buffer Object allocation policies (`OGL_VBO_Alloc_Policy = 1`).
    *   Adjusted catalyst AI settings and texture optimization parameters for enhanced rendering throughput.
*   **MSI (Message Signaled Interrupts) Enabled:**
    *   Forced MSI support globally under hardware device settings (`MSISupported = 1`) to reduce interrupt latency and prevent IRQ conflicts.

This driver introduces OpenGL 4.6 And Vulkan 1.2.
---

## Compatible GPUs

This driver supports a vast selection of AMD Radeon, FirePro, FireStream, and embedded enterprise/consumer graphics cards. 

### Custom Rebranded Mobility Series
*   **AMD R8 M670 Rift:**
    *   AMD Radeon HD 8600 / 8700M Series (Specifically targeted for custom renaming under target device ID `AMD6660.1`).

### Standard Identified Graphics Cards (Inherits Performance Tweaks)
*   **AMD Radeon Desktop & Workstation Series:**
    *   Radeon HD 2350, 2400, 2600, 2900, 3200, 3300, 3400, 3600, 3800, 4200, 4300, 4500, 4600, 4700, 4800, 5450, 5500, 5600, 5700, 5800, 5900, 6300, 6400, 6500, 6600, 6700, 6800, 6900 Series
    *   Radeon HD 7000, 7300, 7400, 7500, 7600, 7700, 7800, 7900 Series
    *   AMD Radeon R7 240 / 200 / 350 / 360 Series
    *   AMD Radeon R9 200 / 380 / 390 / Fury Series & Radeon Pro Duo
    *   AMD Radeon (TM) R5 330, R5 340, R7 340, R7 350, Radeon 530 Series
*   **AMD FirePro / FireGL / FireStream Series:**
    *   FirePro V2260, V2450, V3700, V3750, V3800, V4800, V5700, V5800, V7700, V7750, V7800, V8700, V8750, V8800, V9800
    *   AMD FirePro W2100, W4100, W4300, W5000, W5100, W600, W7000, W7100, W8000, W8100, W9000, W9100
    *   AMD FirePro S4000X, S7000, S9000, S9050, S9100, S9150, S9170, S9300 x2, S10000
    *   AMD FireStream 9170, 9250, 9270, 9350, 9370
*   **AMD Embedded & Special Editions:**
    *   AMD Radeon E2400, E4690, E6460, E6760, E8860
    *   Radeon Sky 500, 700, 900
*   **AMD Mobility / Laptop GPUs:**
    *   Mobility Radeon HD 2400, 2600, 3400, 3650, 3850, 4200, 4300, 4500, 4650, 4830, 4850, 4860, 4870
    *   Mobility Radeon HD 5000, 5430, 5570, 5800 Series
    *   Mobility Radeon HD 6000M, 7000M Series
    *   AMD Radeon R9 M200X, M275X, M360, M370X, M375, M380, M385, M390X, M395X
    *   AMD FirePro M4000, M4100, M4150, M5100, M6000, M6100, M7740, W4170M, W4190M, W5130M, W5170M, W6150M, W7170M
*   **AMD APUs (Integrated Graphics):**
    *   AMD Radeon HD 3000, 3100, 3200, 4200, 4250, 4290
    *   AMD Radeon HD 7000G / 7000D Series (e.g., HD 7400G–7660D)
    *   AMD Radeon HD 8000G / 8000D Series (e.g., HD 8310G–8650D)
    *   AMD FirePro A300 Series (APU Graphics)

---

## Installation Instructions

1. Download the driver from the [RELEASES](https://github.com/eadxm/Radeon-Pro-Optimus/releases/tag/Release-1.0) page.
2. Run the official AMD setup application (`setup.exe`) included in the root extraction directory.
3. The installer will parse the modified INF file. If an eligible **8600M series** card is detected, it will recognize your hardware under the **AMD R8 M670 Rift** profile name, while standard hardware profiles apply automatically to all other devices.
4. Custom registry performance and stability tweaks will be deployed silently across all installs.
5. Reboot your system once the installation completes to finalize driver initialization and performance changes.

## AMD Software Support (Adrenalin):
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/e0d08d7d-43fc-4b4a-9669-707b8a5e2ac9" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/36cf2ea4-5e24-4341-8aa2-30433c7054b4" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/85f2b11f-7f1d-4f29-aee9-720c37f0ced1" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/d3f4a872-7d84-4393-9041-a4991b829bd0" />


