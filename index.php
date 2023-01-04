<?php


// Initialise Twig
include('include/twig.php');
include('include/connexion.php');

$twig = init_twig();
$pdo = connexion();

echo $twig->render('accueil.twig', [
    'titre_page' => 'Accueil',
    ]);

?>