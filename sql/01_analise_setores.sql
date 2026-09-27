SELECT
    Setor,
    COUNT(*) AS Total_Exames,
    SUM(CASE WHEN Nao_Conformidade = 'Sim' THEN 1 ELSE 0 END) AS Nao_Conformidades,
    ROUND(
        SUM(CASE WHEN Nao_Conformidade = 'Sim' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Taxa_Nao_Conformidade
FROM exames
GROUP BY Setor
ORDER BY Taxa_Nao_Conformidade DESC;
