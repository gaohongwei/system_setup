#https://www.digitalocean.com/community/tutorials/how-to-install-the-anaconda-python-distribution-on-ubuntu-16-04
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
source ~/.bashrc
#

conda create --name ml scikit-learn
activiate ml


# To activate this environment, use:
# > source activate ml
#
# To deactivate an active environment, use:
# > source deactivate

Checking
python -c "import sklearn"
