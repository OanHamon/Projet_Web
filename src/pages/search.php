<?php

// Exemple d'url : ?location[]=Paris&location[]=Lyon&neer[]=[50,[2.4568225,-6.2548522]]&job[]=dev&job[]=data

// Location : tableau vide ou avec des valeurs depuis l'url ?location[]=value
$location = isset($_GET['location']) && is_array($_GET['location']) ? $_GET['location'] : [];

// Extraire 'neer' depuis l'URL : doit être un tableau (distance, (lat, lng)), exemple neer=[50,[2.4568225,-6.2548522]]
$neer = [];
if (isset($_GET['neer'])) {
    $neer_json = $_GET['neer'];
    // On s'attend à recevoir neer en JSON (ex: neer=[50,[2.4568225,-6.2548522]])
    // Accepte aussi neer en format array depuis l'URL mais si c'est une string JSON, on la décode
    if (is_string($neer_json)) {
        $decoded = json_decode($neer_json, true);
        if (is_array($decoded)) {
            $neer = $decoded;
        }
    } elseif (is_array($neer_json)) {
        $neer = $neer_json;
    }
}

// Job : tableau vide ou rempli (ex: ?job[]=dev&job[]=data)
$job = isset($_GET['job']) && is_array($_GET['job']) ? $_GET['job'] : [];


$offres = [
    [
        "titre" => "Développeur Web",
        "entreprise" => "TechCorp",
        "description" => "Développement de nouvelles fonctionnalités web sur des projets innovants.
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores quo labore similique pariatur rerum saepe velit cupiditate libero atque reprehenderit! Officiis quae eligendi impedit numquam! Velit iure impedit corporis veniam?
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores quo labore similique pariatur rerum saepe velit cupiditate libero atque reprehenderit! Officiis quae eligendi impedit numquam! Velit iure impedit corporis veniam?
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores quo labore similique pariatur rerum saepe velit cupiditate libero atque reprehenderit! Officiis quae eligendi impedit numquam! Velit iure impedit corporis veniam?
        "
    ],
    [
        "titre" => "Designer UI/UX",
        "entreprise" => "Graphix Studio",
        "description" => "Création d'interfaces utilisateurs intuitives et design pour différents clients."
    ],
    [
        "titre" => "Chef de projet digital",
        "entreprise" => "DigitalPro",
        "description" => "Pilotage de projets digitaux pour des clients dans le secteur de l'e-commerce."
    ],
    [
        "titre" => "Analyste Données",
        "entreprise" => "DataLogics",
        "description" => "Analyse des données métiers et création de rapports décisionnels."
    ],
    [
        "titre" => "Développeur Mobile",
        "entreprise" => "AppSphere",
        "description" => "Développement d'applications mobiles Android et iOS pour des clients variés."
    ],
    [
        "titre" => "Marketing Digital",
        "entreprise" => "Marketools",
        "description" => "Gestion et optimisation des campagnes publicitaires en ligne."
    ],
    [
        "titre" => "Administrateur Systèmes",
        "entreprise" => "SecureNet",
        "description" => "Gestion des serveurs et de l'infrastructure réseau de l'entreprise."
    ],
    [
        "titre" => "Rédacteur Technique",
        "entreprise" => "WriteIT",
        "description" => "Rédaction de documentations techniques pour les logiciels développés en interne."
    ],
    [
        "titre" => "Chargé de communication",
        "entreprise" => "ComMedia",
        "description" => "Création de contenus et diffusion sur les réseaux sociaux."
    ],
    [
        "titre" => "Ingénieur DevOps",
        "entreprise" => "CloudOps",
        "description" => "Mise en place de pipelines CI/CD et automatisation des déploiements."
    ]
];

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Projet Web</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jersey+25&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/style_search_pag.css">

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
                    <form class="search-container" role="search" action="?job=job-rechercher" method="get">
                        <input type="search" name="job" placeholder="Recherchez dans l'océan des stages" aria-label="Rechercher un stage">
                        <button type="submit" aria-label="Lancer la recherche">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABsElEQVR4AbTUjVXDMAwEYJdFgEmASYBJgEmASYBJYBPQZyK/uEl/0rzmRbEsS3c6t/ZFOfOzlOA1+mEPMd6GHXz3EQB5HiFcDb44ko+Yf4ftJdpFABjIZQDk+xPOY9gm7DqMH0NBJJ8/sTkCBU+R+RKWIOF2L7K3iNyFyZNPTUz7d5sAOMkKd3Y1gkAkjyJbSPVouZQxAWCmo88u6/AEkTq/D4xWMSbADlhHLWGBY8vUw2llSYCVxPe2stxJFXDgVYQkEBTQgfFUQ9LVJsHNEJ0kDPFjh6yfVbC2+2wCSTs/qeArVnObwl31djhJoHsLTdqJFDCUatjYzgFZNbDykw1quEKlAgSs+w/XjGWf+0iHw8LtT7J7h8RTD5o6CuBUcJ9UwCfLcdeFRLFjTb4LL09zqxsTCEow2iod8Q+ZPJekbem6V7hNIMlN6srQkSt4coFFoa0UByyPcjcqJQgj5f/dJhBFIkmBOTWAkBl/I8gXR6Qh+REu5ghz3v6mZeZBhISR7jeSplvzTUysZTymxRZbR0LNXoIyPIgUAs1uzYflyaB7JHVhbovqwsoPkqrsDwAA///F7rH+AAAABklEQVQDAK4XUzHC974AAAAAAElFTkSuQmCC" alt="icon" />
                        </button>
                    </form>
                </div>

                <div class="search-box-label-bar">
                    <label for="location">Localisation</label>
                    <form class="search-container" role="search">
                        <input type="search" placeholder="Recherchez dans l'océan des stages" aria-label="Rechercher un stage">
                        <button type="submit" aria-label="Lancer la recherche">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABsElEQVR4AbTUjVXDMAwEYJdFgEmASYBJgEmASYBJYBPQZyK/uEl/0rzmRbEsS3c6t/ZFOfOzlOA1+mEPMd6GHXz3EQB5HiFcDb44ko+Yf4ftJdpFABjIZQDk+xPOY9gm7DqMH0NBJJ8/sTkCBU+R+RKWIOF2L7K3iNyFyZNPTUz7d5sAOMkKd3Y1gkAkjyJbSPVouZQxAWCmo88u6/AEkTq/D4xWMSbADlhHLWGBY8vUw2llSYCVxPe2stxJFXDgVYQkEBTQgfFUQ9LVJsHNEJ0kDPFjh6yfVbC2+2wCSTs/qeArVnObwl31djhJoHsLTdqJFDCUatjYzgFZNbDykw1quEKlAgSs+w/XjGWf+0iHw8LtT7J7h8RTD5o6CuBUcJ9UwCfLcdeFRLFjTb4LL09zqxsTCEow2iod8Q+ZPJekbem6V7hNIMlN6srQkSt4coFFoa0UByyPcjcqJQgj5f/dJhBFIkmBOTWAkBl/I8gXR6Qh+REu5ghz3v6mZeZBhISR7jeSplvzTUysZTymxRZbR0LNXoIyPIgUAs1uzYflyaB7JHVhbovqwsoPkqrsDwAA///F7rH+AAAABklEQVQDAK4XUzHC974AAAAAAElFTkSuQmCC" alt="icon" />
                        </button>
                    </form>
                </div>

                <div class="distance-slider-container">
                    <label for="slider-distance">Distance (km)</label>
                    <form class="distance-slider-form" role="search" method="get">
                        <input 
                            type="range" 
                            id="slider-distance" 
                            name="distance"
                            min="1"
                            max="100"
                            value="<?php echo isset($neer[0][0]) ? intval($neer[0][0]) : 10; ?>" 
                            oninput="document.getElementById('distance-value').innerText = this.value + 'km'"
                        >
                        <span id="distance-value"><?php echo isset($neer[0][0]) ? intval($neer[0][0]) . 'km' : '10km'; ?></span>
                    </form>
                </div>

                <form action="map" method="post" class="carte">
                    <div id="map"></div>
                    <button type="submit">OK</button>
                </form>

                <!--<input type="text" id="location">-->

                <div class="tag-box">
                    <?php if (!empty($job) && is_array($job)) : ?>
                        <?php foreach ($job as $item) : ?>
                            <div class="tag">
                                <p><?php echo htmlspecialchars($item); ?></p>
                                <button type="button">X</button>
                            </div>
                        <?php endforeach; ?>
                    <?php endif; ?>

                    <?php if (!empty($location) && is_array($location)) : ?>
                        <?php foreach ($location as $item) : ?>
                            <div class="tag">
                                <p><?php echo htmlspecialchars($item); ?></p>
                                <button type="button">X</button>
                            </div>
                        <?php endforeach; ?>
                    <?php endif; ?>

                    <?php 
                    // On attend ici $neer comme un tableau de la forme [distance, [lat, lng]]
                    if (!empty($neer) && is_array($neer) && count($neer) === 2 && is_array($neer[1]) && count($neer[1]) === 2): 
                        $distance = htmlspecialchars($neer[0]);
                        $latitude = htmlspecialchars($neer[1][0]);
                        $longitude = htmlspecialchars($neer[1][1]);
                    ?>
                        <div class="tag">
                            <p>
                                À <?php echo $distance; ?>km de (
                                <?php echo $latitude; ?>°N |
                                <?php echo $longitude; ?>°E)
                            </p>
                            <button type="button">X</button>
                        </div>
                    <?php endif; ?>
                    
                    <!--<div class="tag"><p>Technicien fibre</p><button>X</button></div>
                    <div class="tag"><p>Mangeur de pizza</p><button>X</button></div>
                    <div class="tag"><p>Ronfleur pro</p><button>X</button></div>-->
                </div>

            </div>

            <div class="search-stage-result-box">
                <?php if (isset($offres) && is_array($offres)) : ?>
                    <?php foreach ($offres as $i => $offre) : ?>

                        <?php
                            $description = htmlspecialchars($offre['description'] ?? "Aucune description disponible.");
                            $long = strlen($description) > 180; // seuil de longueur
                        ?>

                        <a href="#" class="card-stage">
                            <div class="card-stage-header">
                                <?= htmlspecialchars($offre['titre'] ?? "Titre de l'annonce") ?>
                            </div>

                            <div class="card-stage-content">
                                <div class="card-stage-entreprise">
                                    <?= htmlspecialchars($offre['entreprise'] ?? "Entreprise") ?>
                                </div>

                                <div class="card-stage-description">

                                    <?php if ($long): ?>
                                        <input type="checkbox" id="toggle-<?= $i ?>" class="toggle-checkbox-card-stage">
                                    <?php endif; ?>

                                    <p class="texte-description-card-stage <?= $long ? '' : 'no-limit' ?>">
                                        <?= $description ?>
                                    </p>

                                    <?php if ($long): ?>
                                        <label for="toggle-<?= $i ?>" class="toggle-btn-card-stage"></label>
                                    <?php endif; ?>

                                </div>
                            </div>
                        </a>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </main>
    </body>
    <script src="../assets/scripts/map.js"></script>
    <script src="../assets/scripts/seemore.js"></script>
</html>