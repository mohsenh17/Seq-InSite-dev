import os.path
import os
    
def removeDeficientEmbedding(fastaAddress, embdAddress, embdLength):
    '''
    Remove deficient embbeding caused by time limit in sbatch
    Usage:
        removeDeficientEmbedding("dataset/seq/Pruned_ecoli.fasta", "dataset/embd/ecoli")

    '''
    cnt = 0
    f = open(fastaAddress, 'r')
    while True:
        if cnt % 1000 == 0:
            print(cnt)
        cnt +=1
        pid = f.readline()
        pseq = f.readline()
        plabel = f.readline()
        if pseq == "":
            break
        try:
            num_lines = 0
            for line in open('{}/{}.embd'.format(embdAddress,pid.strip()[1:])):
                num_lines += 1
                try:
                    embdCalculatedLength = len(line.strip().split(':')[1].split(' '))
                except:
                    print(pid)
                    os.remove('{}/{}.embd'.format(embdAddress,pid.strip()[1:]))
                    break
                if embdCalculatedLength != embdLength:
                    print("pid: {}, len seq: {}, num_lines: {}".format(pid.strip()[1:], len(pseq.strip()), embdLength))
                    os.remove('{}/{}.embd'.format(embdAddress,pid.strip()[1:]))
            if len(pseq.strip()) != num_lines:
                if os.path.exists('{}/{}.embd'.format(embdAddress,pid.strip()[1:])):
                    print(pid)
                    os.remove('{}/{}.embd'.format(embdAddress,pid.strip()[1:]))
                #print("pid: {}, len seq: {}, num_lines: {}".format(pid.strip()[1:], len(pseq.strip()), num_lines))
        except Exception as e:
            print(e)
                
removeDeficientEmbedding("../surveyComp/dataset/Dset_without60_Pid_Pseq_label.txt", "../ankh/ankhEmbd", 1536)
