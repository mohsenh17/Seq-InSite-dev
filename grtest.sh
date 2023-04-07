#!/bin/bash
#SBATCH --time=00:45:00
#SBATCH --cpus-per-task=6
#SBATCH --mem=118G
#SBATCH --gres=gpu:t4:1        # request GPU "generic resource"
#SBATCH --output=tf-%j.out  #%j for jobID

#source /home/mohsenh/grDelphiTensorflow1GPUenv/bin/activate
source /home/mohsenh/grCPuMsaEnv/bin/activate
python predict_MSA.py
#python predict_ENS_w315.py
#python predict_T5_MLP_5L.py
#python predict_MSA_MLP.py
#python predict_MSA_LSTM.py
#python predict_T5_LSTM.py
#python predict_T5_MLP.py
#python predict_T5_MSA_MLP.py
#python predict_T5_MSA_LSTM.py
#python predict_ENS_w315.py
