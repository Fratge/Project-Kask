<?php

include('include/twig.php');
$twig = init_twig();

if (isset($_GET['id'])) $id = $_GET['id']; else $id = 0;
$id = intval($id);

include('include/connexion.php');
$pdo = connexion();

include('include/select.php');
include('include/fonctions_panier.php');
$fonction = ajouter_element_panier($pdo, $id);
$infos_produit = select_infos_fiche_produit($pdo, $id);


echo $twig->render('fiche_produit.twig', [
    'titre_page' => 'Fiche Produit',
    'elements' => $infos_produit,
    'id' => $id,
    'fonction' => $fonction,
    ]);

?>