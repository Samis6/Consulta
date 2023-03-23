SELECT Tb_banco.nome AS nome_banco, Tb_convenio.verba, 
       MIN(Tb_contrato.data_inclusao) AS data_inclusao_min,
       MAX(Tb_contrato.data_inclusao) AS data_inclusao_max,
       SUM(Tb_contrato.valor) AS valor_total
FROM Tb_banco 
INNER JOIN Tb_convenio ON Tb_banco.codigo = Tb_convenio.banco 
INNER JOIN Tb_convenio_servico ON Tb_convenio.codigo = Tb_convenio_servico.convenio 
INNER JOIN Tb_contrato ON Tb_convenio_servico.codigo = Tb_contrato.convenio_servico 
GROUP BY Tb_banco.nome, Tb_convenio.verba
