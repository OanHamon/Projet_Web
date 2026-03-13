<?php

// Exemple d'url : ?location[]=Paris&location[]=Lyon&neer[]=[50,[2.4568225,-6.2548522]]&job[]=dev&job[]=data

// Location : tableau vide ou avec des valeurs depuis l'url ?location[]=value
$location = isset($_GET['location']) && is_array($_GET['location']) ? $_GET['location'] : [];

// Extraire 'neer' depuis l'URL : doit être un tableau (distance, (lat, lng)), exemple neer=[50,[2.4568225,-6.2548522]]
// Définir une fonction utilitaire pour valider le format du tableau neer
function is_valid_neer($n) {
    return (is_array($n) && isset($n[0], $n[1]) && is_numeric($n[0]) && is_array($n[1]) && count($n[1]) === 2 && is_numeric($n[1][0]) && is_numeric($n[1][1]));
}

$neer = [];
if (isset($_GET['neer'])) {
    $neer_json = $_GET['neer'];
    $candidate = null;

    if (is_string($neer_json)) {
        $decoded = json_decode($neer_json, true);
        if (is_valid_neer($decoded)) {
            $candidate = $decoded;
        }
    } elseif (is_array($neer_json)) {
        if (is_valid_neer($neer_json)) {
            $candidate = $neer_json;
        }
    }

    if ($candidate !== null) {
        $neer = $candidate;
    } else {
        $neer = [-1,[0,0]];
    }
}
$neer[0] = min($neer[0],100);

// Job : tableau vide ou rempli (ex: ?job[]=dev&job[]=data)
$job = isset($_GET['job']) && is_array($_GET['job']) ? $_GET['job'] : [];


// recherche dans la base de données
// $neer = position
// $job[] = métiers
// $location[] = localisations


$offres = [
    [
        "titre" => "Développeur Web",
        "entreprise" => "TechCorp",
        "description" => "Développement de nouvelles fonctionnalités web sur des projets innovants."
    ],
    [
        "titre" => "Designer UI/UX",
        "entreprise" => "Graphix Studio",
        "description" => "Création d'interfaces utilisateurs intuitives et design pour différents clients."
    ],
];

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Projet Web</title>
        <link rel="icon" type="image/png" href="../assets/image/logo_projet_web.png">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jersey+25&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="../assets/css/token.css">
        <link rel="stylesheet" href="../assets/css/style_search_page_.css">

        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
            integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
            crossorigin=""
        />
        <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
            integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
            crossorigin="">
        </script>
    </head>
    <body>
        <header>
            <nav>

                <input class="header-burger-input" type="checkbox" id="votre_id" tabindex="0">
                <label for="votre_id" class="burger"><span></span><span></span><span></span></label>

                <a href="index.html" class="logo-link" style="display:inline-block;">
                    <img src="../assets/image/logo_projet_web.png" alt="Logo" class="header-logo">
                </a>

                <ul class="header-links">
                    <li><a href="#Accueil">Accueil</a></li>
                    <li><a href="#Stages">Nos Stages</a></li>
                    <li><a href="#Entreprises">Nos Entreprises</a></li>
                </ul>

                <div class="account-div">
                    <a href="signup.html" class="signup">
                        S'inscrire
                    </a>
                    <a href="login.html" class="login">
                        Se connecter
                    </a>
                </div>
            </nav>
        </header>
        <main class="content-search-page">

            <div class="stage-search-box">

                <div class="search-box-label-bar">
                    <label for="métiers">Métiers</label>
                    <form class="search-container" role="search" method="get">
                        <?php
                            foreach ($job as $j) {
                                echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                            }
                            if (!empty($location)) {
                                foreach ($location as $loc) {
                                    echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                                }
                            }
                            if (!empty($neer)) {
                                echo '<input type="hidden" name="neer" value=\'' . htmlspecialchars(json_encode($neer)) . '\'>';
                            }
                        ?>
                        <input type="search" name="job[]" placeholder="Recherchez votre métier" aria-label="Rechercher un stage">
                        <button type="submit" aria-label="Lancer la recherche">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABsElEQVR4AbTUjVXDMAwEYJdFgEmASYBJgEmASYBJYBPQZyK/uEl/0rzmRbEsS3c6t/ZFOfOzlOA1+mEPMd6GHXz3EQB5HiFcDb44ko+Yf4ftJdpFABjIZQDk+xPOY9gm7DqMH0NBJJ8/sTkCBU+R+RKWIOF2L7K3iNyFyZNPTUz7d5sAOMkKd3Y1gkAkjyJbSPVouZQxAWCmo88u6/AEkTq/D4xWMSbADlhHLWGBY8vUw2llSYCVxPe2stxJFXDgVYQkEBTQgfFUQ9LVJsHNEJ0kDPFjh6yfVbC2+2wCSTs/qeArVnObwl31djhJoHsLTdqJFDCUatjYzgFZNbDykw1quEKlAgSs+w/XjGWf+0iHw8LtT7J7h8RTD5o6CuBUcJ9UwCfLcdeFRLFjTb4LL09zqxsTCEow2iod8Q+ZPJekbem6V7hNIMlN6srQkSt4coFFoa0UByyPcjcqJQgj5f/dJhBFIkmBOTWAkBl/I8gXR6Qh+REu5ghz3v6mZeZBhISR7jeSplvzTUysZTymxRZbR0LNXoIyPIgUAs1uzYflyaB7JHVhbovqwsoPkqrsDwAA///F7rH+AAAABklEQVQDAK4XUzHC974AAAAAAElFTkSuQmCC" alt="icon" />
                        </button>
                    </form>
                </div>

                <div class="search-box-label-bar">
                    <label for="location">Localisation</label>
                    <form method="get" class="search-container" role="search">
                        <?php
                            foreach ($job as $j) {
                                echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                            }
                            if (!empty($location)) {
                                foreach ($location as $loc) {
                                    echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                                }
                            }
                            if (!empty($neer)) {
                                echo '<input type="hidden" name="neer" value=\'' . htmlspecialchars(json_encode($neer)) . '\'>';
                            }
                        ?>
                        <input type="search" name="location[]" placeholder="Recherchez ou vous voulez" aria-label="Rechercher un stage">
                        <button type="submit" aria-label="Lancer la recherche">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABsElEQVR4AbTUjVXDMAwEYJdFgEmASYBJgEmASYBJYBPQZyK/uEl/0rzmRbEsS3c6t/ZFOfOzlOA1+mEPMd6GHXz3EQB5HiFcDb44ko+Yf4ftJdpFABjIZQDk+xPOY9gm7DqMH0NBJJ8/sTkCBU+R+RKWIOF2L7K3iNyFyZNPTUz7d5sAOMkKd3Y1gkAkjyJbSPVouZQxAWCmo88u6/AEkTq/D4xWMSbADlhHLWGBY8vUw2llSYCVxPe2stxJFXDgVYQkEBTQgfFUQ9LVJsHNEJ0kDPFjh6yfVbC2+2wCSTs/qeArVnObwl31djhJoHsLTdqJFDCUatjYzgFZNbDykw1quEKlAgSs+w/XjGWf+0iHw8LtT7J7h8RTD5o6CuBUcJ9UwCfLcdeFRLFjTb4LL09zqxsTCEow2iod8Q+ZPJekbem6V7hNIMlN6srQkSt4coFFoa0UByyPcjcqJQgj5f/dJhBFIkmBOTWAkBl/I8gXR6Qh+REu5ghz3v6mZeZBhISR7jeSplvzTUysZTymxRZbR0LNXoIyPIgUAs1uzYflyaB7JHVhbovqwsoPkqrsDwAA///F7rH+AAAABklEQVQDAK4XUzHC974AAAAAAElFTkSuQmCC" alt="icon" />
                        </button>
                    </form>
                </div>

                

                <form method="get" class="carte">
                    <?php
                        foreach ($job as $j) {
                            echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                        }
                        if (!empty($location)) {
                            foreach ($location as $loc) {
                                echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                            }
                        }
                    ?>
                    <div class="distance-slider-container">
                        <label for="slider-distance">Distance (km)</label>
                        <div class="distance-slider-form" role="search">
                            <input 
                                type="range" 
                                id="slider-distance"
                                min="1"
                                max="100"
                                value="<?php echo (isset($neer[0]) && intval($neer[0]) >= 1 && intval($neer[0]) <= 100) ? intval($neer[0]) : 10; ?>"
                                oninput="document.getElementById('distance-value').innerText = this.value + ' km';"
                            >
                            <span id="distance-value"><?php echo (isset($neer[0]) && intval($neer[0]) >= 1 && intval($neer[0]) <= 100) ? intval($neer[0]) . 'km' : '10km'; ?></span>
                        </div>
                    </div>
                    <div id="map"></div>
                    <input type="hidden" id="location" name="neer" value="<?= "[" . $neer[0] . ",[" . $neer[1][0] . "," . $neer[1][1] . "]]"?>">
                    <button type="submit">OK</button>
                </form>

                <div class="tag-box">

                    <?php if (!empty($job) && is_array($job)) : ?>
                        <?php foreach ($job as $index => $item) : ?>
                            <?php if (trim($item) != "") : ?>
                                <form method="get" style="display:inline;">
                                    <?php
                                        $new_jobs = $job;
                                        unset($new_jobs[$index]);
                                        foreach ($new_jobs as $j) {
                                            echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                                        }
                                        // conserver location
                                        if (!empty($location)) {
                                            foreach ($location as $loc) {
                                                echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                                            }
                                        }
                                        // conserver neer
                                        if (!empty($neer)) {
                                            echo '<input type="hidden" name="neer" value=\'' . htmlspecialchars(json_encode($neer)) . '\'>';
                                        }
                                    ?>
                                    <div class="tag">
                                        <p><?php echo htmlspecialchars($item); ?></p>
                                        <button type="submit" aria-label="Supprimer ce tag">X</button>
                                    </div>
                                </form>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endif; ?>

                    <?php if (!empty($location) && is_array($location)) : ?>
                        <?php foreach ($location as $index => $item) : ?>
                            <?php if (trim($item) != "") : ?>
                                <form method="get" style="display:inline;">
                                    <?php
                                        // Garder tous les autres locations sauf celui-ci
                                        $new_locations = $location;
                                        unset($new_locations[$index]);
                                        foreach ($new_locations as $loc) {
                                            echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                                        }
                                        // conserver job
                                        if (!empty($job)) {
                                            foreach ($job as $j) {
                                                echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                                            }
                                        }
                                        // conserver neer
                                        if (!empty($neer)) {
                                            echo '<input type="hidden" name="neer" value=\'' . htmlspecialchars(json_encode($neer)) . '\'>';
                                        }
                                    ?>
                                    <div class="tag">
                                        <p><?php echo htmlspecialchars($item); ?></p>
                                        <button type="submit" aria-label="Supprimer ce tag">X</button>
                                    </div>
                                </form>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endif; ?>

                    <?php
                        // $neer doit être de la forme [distance, [lat, lng]]
                        if (!empty($neer) && is_array($neer) && count($neer) === 2 && is_array($neer[1]) && count($neer[1]) === 2):
                            $distance = htmlspecialchars($neer[0]);
                            $latitude = htmlspecialchars($neer[1][0]);
                            $longitude = htmlspecialchars($neer[1][1]);
                        ?>
                        <form method="get">
                            <?php
                                // conserver tous les jobs
                                if (!empty($job)) {
                                    foreach ($job as $j) {
                                        echo '<input type="hidden" name="job[]" value="' . htmlspecialchars($j) . '">';
                                    }
                                }
                                // conserver toutes les locations
                                if (!empty($location)) {
                                    foreach ($location as $loc) {
                                        echo '<input type="hidden" name="location[]" value="' . htmlspecialchars($loc) . '">';
                                    }
                                }
                                // Ne PAS renvoyer le champ neer, on "supprime" neer si on clique X
                            ?>
                            <?php if ($distance > 0): ?>
                                <div class="tag">
                                    <p>
                                        À <?php echo $distance; ?>km de (
                                        <?php echo $latitude; ?>°N |
                                        <?php echo $longitude; ?>°E)
                                    </p>
                                    <button type="submit" aria-label="Supprimer ce tag">X</button>
                                </div>
                            <?php endif; ?>
                        </form>
                    <?php endif; ?>

                </div>
                </div>

            </div>

            <div class="search-stage-result-box">
                <?php if (isset($offres) && is_array($offres)) : ?>
                    <?php foreach ($offres as $i => $offre) : ?>
                        <a href="#" class="card-stage">
                            <div class="card-stage-header">
                                <?= htmlspecialchars($offre['titre'] ?? "Titre de l'annonce") ?>
                            </div>

                            <div class="card-stage-content">
                                <div class="card-stage-entreprise">
                                    <?= htmlspecialchars($offre['entreprise'] ?? "Entreprise") ?>
                                </div>

                                <div class="card-stage-description">
                                    <p class="texte-description-card-stage">
                                        <?= htmlspecialchars($offre['description'] ?? "Aucune description disponible."); ?>
                                    </p>
                                </div>
                            </div>
                        </a>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </main>
    </body>
    <script src="../assets/scripts/map.js"></script>
</html>