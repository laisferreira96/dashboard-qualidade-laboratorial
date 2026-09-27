SELECT
    Setor,
    COUNT(*) AS Total_Exames,
    SUM(CASE WHEN Recoleta = 'Sim' THEN 1 ELSE 0 END) AS Total_Recoletas,
    ROUND(
        SUM(CASE WHEN Recoleta = 'Sim' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Taxa_Recoleta
FROM exames
GROUP BY Setor
ORDER BY Taxa_Recoleta DESC;
