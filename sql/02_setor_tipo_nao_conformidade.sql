SELECT
    Setor,
    Tipo_Nao_Conformidade,
    COUNT(*) AS Quantidade
FROM exames
WHERE Nao_Conformidade = 'Sim'
GROUP BY Setor, Tipo_Nao_Conformidade
ORDER BY Setor, Quantidade DESC;
