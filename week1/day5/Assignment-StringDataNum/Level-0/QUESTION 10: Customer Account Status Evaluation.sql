--sql

SELECT
    ABS(balance) AS absolute_balance,

    DATEDIFF(CURDATE(),last_transaction)
    AS days_since_transaction,

    CONCAT(
        UPPER(LEFT(branch,1)),
        LOWER(SUBSTRING(branch,2))
    ) AS proper_branch,

    SIGN(balance) AS balance_sign,

    CASE
        WHEN balance < 0
        THEN 'Overdrawn'

        WHEN DATEDIFF(CURDATE(),last_transaction) > 365
        THEN 'Dormant'

        ELSE 'Active'
    END AS account_status
FROM bank_accounts;

--output

| absolute_balance | days_since_transaction | proper_branch | balance_sign | account_status |
| ---------------- | ---------------------- | ------------- | ------------ | -------------- |
| 125000.75        | 515                    | Hyderabad     | 1            | Dormant        |
| 8500.40          | 704                    | Delhi         | 1            | Dormant        |
| 2500.90          | 499                    | Mumbai        | -1           | Overdrawn      |
