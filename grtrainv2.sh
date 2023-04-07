#!/bin/bash
#SBATCH --time=06:00:00
#SBATCH --cpus-per-task=12
#SBATCH --mem=110G
#SBATCH --gres=gpu:p100:1        # request GPU "generic resource"
#SBATCH --output=MLPT5U50MSAL4H1-%j.out  #%j for jobID

#source /home/mohsenh/grCPuMsaEnv/bin/activate
source /home/mohsenh/pithiaEnv/bin/activate

#python train_T5_MSA_MLP.py
#python train_T5_MSA_LSTM.py
#python train_T5_MSA_CNN_resize.py
python trainT5_MLP.py
#python trainMSA_MLP.py
#python trainMSA_LSTM.py
#python trainT5_LSTM_5L.py