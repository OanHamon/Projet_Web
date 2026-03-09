<?php


include_once 'app/models/BaseModel.php';

$baseModel = new OffreModel();

function format_data($data) {
    foreach ($data as $row) {
        echo "ID: " . $row['id_offre'] . " - Name: " . $row['titre'] . "\n";
        echo "\n";
    }
}
/*
print_r(format_data($baseModel->getAll()));
*/




print_r(format_data($baseModel->find([
    "remuneration" => "1000",
    "localisation" => "Paris",

])));

