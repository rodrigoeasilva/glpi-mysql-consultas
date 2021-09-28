use glpi;
SELECT glpi_tickets.id, glpi_tickets.itilcategories_id, glpi_tickets.name, glpi_tickets.solvedate, 
	   glpi_tickets.closedate, glpi_tickets.date_creation, glpi_tickets.users_id_lastupdater, glpi_tickets.users_id_recipient,
       glpi_tickets.urgency, glpi_tickets.priority, glpi_tickets.status 
  from glpi_tickets
inner join glpi_users on glpi_tickets.users_id_lastupdater = glpi_users.id
where glpi_tickets.solvedate 
BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE()
order by closedate;
#select glpi_tickets where glpi_tickets.closedate IS NOT NULL;