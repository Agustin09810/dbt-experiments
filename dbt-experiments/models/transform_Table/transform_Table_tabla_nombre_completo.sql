{{ config(materialized='table', sort='timestamp', dist='user_id') }}

with tabla_nombre_completo as(
    select * from {{ source('original_data', 'datos') }}
),
usuarios as (
        select ci, nombre, apellido, concat(nombre, ' ', apellido)  as nombrecompleto from {{ source('original_data', 'datos') }}
),


final as (
    select * from usuarios
    
)

select * from final