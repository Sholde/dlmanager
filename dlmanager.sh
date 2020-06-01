#!/bin/bash

source init.sh
source create.sh
source move.sh
source option.sh

# Script start

create_folder
move_in_folder
clean_folder $1 $2

# Script end