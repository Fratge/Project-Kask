<?php

function insert_message($pdo, $user)
{
  $sql = 'INSERT INTO user (prenom_user, nom_user, message_user) VALUES (:prenom_user, :nom_user, :message_user)';

  $query = $pdo->prepare($sql);

  $query->bindValue(':prenom_user', $user['prenom_user'], PDO::PARAM_STR);
  $query->bindValue(':nom_user', $user['nom_user'], PDO::PARAM_STR);
  $query->bindValue(':message_user', $user['message_user'], PDO::PARAM_STR);

  $query->execute();

}



?>