git:
  pkgrepo.managed:
    - ppa: git-core/ppa
    - require_in:
      - pkg: git
  pkg.installed:
    - name: git
    - require:
      - pkgrepo: git

git-other:
  pkg.installed:
    - pkgs:
      - gitk
      - git-gui
