#!/bin/bash

# R refuses to build packages that mark themselves as Priority: Recommended
mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

#$R CMD INSTALL --build --configure-args='--with-udunits2-lib=/anaconda/envs/sev/lib --with-udunits2-include=/anaconda/envs/sev/include' .

$R CMD INSTALL --build .

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
