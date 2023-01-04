<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

include('include/connexion.php');
$pdo = connexion();

echo $twig->render('contact.twig', [
    'titre_page' => 'Contact',
]);

?>