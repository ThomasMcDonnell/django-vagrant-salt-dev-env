postgresql:
    pkg:
        - installed
    service:
        - name: postgresql
        - running
        - enable: true
        - reload: true
    file.managed:
        - name: /etc/postgresql/10/main/pg_hba.conf
        - source: salt://postgresql/pg_hba.conf
        - require: 
            - pkg: postgresql
        - watch_in:
            - service: postgresql

postgresql-client:
    pkg.installed

postgresql-contrib:
    pkg.installed

postgresql-server-dev-10:
    pkg.installed

django-project-user:
    postgres_user.present:
        - name: django 
        - password: secret 
        - encrypted: True
        - superuser: False
        - user: postgres

djangodb:
    postgres_database.present:
        - owner: django 
        - name: djangodb 
        - user: postgres

