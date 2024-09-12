Crie um vídeo mostrando a criação das duas triggers a seguir e poste o link aqui.&nbsp;

O vídeo deve mostrar o código das triggers e o funcionamento/teste de cada uma delas.

Questão 1 (valor 3,0)&nbsp;

Crie uma trigger GATILHO_EXCLUIR_VENDA que após excluir uma venda deve alterar a tabela de estoque para acrescentar à quantidade estocada do produto a
quantidade da venda excluída. &nbsp;

Questão 2 (valor 7,0)&nbsp;

Altere a trigger GATILHO_ESTOQUES (exclua e recrie ela) para que depois de alterar estoque, se a quantidade estocada for menor do que a quantidade mínima, teste se já existe um registro na tabela fabricação_prevista com a mesma data_solicitacao e idproduto, se existir, então deve alterar a quantidade a ser fabricada sendo a mínima menos a estocada, se não existir insere um novo registro de previsão de fabricação com a quantidade a ser fabricada sendo a mínima menos a estocada e a situação como “pendente”. Use curdate() no lugar de now(), pois curdate pega a data e now pega data e hora.&nbsp;

OBS: Use o BD que está no repositório de materiais da turma no Teams.&nbsp;
