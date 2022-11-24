{% macro grant_select() %}

    {% set query %}

        GRANT `roles/bigquery.dataOwner`
        ON SCHEMA {{target.dataset}}
        TO 'user:fangelovv@gmail.com';
        
    {% endset %}

    {{ log('Granting Data Owner role to user', info=True) }}    
    {% do run_query(query) %}
    {{ log('Privileges granted!', info=True) }}

{% endmacro %}