SELECT specialist_fname,specialist_lname,specialist_contact,species_name 
FROM tbl_specialist
INNER JOIN tbl_care ON tbl_specialist.specialist_id = tbl_care.care_specialist
INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id
WHERE species_name = 'Penguin';

