MOPAC-ML: MOPAC Wrapper Implementing PM6-ML
===========================================

MOPAC-ML implements the PM6-ML method, a semiempirical quantum-mechanical computational method that augments PM6 with a machine learning (ML) correction. It acts as a wrapper calling a modified version of MOPAC, to which it provides the ML correction.

MOPAC-ML has been developed for Linux and may not work on other platforms.

Usage
-----

MOPAC-ML is used the same way as MOPAC, by running it with the name of the MOPAC input file as the single argument. Assuming that the MOPAC-ML directory is added to the PATH environment variable, it is as simple as:

````
mopac_ml mopac_input.in
````

The input is a standard MOPAC input file where the method is set to `PM6` and an additional keyword `MLCORR` is added. An example of the input file can be found in the `tests/01-standalone_mopac-ml` directory.

Only one MOPAC-ML calculation can be run in one directory at the same time.

Dependencies
------------

First, a modified version of MOPAC with the interface communicating with the wrapper is needed. Its source code is available as the [pm6-ml branch](https://github.com/Honza-R/mopac/tree/pm6-ml) of my fork of the MOPAC repository. Here, we provide a [static binary for Linux](https://github.com/Honza-R/mopac-ml/blob/main/mopac) compiled from that code. This binary must be placed in the same directory as the mopac-ml script, which is the case if you clone this repository.

Next, the Python environment for the ML correction needs to be set up. This can be easily done with conda:

````
conda create --name pm6-ml
conda activate pm6-ml
conda install -c conda-forge torchmd-net simple-dftd3 dftd3-python
````

Models
------

The `models` directory contains the ML models. The default model used in the version of PM6-ML published in the preprint referenced below is the `PM6-ML_correction_seed8_best.ckpt` file. Four more models which ranked next in our selection are also provided but not used my MOPAC-ML.

This repository contain also the model files for the standalone MD potential discussed in the paper and trained in the same way as PM6-ML. These are not used by MOPAC-ML. The files are named `TorchMD-NET-ET_standalone_*`.

License
-------

MOPAC-ML is licensed under the same license as MOPAC, which is [LGPLv3](https://www.gnu.org/licenses/lgpl-3.0).

The models are licensed under the Academic Software Licence, [enclosed in the models directory](models/LICENSE.md).

How to Cite
-----------

The PM6-ML method is described in [#!# TBD].
