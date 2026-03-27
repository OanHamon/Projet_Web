<?php

namespace App\Controller;



class ErrorController extends Controller{

  
    function __construct(){
        parent::__construct();

    }

    function renderErrorPage(){
        if(isset($_GET['error'])){
            $error=  $this->manageError($_GET['error']);

        }
        echo $this->twig->render('error.twig',['error'=>$error]);
    }

    private function manageError($error_msg){

        $errors = [

            '404' => [
                'name' => '404',
                'title' => 'Oups… vous êtes tombé un peu trop profond',
                'description' => 'Cette page a probablement coulé. On a envoyé un plongeur, mais il n’est jamais revenu.',
                'bouton' => 'Remonter à la surface'
            ],

            'not_youre_offer' => [
                'name' => 'Accès refusé',
                'title' => 'Hé oh, ce n’est pas votre territoire',
                'description' => 'Vous essayez d’entrer dans une zone gardée par un poulpe très susceptible.',
                'bouton' => 'Faire demi-tour'
            ],

            'url_not_available' => [
                'name' => 'Lien perdu',
                'title' => 'Ce courant ne mène nulle part',
                'description' => 'On a suivi le lien… mais il s’est perdu dans l’océan. Classique.',
                'bouton' => 'Retourner au rivage'
            ],

            'file_error' => [
                'name' => 'Erreur fichier',
                'title' => 'Le fichier a pris l’eau',
                'description' => 'On a essayé de l’ouvrir, mais il est complètement détrempé.',
                'bouton' => 'Réessayer'
            ],

            'no_file_available' => [
                'name' => 'Fichier introuvable',
                'title' => 'Aucun trésor ici',
                'description' => 'Même après fouille complète… rien. Pas même un coquillage.',
                'bouton' => 'Continuer l’exploration'
            ],

            'already_applied' => [
                'name' => 'Déjà fait',
                'title' => 'Vous êtes déjà passé par ici',
                'description' => 'On reconnaît votre trace dans le sable. Pas besoin de replonger.',
                'bouton' => 'Retour'
            ],

            'already_in_wishlist' => [
                'name' => 'Déjà la',
                'title' => 'Déjà dans votre filet',
                'description' => 'Pas besoin de le repêcher, il est déjà bien au chaud.',
                'bouton' => 'Retour a la pêche'
            ],

            'not_in_wishlist' => [
                'name' => 'Introuvable',
                'title' => 'Ce poisson n’est pas dans votre filet',
                'description' => 'Impossible de le retirer… puisqu’il n’y est pas.',
                'bouton' => 'Retour'
            ],

            'default' => [
                'name' => 'Erreur',
                'title' => 'Une tempête est apparue',
                'description' => 'Quelque chose s’est mal passé… et même notre capitaine est confus.',
                'bouton' => 'Retour au calme'
            ]
        ];

        return $errors[$error_msg] ?? $errors['default'];
    }

}