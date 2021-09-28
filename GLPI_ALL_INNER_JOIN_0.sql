use glpi;
SELECT `glpi_tickets`.id, `glpi_tickets`.itilcategories_id, `glpi_tickets`.name, `glpi_tickets`.solvedate, `glpi_tickets`.closedate, `glpi_tickets`.users_id_lastupdater, `glpi_tickets`.users_id_recipient
from `glpi_tickets` 
inner join `glpi_users` on `glpi_tickets`.users_id_lastupdater = `glpi_users`.id
 where `glpi_tickets`.solvedate 
 BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE();
 select `glpi_itilcategories`.`id` from `glpi_itilcategories`
 inner join `glpi_itilcategories` on `glpi_tickets`