#!/bin/bash

set -euo pipefail

FRONTEND_SCRIPT_PATH="environment/frontend_server"
FRONTEND_SCRIPT_FILE="manage.py"
CONDA_ENV="simulacra"

FILE_NAME="Bash-Script-Frontend"
echo "(${FILE_NAME}): Running frontend server"
cd ${FRONTEND_SCRIPT_PATH}
#source /home/${USER}/anaconda3/bin/activate ${CONDA_ENV}
source "${HOME}/miniconda3/etc/profile.d/conda.sh" 
conda activate ${CONDA_ENV}
#source activate ${CONDA_ENV}

PORT=${1:-8000}

#PORT=8000
#if [ -z "$1" ]
#then
#	echo "(${FILE_NAME}): No port provided. Using default port: ${PORT}"
#else
#    PORT=$1
#fi

echo "running frontend on port ${PORT}"

python ${FRONTEND_SCRIPT_FILE} runserver ${PORT}
