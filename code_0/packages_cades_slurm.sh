#!/bin/bash
#SBATCH -J package
#SBATCH -A ccsd
#SBATCH -p burst
#SBATCH --nodes=1
#SBATCH --mem=0
#SBATCH -t 00:10:00
#SBATCH -e ./package.e
#SBATCH -o ./package.o

## above we request 4 nodes and all memory on the nodes

cd ~/R4HPC/code_0
pwd

## modules are specific to or-slurm-login.ornl.gov (CADES SHPC condos)
source /software/cades-open/spack-envs/base/root/linux-centos7-x86_64/gcc-6.3.0/lmod-8.5.6-wdngv4jylfvg2j6jt7xrtugxggh5lpm5/lmod/lmod/init/bash
export MODULEPATH=/software/cades-open/spack-envs/base/modules/site/Core:/software/cades-open/modulefiles/core
module load gcc
module load openmpi
module load r/4.1.0-py3-X-flexiblas 
echo "loaded R with flexiblas"
module list

Rscript package_installs.R