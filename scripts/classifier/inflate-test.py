import os
import subprocess

jsgfs_dir = "./jsgfs"
raw_data_dir = "./data/raw"
train_data_dir = "./data/train"
test_data_dir = "./data/test"

jsgf_parser = "./scripts/JSGFTools/DeterministicGenerator.py"

for filename in os.listdir(jsgfs_dir):
    out_file = filename.replace(".jsgf" , ".txt")
    raw_file_path = raw_data_dir + out_file
    jsgf_file_path = jsgfs_dir + filename
    command = "python " + jsgf_parser + " " + jsgf_file_path  + " > " + raw_file_path

