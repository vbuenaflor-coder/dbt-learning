select
    transaction_id,
    customer_id,
    cast(transaction_date as date) as transaction_date,
    amount,
    status
from {{ ref('transactions') }}
