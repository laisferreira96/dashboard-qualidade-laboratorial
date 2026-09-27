SELECT
    strftime('%Y-%m', Data) AS Mes,
    COUNT(*) AS Total_Exames,
    SUM(CASE WHEN Nao_Conformidade = 'Sim' THEN 1 ELSE 0 END) AS Nao_Conformidades,
    ROUND(
        SUM(CASE WHEN Nao_Conformidade = 'Sim' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Taxa_Nao_Conformidade
FROM exames
GROUP BY strftime('%Y-%m', Data)
ORDER BY Mes;
