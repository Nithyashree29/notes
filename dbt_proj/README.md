<!-- uv init
<!-- uv sync
uv add dbt-core
uv add dbt-databricks
uv pip freeze > requirements.txt --> -->
hierarchy
========
Project , Connection

dbt init
Right now you are using dbt-core and in dbt-cloud all the ommands will be available in UI
dbt doesn't host any compute you have to host it so ,databricks -> compute -> sql warehouse -> click on the default one -> copy the host and url.
and under settings -> developr -> generate the token - xxxxx

dbt debug -> should run under your dbt project folder.
profiles.yml is the most important file -> It has all the connection details, all the tokens , host connections etc... written in that folder.
you can also copy your profles.yml file in your dbt project folder, because it always searched here and then go to default directory at C:\Users\LENOVO-PC\.dbt\profiles.yml
dbt.project.yml - will have all teh metadata, which is the backbone for the dbt-core. You can change the way you want. But we will be using GINGA templates.
You have to install Power User For Dbt.

Dbt cloud is a managedone and paied one but dbt-core is good for learning babe.
once you install dbt-core power user open that setup window and under the associate file types , hereit says any *.sql file types need to be associated with thenvalue 'sql' or 'jinja-sql' and *.yml types should be associated with value 'yaml' or 'jinja-yaml'.
add item
*.sql jinja-sql
*.yml jinja-yaml
OK
I think is is replaced automatically inyour version babe.

Copy the profiles.yml file which was under .dbt folder to the current project folder.
Make sure that the profile name is same across dbt_project.yaml file and theprofiles.yaml -> nithya_dbt  

Once you create the models and add in source.yml file for lineage flow,
you can just run the select statemnets like
SELECT * FROM  {{ source('source', 'dim_store') }}

Under the dbt_project.yml file you an find the models section and you can add your models and it will create the views and if you want tables you can replace it by tables.
    bronze:
      +materialized: table/view
    
under terminal run dbt run and tables are created in Databricks babe
Same thing you can see in the DBT CLOUD under the CATCHY UI 
yes