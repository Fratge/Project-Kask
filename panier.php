<?php

include('include/twig.php');
$twig = init_twig();

if (isset($_GET['id_delete']))  $id = $_GET['id_delete']; else $id = 0;
$id = intval($id);


include('include/connexion.php');
$pdo = connexion();

include('include/fonctions_panier.php');
$supprimer_element = supprimer_element_panier($pdo, $id);
$afficher_elements = afficher_element_panier($pdo);  
$prix_total_panier = prix_total_panier($pdo);

echo $twig->render('panier.twig', [
    'titre_page' => 'Mon Panier',
    'panier' => $afficher_elements,
    'supprimer_panier' => $supprimer_element,
    'prix_total' => $prix_total_panier['0']['SUM(prix_casque)'],
]);

?>
