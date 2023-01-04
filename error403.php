<?php

// Initialise Twig
include('include/twig.php');
include('include/connexion.php');

$twig = init_twig();
$pdo = connexion();

echo $twig->render('error403.twig', [
    'titre_page' => 'Error 403',
    ]);

?>