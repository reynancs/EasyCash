-- Cria uma tabela a partir de um SELECT JOIN
CREATE TABLE union_data AS SELECT 
 A.idade_usuario, 
 A.salario_usuario, 
 A.moradia_usuario, 
 A.tempo_trabalho_usuario, 
 C.motivo_emprestimo, 
 C.pontuacao_emprestimo, 
 C.valor_emprestimo, 
 C.taxa_emprestimo, 
 C.status_emprestimo, 
 C.renda_percentual_emprestimo,
 D.status_inadimplencia, 
 D.tempo_credito
FROM dados_mutuarios A
INNER JOIN ids B ON A.id_usuario = B.id_usuario
INNER JOIN emprestimos C ON B.id_emprestimo = C.id_emprestimo
INNER JOIN historicos_banco D ON B.id_hist_banco = D.id_hist_banco;

