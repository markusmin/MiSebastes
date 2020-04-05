#!/bin/bash
#$ -l h_rt=24:00:00,h_data=30G
#$ -N ecoPCR_369_crux_db_inv_1.16.19
#$ -cwd
#$ -m bea
#$ -M zjgold
#$ -o /u/home/m/markusmi/Hoffman_logs/ecoPCR_369_crux_db_inv_1.16.19.out
#$ -e /u/home/m/markusmi/Hoffman_logs/ecoPCR_369_crux_db_inv_1.16.19.err

source /u/local/Modules/default/init/bash
module load python/2.7.13

/u/home/m/markusmi/ecopcr/src/ecoPCR -d /u/project/rwayne/software/Crux/crux_db/Obitools_databases/OB_dat_EMBL_1108017_std_inv/OB_dat_EMBL_1108017_std_inv -e 3 -l 50 -L 2000 AAGCTCATTCAAGTGCTT GACCACTTACACAATTCT > /u/home/m/markusmi/ecoPCR_Primer_Tests/primer369_crux_db/primer369_crux_db_inv_1.16.19.ecoPCR