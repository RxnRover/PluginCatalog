Submit a Plugin
===================

.. note::
   This page assumes that you have already read and completed the tasks in
   :doc:`getting_started` and :doc:`plugin_submission_form`, and have a 
   completed plugin and submission form.

To submit a plugin, you must request that it be added to the plugin catalog. 
This request is made through a "Pull Request" submitted to the 
`Rxn Rover Plugin Catalog GitHub Repository <https://github.com/RxnRover/
PluginCatalog>`_.

Making a Submission
-------------------

The basic steps to submit a plugin to the catalog are as follows:

#. Create the plugin and complete the submission form as mentioned above.
#. `Fork <https://docs.github.com/en/github/getting-started-with-github/
   quickstart/fork-a-repo>`_ the `Rxn Rover Plugin Catalog GitHub Repository 
   <https://github.com/RxnRover/PluginCatalog>`_.
#. `Clone <https://docs.github.com/en/github/creating-cloning-and-archiving
   -repositories/cloning-a-repository-from-github/cloning-a-repository>`_ your 
   fork of the plugin catalog to your local computer.
#. Add your submission form to ``<catalog_location>/source/third_party/<type>/``,
   where ``<catalog_location>`` is the top-level directory of your 
   forked plugin catalog and ``<type>`` is the directory corresponding to the 
   functionality of your plugin.
#. Link your submission form to the catalog by adding it to the 
   ``<catalog_location>/source/third_party/<type>/index.rst`` file in the 
   chosen directory.
   
   For example::
      
      Analyzer Plugins
      ================
      
      This is an example ``index.rst`` file. Your submission for will be added
      to the ``toctree`` below.
      
      .. toctree::
         :maxdepth: 1
         :caption: Infrared Spectroscopy
         
         example_plugin_1
         your_submission_form_without_the_extension
         example_plugin_2

#. `Add <https://github.com/git-guides/git-add>`_ and `Commit 
   <https://github.com/git-guides/git-commit>`_ your submission form and 
   changes to ``index.rst``. Example commands performing these actions follow:

   .. code-block:: bash
   
      # From the top-level directory
      cd ./source/third_party/analyzers
      git add ./example_plugin.rst ./index.rst
      git commit -m "Added submission form for Example Plugin"

#. `Push <https://github.com/git-guides/git-push>`_ the committed changes to 
   your forked GitHub repository.
#. `Submit a pull request <https://docs.github.com/en/github/collaborating-with
   -pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a
   -pull-request-from-a-fork>`_ to the official plugin catalog from your fork. 
   Once submitted, your pull request will be reviewed by someone on the team. 
   At this stage, you may receive feedback or suggested changes before the 
   pull request is accepted.
#. Once the pull request is accepted, your plugin will appear in the plugin
   catalog!