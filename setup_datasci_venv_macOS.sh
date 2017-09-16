# Python virtual environment setup script
# you can just drag this file into a Terminal.app window to execute

#!/bin/bash

# create a new virtual environment
pyvenv datasci
source datasci/bin/activate

# install packages
pip3 install pandas sqlalchemy ipython


source deactivate

echo "Script $(basename \"$0\") complete."
