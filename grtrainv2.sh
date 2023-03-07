#!/bin/bash
#SBATCH --time=26:00:00
#SBATCH --cpus-per-task=12
#SBATCH --mem=110G
#SBATCH --gres=gpu:t4:1        # request GPU "generic resource"
#SBATCH --output=MLPT5U50MSAL4H1-%j.out  #%j for jobID

#source /home/mohsenh/grCPuMsaEnv/bin/activate
source /home/mohsenh/pithiaEnv/bin/activate

#python train_T5_MSA_MLP.py
#python trainT5_MLP_5L.py
python trainMSA_MLP_5L.py
#python trainMSA_LSTM.py
#python trainT5_LSTM.py