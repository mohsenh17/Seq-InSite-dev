#!/bin/bash
#SBATCH --time=00:45:00
#SBATCH --cpus-per-task=6
#SBATCH --mem=118G
#SBATCH --gres=gpu:t4:1        # request GPU "generic resource"
#SBATCH --output=tf-%j.out  #%j for jobID

#source /home/mohsenh/grDelphiTensorflow1GPUenv/bin/activate
source /home/mohsenh/grCPuMsaEnv/bin/activate

#python predictTF2ZeroPadMSA.py
python predictTF2ZeroPadEnsSep.py
#python predictTF2ZeroPadEnsumbleMSA.py
#python predictTF2ZeroPadEnsumble.py
#python predictTF2ZeroPadEnsumbleWholeProt.py
#python predictTF2ZeroPadMultiTFlat.py
#python predictTF2ZeroPadMultiRnnTf.py
#python predictTF2MultiZeroPadResize.py
#python predictPointNet.py
