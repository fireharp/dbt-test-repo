{#
{{ codegen.generate_base_model(source_name='airflow_dbreplica',table_name='food_delivery_sunbasketitem') }}
{{ codegen.generate_base_model(source_name='airflow_dbreplica',table_name='food_delivery_sunbasketmenu') }}
{{ codegen.generate_base_model(source_name='airflow_dbreplica',table_name='food_delivery_sunbasketorderitem') }}
{{ codegen.generate_base_model(source_name='airflow_dbreplica',table_name='food_delivery_sunbasketordersubscription') }}
#}

{#
{{ codegen.generate_model_yaml(model_name='stg_main_bq__food_delivery_sunbasketorders') }}
{{ codegen.generate_model_yaml(model_name='stg_main_bq__food_delivery_sunbasketitems') }}
{{ codegen.generate_model_yaml(model_name='stg_main_bq__food_delivery_sunbasketmenus') }}
{{ codegen.generate_model_yaml(model_name='stg_main_bq__food_delivery_sunbasketorderitems') }}
#}


