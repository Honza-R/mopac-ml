MOPAC-ML: MOPAC wrapper implementing the PM6-ML method
======================================================


Dependencies
------------

First, a modified version of MOPAC with the interface communicating with the wrapper is needed. It is available as a fork of the official MOPAC repository [#!# TBD] 

Next, the python environment for the ML correction has to be set up. It is easy with conda:

````
conda create --name pm6-ml
conda activate pm6-ml
conda install -c conda-forge torchmd-net simple-dftd3 dftd3-python
````

Models
------

The ``models`` directory contains the ML model used by the code. The default model used in the published version of PM6-Ml is the ``PM6-ML_correction_final_seed8.ckpt`` file.

How to cite
-----------

The PM6-ML method is described in [#!# TBD]
