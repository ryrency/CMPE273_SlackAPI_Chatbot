import os
import subprocess

jsgfs_dir = './jsgfs'

jsgf_parser = "./scripts/JSGFTools/DeterministicGenerator.py"
data_raw_dir = "./data/raw"

# inflate jsgfs into raw folder
for  filename in os.listdir(jsgfs_dir):
    out_filename = filename.replace(".jsgf", ".txt")
    out_filename = data_raw_dir + "/" + out_filename

    jsgf_file_path = jsgfs_dir + '/' + filename

    command = "python " + jsgf_parser + " " + jsgf_file_path + " > " + out_filename
    print command
    process = subprocess.call(command, shell=True)

# split raw data into train/test 








       

                
#print(os.getcwd())
