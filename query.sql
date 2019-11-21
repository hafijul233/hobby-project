SELECT 
`people_infotype`.`infotype` AS `field_name`, 
`people_varchar`.`people_varchar` AS `cell_data`,
`people_infotype_type`.`table` AS `table_name`
FROM `people_varchar` 
RIGHT JOIN `people_infotype` ON `people_varchar`.`people_infotype_id` = `people_infotype`.`id` 
RIGHT JOIN `people_infotype_type` ON `people_infotype`.`infotype_type_id` = `people_infotype_type`.`id` 
WHERE `people_varchar`.`people_id` = 1 



table_name	field_name	cell_data 	
people_varchar 	Applicant Name 	MOHAMMAD HAFIJUL ISLAM
people_varchar 	Father Name 	MOHAMMAD MUSTAK AHEMD
people_varchar 	Mother Name 	HAMIDA BEGUM


SELECT `people_infotype`.`id` AS `field_id`,`people_infotype`.`infotype` AS `field_name`, `people_varchar`.`people_varchar` AS `cell_data`, `people_infotype_type`.`table` AS `table_name` FROM `people_varchar` RIGHT JOIN `people_infotype` ON `people_varchar`.`people_infotype_id` = `people_infotype`.`id` RIGHT JOIN `people_infotype_type` ON `people_infotype`.`infotype_type_id` = `people_infotype_type`.`id` WHERE `people_varchar`.`people_id` = 1 

SELECT `people_infotype`.`id` AS `field_id`, `people_infotype`.`infotype` AS `field_name`, `people_infotype_type`.`table` AS `table_name` FROM `people_infotype` RIGHT JOIN `people_infotype_type` ON `people_infotype`.`infotype_type_id` = `people_infotype_type`.`id` 



/* Importsant */
SELECT 
`people_infotype`.`infotype` AS `field_name`,
`people_varchar`.`people_varchar` AS `cell_data`,
`people_integer`.`people_integer` AS `cell_data`,
FROM `people_varchar`, `people_integer`
RIGHT JOIN `people_infotype` ON `people_varchar`.`people_infotype_id` = `people_infotype`.`id` 
RIGHT JOIN `people_infotype_type` ON `people_infotype`.`infotype_type_id` = `people_infotype_type`.`id`
WHERE `people_varchar`.`people_id` = 1 



SELECT `people_infotype`.`infotype` AS `field_name`, `people_varchar`.`people_varchar` AS `cell_data`, `people_integer`.`people_integer` AS `cell_data` FROM `people_integer`,`people_varchar` RIGHT JOIN `people_infotype` ON `people_varchar`.`people_infotype_id` = `people_infotype`.`id` RIGHT JOIN `people_infotype_type` ON `people_infotype`.`infotype_type_id` = `people_infotype_type`.`id` WHERE `people_varchar`.`people_id` = 1 AND `people_integer`.`people_id` = 1 