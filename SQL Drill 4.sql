SELECT species_name, nutrition_id
FROM tbl_species 
INNER JOIN tbl_nutrition ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition
WHERE nutrition_id BETWEEN 2202 AND 2206; 

