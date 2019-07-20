python:
    pkg.installed

python3-dev: 
    pkg.installed

python-pip:
    pkg.installed

django:
    pip.installed:
    - require:
        - pkg: python-pip
        - pkg: python3-dev
        - pkg: python

