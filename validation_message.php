<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

include('include/connexion.php');
$pdo = connexion();

include('include/insert.php');

$user = [
    'auid' => null,
    'nom_user' => strip_tags($_POST['nom_user']),
    'prenom_user' => strip_tags($_POST['prenom_user']),
    'message_user' => strip_tags($_POST['message_user']),
];

insert_message($pdo, $user);

echo $twig->render('validation_message.twig', [
    'titre_page' => 'Validation',
    ]);
?>