

SELECT species_name AS 'Species Name', nutrition_type AS 'Nutrition Type'
FROM tbl_species
INNER JOIN tbl_nutrition ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id;
	
	



