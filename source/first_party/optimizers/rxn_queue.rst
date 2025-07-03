Rxn Queue (in-development)
==========================

.. warning::

   This plugin is currently in development and is **not publicly accessible at this time**.

Description
-----------

Plugin class: Optimizer

Rxn Q is a Rxn Rover plugin and stand-alone LabVIEW program that performs a sequence of reaction conditions in the given order. A user can create a queue of reaction conditions using the Rxn Q user interface, or load the reaction queue from a formatted file (see CSV File Format section below). This sequence can be paused, modified or added to, and resumed during an experiment, although changes on the current or previous lines will not take effect!

Note: No timing element is built into Rxn Q. The queue will proceed to the next set of reaction conditions immediately upon submitting the result for the current reaction conditions, or when the current line is skipped.


Acquisition
-----------

Download and install the plugin from the official GitHub release page listed below.

**Downloads**

- **Plugin (.vip file):**  
  `Rxn Queue Plugin – Releases <https://github.com/RxnRover/plugin_rxn_q/releases>`_

- **Drivers:**  
  This plugin does not require any additional drivers.

**Source Code**

- `Plugin Repository <https://github.com/RxnRover/plugin_rxn_q>`_