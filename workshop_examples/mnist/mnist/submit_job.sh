#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --mem=12G      # increase as needed
#SBATCH --time=00:5:00
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=1
#SBATCH --mail-user=your-email
#SBATCH --mail-type=ALL
#SBATCH --account=def-someuser
 
module load python/3.10 cuda cudnn
 
virtualenv --no-download $SLURM_TMPDIR/env
source $SLURM_TMPDIR/env/bin/activate
pip install --no-index --upgrade pip
 
pip install --no-index -r ./requirements.txt

tar -xf data.tar.gz -C $SLURM_TMPDIR/

python main.py --epochs 5 --save-model --data $SLURM_TMPDIR/data