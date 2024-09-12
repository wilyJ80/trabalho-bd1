DELIMITER $$
CREATE TRIGGER
GATILHO_ESTOQUES AFTER UPDATE ON estoques
FOR EACH ROW
	BEGIN
		DECLARE qtd_fabrica INT DEFAULT 0;
		IF(new.qtd_estocada < new.qtd_minima) THEN
			SET qtd_fabrica = new.qtd_minima - new qtd_estocada;
			IF((SELECT idproduto FROM fabricacao_prevista) = curdate()) THEN
				UPDATE fabricacao_prevista SET quantidade = qtd_fabrica
				WHERE idproduto = new.idproduto;
			ELSE
				INSERT INTO fabricacao_prevista(idproduto, data_solicitacao, quantidade, situacao)
				VALUES (new.idproduto, curdate(), qtd_fabrica, 'PENDENTE');
			END IF;
		END IF;
	END
$$
DELIMITER ;
