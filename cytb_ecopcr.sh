#!/bin/bash
#$ -l h_rt=24:00:00,h_data=30G
#$ -N ecoPCR_ref_db_cytb
#$ -cwd
#$ -m bea
#$ -M zjgold
#$ -o /u/home/m/markusmi/Hoffman_logs/ecoPCR_ref_db_cytb.out
#$ -e /u/home/m/markusmi/Hoffman_logs/ecoPCR_ref_db_cytb.err

source /u/local/Modules/default/init/bash
module load python/2.7.13

/u/home/m/markusmi/ecopcr/src/ecoPCR -d /u/project/rwayne/meixilin/embl_r133/embl_r133 -e 6 -l 50 -L 2000 -D 150 AACCATCGTTGTTATTCAACTACAAGAACC TTTACAAGACCAGGGCTCTG > /u/home/m/markusmi/ecoPCR_ref_db_cytb.ecoPCR
