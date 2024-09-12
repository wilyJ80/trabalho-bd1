DELIMITER $$

CREATE TRIGGER GATILHO_EXCLUIR_VENDA
AFTER DELETE ON vendas
FOR EACH ROW
	BEGIN
		UPDATE estoques
		SET qtd_estocada = qtd_estocada + OLD.qtd_vendida
		WHERE idproduto = OLD.idproduto;
	END
$$

DELIMITER ;
