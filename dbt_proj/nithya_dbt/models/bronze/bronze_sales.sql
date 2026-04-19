SELECT 
    *
FROM
    {# dbt_proj.source.fact_sales #}
    {{ source('source', 'fact_sales')}}

 