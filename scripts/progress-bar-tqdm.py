# ============================================================================================================
# tqdm Progress-Bar	... For AJPanel Terminal Testing
# ============================================================================================================
# How:
#	1- Download tqdm from  package (e.g. tqdm-4.67.1.tar.gz) from : https://pypi.org/project/tqdm/
#		For Python-3 : Download the latest package (e.g. tqdm-4.67.1.tar.gz) from : https://pypi.org/project/tqdm/#files
#		For Python-2 : Download v2.2.3 from : https://pypi.org/project/tqdm/2.2.3/#files
#	2- Copy the directory "tqdm" from the the downloaded archive file to your working directory.
#	3- Run the script below.
# ------------------------------------------------
from time import sleep
from tqdm import tqdm
for i in tqdm(range(100)):
	# Do your work here
	sleep(0.03)

print("Finished")
