<?php

// Conexão
$conn = mysqli_connect("localhost", "usuario", "senha", "banco_de_dados");

if (!$conn) {
    die("Erro na conexão: " . mysqli_connect_error());
}

// Consulta nas tabelas
$sql = "SELECT Tb_banco.nome AS nome_banco, Tb_convenio.verba, Tb_contrato.codigo, Tb_contrato.data_inclusao, Tb_contrato.valor, Tb_contrato.prazo 
        FROM Tb_contrato
        INNER JOIN Tb_convenio_servico ON Tb_contrato.convenio_servico = Tb_convenio_servico.codigo
        INNER JOIN Tb_convenio ON Tb_convenio_servico.convenio = Tb_convenio.codigo
        INNER JOIN Tb_banco ON Tb_convenio.banco = Tb_banco.codigo";

// Consulta
$result = mysqli_query($conn, $sql);

// Verificação da consulta
if (!$result) {
    die("Erro na consulta: " . mysqli_error($conn));
}

// Listagem
echo "<table>";
echo "<tr><th>Nome do Banco</th><th>Verba</th><th>Código do Contrato</th><th>Data de Inclusão</th><th>Valor</th><th>Prazo</th></tr>";
while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $row["nome_banco"] . "</td>";
    echo "<td>" . $row["verba"] . "</td>";
    echo "<td>" . $row["codigo"] . "</td>";
    echo "<td>" . $row["data_inclusao"] . "</td>";
    echo "<td>" . $row["valor"] . "</td>";
    echo "<td>" . $row["prazo"] . "</td>";
    echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>
