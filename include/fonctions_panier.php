<?php


// ========== Ajoute un élément au panier, en changeant le bouléen en 1 (Vrai) ==========

function ajouter_element_panier($pdo, $id)
{
  $sql = 'UPDATE casque 
  SET panier_casque = 1
  WHERE id_casque = :id';

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();
  
}


// ========== Affiche les éléments du panier ou le booléen est égale à 1 ==========

function afficher_element_panier($pdo)
{
  $sql = 'SELECT * FROM casque
  WHERE panier_casque = 1';

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


// ========== Supprime un élément au panier, en changeant le bouléen en 0 (Faux) ==========

function supprimer_element_panier($pdo, $id)
{
  $sql = 'UPDATE casque 
  SET panier_casque = 0 WHERE  id_casque = :id';

  $query = $pdo->prepare($sql);
  $query->bindValue(':id', $id, PDO::PARAM_INT);
  $query->execute();
}

// ========== Fonction qui addition le prix des casques dans le panier ==========

function prix_total_panier($pdo)
{
  $sql = 'SELECT SUM(prix_casque)
  FROM casque WHERE panier_casque = 1';

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


?>


