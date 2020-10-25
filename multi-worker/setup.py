from setuptools import find_packages
from setuptools import setup

REQUIRED_PACKAGES = []

setup(name='multi_worker_example',
      version='0.1',
      author='Sz Kalosi',
      author_email='szilard.kalosi@icloud.com',
      install_requires=REQUIRED_PACKAGES,
      packages=find_packages(),
      include_package_data=True,
      requires=[])
