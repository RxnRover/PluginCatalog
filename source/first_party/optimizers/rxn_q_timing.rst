Rxn Queue With Timing (in-development)
======================================

.. warning::

   This plugin is currently in development and is **not publicly accessible at this time**.

Description
-----------

Plugin class: Optimizer

Rxn Q is a Rxn Rover plugin and stand-alone LabVIEW program that performs a sequence of reaction conditions in the given order. A user can create a queue of reaction conditions using the Rxn Q user interface, or load the reaction queue from a formatted file (see CSV File Format section below). This sequence can be paused, modified or added to, and resumed during an experiment, although changes on the current or previous lines will not take effect!

Note: Unlike the original Rxn Queue plugin, this version includes a timing element. The queue will proceed to the next set of reaction conditions after a specified delay, which can be set by the user. This allows for more controlled timing between reactions.


Acquisition
-----------

Download and install the plugin from the official GitHub release page listed below.

**Downloads**

- **Plugin (.vip file):**  
  `Rxn Queue With Timing – Releases <https://github.com/RxnRover/>`_

- **Drivers:**  
  This plugin does not require any additional drivers.

**Source Code**

- `Plugin Repository <https://github.com/RxnRover/>`_