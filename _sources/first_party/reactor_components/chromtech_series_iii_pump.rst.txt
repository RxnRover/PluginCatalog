ChromTech Series III Pump
=========================

Description
-----------

Plugin class: Pump Controller

This plugin provides basic control over the ChromTech Series III pump, 
including flow rate control, start and stop commands, and pressure monitoring.
The plugin keeps a log of all data collected in a CSV format for easy analysis
using a spreadsheet program.

Acquisition
-----------

Download and install the plugin and required drivers from the official GitHub release pages listed below.

**Downloads**

- **Plugin (.vip file):**  
  `ChromTech Series III Plugin – Releases <https://github.com/RxnRover/plugin_chromtech_series_iii_pump/releases>`_.

- **Required Drivers:**  
  `ChromTech Series III Drivers – Releases <https://github.com/RxnRover/driver_chromtech_series_iii/releases>`_.

**Optional Source Code**

- `Plugin Repository <https://github.com/RxnRover/plugin_chromtech_series_iii_pump>`_.
- `Driver Repository <https://github.com/RxnRover/driver_chromtech_series_iii>`_.

Requirements
------------

- **File Type:** LabVIEW Plugin (``.vip``)
- **Dependencies:** 
    -  ChromTech Series III driver
    - `Dynamic Reentrant <https://github.com/RxnRover/DynamicReentrant>`_.
    - `RxnRover <https://github.com/RxnRover/RxnRover>`_.
- **Supported Hardware:** `Omega Platinum Series Temperature Controllers <https://hitech-engg.com/pdf/04%20SSI_labaliance/Series%20III%20Pump.pdf>`_.