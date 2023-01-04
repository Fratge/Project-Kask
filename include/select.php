<?php


// ========== Sélection des casques pour la section : Meilleurs ventes ==========

function select_casques_meilleurs_vente($pdo)
{

  $sql = 'SELECT * FROM casque WHERE meilleursventes_casque = 1';

  $query = $pdo->prepare($sql); 
  $query->execute();

  if ($query->errorCode() == '00000') {
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}


// ========== Sélection de tout les casques ainsi que leurs infos de la base de données ==========

function select_produits_casques($pdo, $post)
{
  $sql = 'SELECT * FROM casque
  INNER JOIN marque
  ON casque.id_marque = marque.id_marque
  INNER JOIN connectique
  ON casque.id_connectique = connectique.id_connectique
  INNER JOIN prixfourchette
  ON casque.id_prixfourchette = prixfourchette.id_prixfourchette
  INNER JOIN utilisation
  ON casque.id_utilisation = utilisation.id_utilisation
  LEFT JOIN posseder
  ON posseder.id_casque=casque.id_casque
  INNER JOIN tag
  ON posseder.id_tag=tag.id_tag
  WHERE casque.id_casque != 0 ';

  foreach($post as $key => $value){
    if($key == 'marque'){
      $sql = $sql.' AND marque.id_marque ='.$value;
    }
    if($key == 'connectique'){
      $sql = $sql.' AND connectique.id_connectique='.$value;
    }
    if($key == 'prixfourchette'){
      $sql = $sql.' AND prixfourchette.id_prixfourchette ='.$value;
    }
    if($key == 'utilisation'){
      $sql = $sql.' AND utilisation.id_utilisation ='.$value;
    }
    if($key == 'trierpar'){
      $sql = $sql.' ORDER BY '.$value;
    }
    if ($key == 'tag'){
      foreach($value as $sub_key => $sub_value){
        if($sub_key == array_key_first($value)) {
          $sql = $sql.' AND tag.id_tag IN ('.$sub_value ;
        }
        else {
          $sql = $sql.','.$sub_value ;
        }
      }
      $sql = $sql.') GROUP BY casque.id_casque';
    }
  };
  
  $sql =$sql.';';


  $query = $pdo->prepare($sql);
  $query->execute();

  if ($query->errorCode() == '00000') {

    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}

// ========== Sélection des colonnes nécessaires pour la fiche produit d'un casque ==========

function select_infos_fiche_produit($pdo, $id)
{
  $sql = 'SELECT * FROM casque
  LEFT OUTER JOIN marque
  ON casque.id_marque = marque.id_marque
  INNER JOIN connectique
  ON casque.id_connectique = connectique.id_connectique
  WHERE id_casque = :id';

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();

  if ($query->errorCode() == '00000') {
    $tableau = $query->fetchAll(PDO::FETCH_ASSOC);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}

