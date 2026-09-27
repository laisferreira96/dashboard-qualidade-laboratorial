WITH resumo AS (
    SELECT
        Tipo_Nao_Conformidade,
        COUNT(*) AS Quantidade
    FROM exames
    WHERE Nao_Conformidade = 'Sim'
    GROUP BY Tipo_Nao_Conformidade
),
total AS (
    SELECT SUM(Quantidade) AS Total
    FROM resumo
)
SELECT
    Tipo_Nao_Conformidade,
    Quantidade,
    ROUND(Quantidade * 100.0 / Total, 2) AS Percentual,
    ROUND(
        SUM(Quantidade) OVER (
            ORDER BY Quantidade DESC
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) * 100.0 / Total,
        2
    ) AS Percentual_Acumulado
FROM resumo, total
ORDER BY Quantidade DESC;
