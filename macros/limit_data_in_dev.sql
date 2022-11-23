{% macro limit_data_in_dev(column_name, devs_days_of_data=5) -%}
{% if target.name == 'default' %}
where {{ column_name }} >= DATE_SUB(CURRENT_DATE(), INTERVAL {{devs_days_of_data}} DAY)
{% endif %}
{% endmacro %}