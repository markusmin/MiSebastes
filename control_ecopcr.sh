#!/bin/bash
#$ -l h_rt=24:00:00,h_data=30G
#$ -N control_ecopcr_11.13.18
#$ -cwd
#$ -m bea
#$ -M zjgold
#$ -o /u/home/m/markusmi/Hoffman_logs/control_ecopcr_11.13.18.out
#$ -e /u/home/m/markusmi/Hoffman_logs/control_ecopcr_11.13.18.err

source /u/local/Modules/default/init/bash
module load python/2.7.13

/u/home/m/markusmi/ecopcr/src/ecoPCR -d /u/project/rwayne/software/Crux/crux_db/Obitools_databases/OB_dat_EMBL_1108017_std_ver/OB_dat_EMBL_1108017_std_ver -e 3 -l 50 -L 2000 -r 7742 -D 150 CCTGAAAATAGGAACCAAATGCCAG GAGGAYAAAGCACTTGAATGAGC > /u/home/m/markusmi/Vertebrata_control.ecoPCR
