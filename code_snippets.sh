command # what it does

ls #pint contents of directory 
cd # go to directory 
cat #view file content on the screen 
cat file1 file2 file3 file4 > combo_file # combine multiple files 
cat *.fasta > combo_fasta.fasta # combines all fasta files in a directory 


####### so to make a multiple fasta from all files in a directory 
cat *.fasta > combo_fasta.fasta

### to make an aligned multiple sequence file 
## upload file to online aligner tool and download / save output 

## view MSA files with jalview or aliview
## trim files 


### code to run RAxML 
## raxml doesnt like any weird characters. need to remove beforehand with code or use aliview.
conda activate raxml
sequence="fix_MSA_final16S.fasta"
THREADS="12"
NAME="16S_phy_v2"

raxml-ng --all --msa ${sequence} --model GTR+G --prefix ${NAME} --seed 8 --threads ${THREADS} --bs-metric fbp,tbe --tree pars{50},rand{50}




