OpenFAST
========

[D-ICE notes at the end of this README.]

|actions| |nbsp| |rtfd|

.. |actions| image:: https://github.com/openfast/openfast/workflows/OpenFAST%20Build%20and%20Test/badge.svg?branch=dev
   :target: https://github.com/OpenFAST/openfast/actions?query=workflow%3A%22OpenFAST+Build+and+Test%22
   :alt: Build Status
.. |rtfd| image:: https://readthedocs.org/projects/openfast/badge/?version=dev
   :target: https://openfast.readthedocs.io/en/dev
   :alt: Documentation Status
.. |nbsp| unicode:: 0xA0
   :trim:

OpenFAST is a wind turbine simulation tool which builds on FAST v8. It was
created with the goal of being a community model developed and used by research
laboratories, academia, and industry. It is managed by a dedicated team at the
National Renewable Energy Lab. Our objective is to ensure that OpenFAST is
sustainable software that is well tested and well documented. If you'd like
to contribute, see the `Developer Documentation <https://openfast.readthedocs.io/en/dev/source/dev/index.html>`_
and any open GitHub issues with the
`Help Wanted <https://github.com/OpenFAST/openfast/issues?q=is%3Aopen+is%3Aissue+label%3A"Help+wanted">`_
tag.

**OpenFAST is under active development**.

FAST v8 - OpenFAST v0.1.0
-------------------------
The transition from FAST v8 to OpenFAST v0.1.0 represents the effort to better
support an open-source developer community around FAST-based aero-hydro-servo-
elastic engineering models of wind-turbines and wind-plants. OpenFAST is the
next generation of FAST analysis tools. More information is available in the
`transition notes <http://openfast.readthedocs.io/en/latest/source/user/fast_to_openfast.html>`_.

FAST v8 is a computer-aided engineering tool for simulating the coupled dynamic
response of wind turbines. FAST joins aerodynamics models, hydrodynamics models
for offshore structures, control and electrical system (servo) dynamics models,
and structural (elastic) dynamics models to enable coupled nonlinear aero-
hydro-servo-elastic simulation in the time domain. The FAST tool enables the
analysis of a range of wind turbine configurations, including two- or
three-blade horizontal-axis rotor, pitch or stall regulation, rigid or
teetering hub, upwind or downwind rotor, and lattice or tubular tower. The wind
turbine can be modeled on land or offshore on fixed-bottom or floating
substructures. FAST is based on advanced engineering models derived from
fundamental laws, but with appropriate simplifications and assumptions, and
supplemented where applicable with computational solutions and test data.

The aerodynamic models use wind-inflow data and solve for the rotor-wake
effects and blade-element aerodynamic loads, including dynamic stall. The
hydrodynamics models simulate the regular or irregular incident waves and
currents and solve for the hydrostatic, radiation, diffraction, and viscous
loads on the offshore substructure. The control and electrical system models
simulate the controller logic, sensors, and actuators of the blade-pitch,
generator-torque, nacelle-yaw, and other control devices, as well as the
generator and power-converter components of the electrical drive. The
structural-dynamics models apply the control and electrical system
reactions, apply the aerodynamic and hydrodynamic loads, adds gravitational
loads, and simulate the elasticity of the rotor, drivetrain, and support
structure. Coupling between all models is achieved through a modular
interface and coupler.

Documentation
-------------
The full documentation is available at http://openfast.readthedocs.io/.

This documentation is stored and maintained alongside the source code.
It is compiled into HTML with Sphinx and is tied to a particular version
of OpenFAST. `Readthedocs <http://openfast.readthedocs.io>`_ hosts the following
versions of the documentation:

* ``latest`` - The latest commit on the ``master`` branch
* ``stable`` - Corresponds to the last tagged release
* ``dev`` - The latest commit on the ``dev`` branch

These can be toggled with the ``v: latest`` button in the lower left corner of
the docs site.

Obtaining OpenFAST
------------------
OpenFAST is hosted entirely on GitHub so you are in the `right place <https://github.com/OpenFAST/OpenFAST>`_!
The repository is structured with two branches following the
"git-flow" convention:

* ``master``
* ``dev``

The ``master`` branch is stable, well tested, and represents the most up to
date released version of OpenFAST. The latest commit on ``master`` contains
a tag with version info and brief release notes. The tag history can be
obtained with the ``git tag`` command and viewed in more detail on
`GitHub Releases <https://github.com/OpenFAST/openfast/releases>`_. For general
use, the ``master`` branch is highly recommended.

The ``dev`` branch is generally stable and tested, but not static. It contains
new features, bug fixes, and documentation updates that have not been compiled
into a production release. Before proceeding with new development, it is
recommended to explore the ``dev`` branch. This branch is updated regularly
through pull requests, so be sure to ``git fetch`` often and check
`outstanding pull requests <https://github.com/OpenFAST/openfast/pulls>`_.

For those not familiar with git and GitHub, there are many resources:

* https://guides.github.com
* https://try.github.io
* https://help.github.com/categories/bootcamp/
* https://desktop.github.com/
* http://nvie.com/posts/a-successful-git-branching-model/

Compilation, Usage, and Development
-----------------------------------
Details for compiling
`compiling <http://openfast.readthedocs.io/en/latest/source/install/index.html>`_,
`using <http://openfast.readthedocs.io/en/latest/source/user/index.html>`_, and
`developing <http://openfast.readthedocs.io/en/latest/source/dev/index.html>`_
OpenFAST on Unix-based and Windows machines are available at `readthedocs <http://openfast.readthedocs.io>`_.

Help
----
Please use `GitHub Issues <https://github.com/OpenFAST/OpenFAST/issues>`_ to:

* ask usage questions
* report bugs
* request code enhancements

For other questions regarding OpenFAST, please contact
`Mike Sprague <mailto:michael.a.sprague@nrel.gov>`_.

Users and developers may also be interested in the NREL National Wind
Technology Center (NWTC) `phpBB Forum <https://wind.nrel.gov/forum/wind/>`_.

Acknowledgments
---------------

OpenFAST is maintained and developed by researchers and software engineers at
the `National Renewable Energy Laboratory <http://www.nrel.gov/>`_ (NREL), with
support from the US Department of Energy's Wind Energy Technology Office.  NREL
gratefully acknowledges development contributions from the following
organizations:

* Envision Energy USA, Ltd
* Brigham Young University
* `Intel® Parallel Computing Center (IPCC) <https://software.intel.com/en-us/ipcc>`_


D-ICE notes
===========

Be sure to clone the repo with the `--recursive` flag or execute `git submodule update --init --recursive` after cloning.

A lot of information presented here comes from official documentation.
Take a look at `OpenFAST repository <https://github.com/OpenFAST/openfast>`_, `OpenFAST regression test repository <https://github.com/OpenFAST/r-test>`_ and `OpenFAST documentation <https://openfast.readthedocs.io/en/master/>`_.

D-ICE developments
------------------

This repository is a fork of NREL OpenFAST repository.
It comes with two branches: `master` and `dev`.
These two branches should contains only NREL developments. D-ICE developments should be placed in `dice-master` and `dice-develop` branches. Every other branches containing D-ICE develoments should start with `dice-`.

Compilation and test on linux
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Compilation
"""""""""""

On linux, you will need blas and lapack in order to compile openfast.
You can install them with the command:

`sudo apt install liblapack-dev libblas-dev`

Then type the following commands in a terminal:

.. code-block:: bash

  # create a directory called `build`
  mkdir build

  # go to the build directory
  cd build

  # execute CMake with testing build, generate types and orca dll options activated
  cmake .. -DBUILD_TESTING=ON -DGENERATE_TYPES=ON -DORCA_DLL_LOAD=ON

  # execute a make command (with no target provided, equivalent to `make all`)
  # Replace N by the number of concurrent compilation processus
  make -j N


OpenFAST executable is located at `./build/glue-codes/openfast`.

Official NREL Tests
"""""""""""""""""""

You may want to execute some regression tests.

Before executing tests for 5MW turbines, you need to copy controller libraries. Execute the following commands in `build` folder:

.. code-block:: bash

  cp ../reg_tests/r-test/glue-codes/openfast/5MW_Baseline/ServoData/DISCON/build/DISCON.dll reg_tests/glue-codes/openfast/5MW_Baseline/ServoData/DISCON.dll
  cp ../reg_tests/r-test/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_ITI/build/DISCON_ITIBarge.dll reg_tests/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_ITIBarge.dll
  cp ../reg_tests/r-test/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_OC3/build/DISCON_OC3Hywind.dll reg_tests/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_OC3Hywind.dll
  cp ../reg_tests/r-test/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_OC3_DICE_EXTRA_TEST/build/DISCON_OC3Hywind_DICE_EXTRA_TEST.dll reg_tests/glue-codes/openfast/5MW_Baseline/ServoData/DISCON_OC3Hywind_DICE_EXTRA_TEST.dll


To execute the test named *5MW_OC3Spar_DLL_WTurb_WavesIrr*, you have to execute the following command:

`ctest -R ^5MW_OC3Spar_DLL_WTurb_WavesIrr$`

In case of success, you get the following output:

.. code-block:: bash

    $ ctest -R 5MW_OC3Spar_DLL_WTurb_WavesIrr
    Test project /home/benjaminm/projects/bladics/externals/openfast-dice/build
        Start 23: 5MW_OC3Spar_DLL_WTurb_WavesIrr
    1/1 Test #23: 5MW_OC3Spar_DLL_WTurb_WavesIrr ...   Passed   52.75 sec
    
    100% tests passed, 0 tests failed out of 1
    
    Label Time Summary:
    aerodyn15    =  52.75 sec*proc (1 test)
    elastodyn    =  52.75 sec*proc (1 test)
    hydrodyn     =  52.75 sec*proc (1 test)
    map          =  52.75 sec*proc (1 test)
    openfast     =  52.75 sec*proc (1 test)
    servodyn     =  52.75 sec*proc (1 test)
    
    Total Test time (real) =  52.75 sec

In case of failure, you get the following output:

.. code-block:: bash

    $ ctest -R 5MW_OC3Spar_DLL_WTurb_WavesIrr
    Test project /home/benjaminm/projects/bladics/externals/openfast-dice/build
        Start 23: 5MW_OC3Spar_DLL_WTurb_WavesIrr
    1/1 Test #23: 5MW_OC3Spar_DLL_WTurb_WavesIrr ...***Failed   52.36 sec
    
    0% tests passed, 1 tests failed out of 1
    
    Label Time Summary:
    aerodyn15    =  52.36 sec*proc (1 test)
    elastodyn    =  52.36 sec*proc (1 test)
    hydrodyn     =  52.36 sec*proc (1 test)
    map          =  52.36 sec*proc (1 test)
    openfast     =  52.36 sec*proc (1 test)
    servodyn     =  52.36 sec*proc (1 test)
    
    Total Test time (real) =  52.36 sec
    
    The following tests FAILED:
    	 23 - 5MW_OC3Spar_DLL_WTurb_WavesIrr (Failed)
    Errors while running CTest

It can fail as OpenFAST behavior depends on OS but also on compilator and blas version. In that case, you may need to change references of regression test.

Here is a script which modify regression test reference for 5MW_OC3Spar_DLL_WTurb_WavesIrr test with linux and gfortran:

.. code-block:: bash

  # go to 5MW_OC3Spar_DLL_WTurb_WavesIrr regression test folder
  cd ../reg_tests/r-test/glue-codes/openfast/5MW_OC3Spar_DLL_WTurb_WavesIrr

  # make a backup of reference results
  mkdir linux-gnu_backup
  mv linux-gnu/* linux-gnu_backup/

  # go back to build folder
  cd -

  # copy new references which have been generated when calling ctest
  cp reg_tests/glue-codes/openfast/5MW_OC3Spar_DLL_WTurb_WavesIrr/* ../reg_tests/r-test/glue-codes/openfast/5MW_OC3Spar_DLL_WTurb_WavesIrr/linux-gnu/

D-ICE Tests
"""""""""""

Specific tests have been created for validating D-ICE developments.

`DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr` tests augmentation of BladedInterface with extra fields. It relies on a specific DLL which logs values of extra fields in a csv file. If simulation went fine, user can manually check differences between log from DLL and log from OpenFAST executable.

In build folder, do the following in order to create reference files:

.. code-block:: bash

  mkdir ../reg_tests/r-test/glue-codes/openfast/DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr/linux-gnu/
  ctest -R ^DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr$
  cp reg_tests/glue-codes/openfast/DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr/* ../reg_tests/r-test/glue-codes/openfast/DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr/linux-gnu/

Then after copy, the test should pass:

.. code-block:: bash

  ctest -R ^DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr$

Now, you can access csv log file in `reg_tests/extra_records.csv` and compare it to output from fast at 
`reg_tests/glue-codes/openfast/DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr/DICE_EXTRA_TEST_5MW_OC3Spar_DLL_WTurb_WavesIrr.out`.

