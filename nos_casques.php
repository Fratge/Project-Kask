<?php

include('include/twig.php');
$twig = init_twig();

if (isset($_GET['id'])) $id = $_GET['id']; else $id = 0;
$id = intval($id);

if (isset($_GET['aff'])) $aff = $_GET['aff']; else $aff = 0;


include('include/connexion.php');
$pdo = connexion();

include('include/select.php');
$meilleurs_vente = select_casques_meilleurs_vente($pdo);
$liste_produits = select_produits_casques($pdo, $_POST);

$liste_sans_doublon = array();

foreach($liste_produits as $produit){
    if(empty($liste_sans_doublon)){
        array_push($liste_sans_doublon, $produit);
    }
    else{
        $bool = 0;
        foreach($liste_sans_doublon as $casque){
            if ($casque['id_casque'] == $produit['id_casque'])
            $bool = 1;
        }
        if($bool == 0){
            array_push($liste_sans_doublon, $produit);
        }
    }
}

// Comptage d'elements
$longueur_tableau = count($liste_sans_doublon);

include('include/filtres.php');
$liste_marques = select_marques($pdo);
$liste_utilisations = select_utilisations($pdo);
$liste_prix_fourchettes = select_prixfourchettes($pdo);
$liste_connectiques = select_connectiques($pdo);
$liste_tags = select_tags($pdo);

echo $twig->render('nos_casques.twig', [
    'titre_page' => 'Nos Casques',
    'meilleurs_vente' => $meilleurs_vente,
    'liste_produits' => $liste_sans_doublon,
    'aff' => $aff,

    // ===== Comptage d'articles ====
    'comptage' => $longueur_tableau,

    // ===== FILTRES =====
    'marques' => $liste_marques,
    'utilisations' => $liste_utilisations,
    'prixfourchettes' => $liste_prix_fourchettes,
    'connectiques' => $liste_connectiques,
    'tags' => $liste_tags,
    ]);

?>