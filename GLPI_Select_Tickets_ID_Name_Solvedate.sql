use glpi;
#ID, Categoria e Nome
SELECT `glpi_tickets`.id, `glpi_tickets`.itilcategories_id, `glpi_tickets`.name, 
#data de resolução e encerramento
`glpi_tickets`.solvedate, `glpi_tickets`.closedate,
#usuario que atualizou o chamado por ultimo
 `glpi_tickets`.users_id_lastupdater, 
#Usuario que abriu chamado
`glpi_tickets`.users_id_recipient
from `glpi_tickets`
	#Consulta dos tickets abertos nos ultimos 30 dias
    where `glpi_tickets`.solvedate 
		BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE();

