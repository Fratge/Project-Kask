<?php

function select_casques_trie($pdo)
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
  ';

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


function select_marques($pdo)
{
  $sql = 'SELECT * FROM marque';

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


function select_utilisations($pdo)
{
  $sql = 'SELECT * FROM utilisation';

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


function select_prixfourchettes($pdo)
{
  $sql = 'SELECT * FROM prixfourchette';

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


function select_connectiques($pdo)
{
  $sql = 'SELECT * FROM connectique';

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


function select_tags($pdo)
{
  $sql = 'SELECT * FROM tag';

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