<?php

echo md5("147852369az");
$password=  "147852369az";
?>

<?php
// Voir l'exemple fourni sur la page de la fonction password_hash()
// pour savoir d'où cela provient.
$hash2 = '$2y$10$S55jLOM2CMc4YAY9hzHsPuwmhlFwvV9bFNykT2aCRjavVxGPGbL8S';
$hash = '$2y$07$BCryptRequires22Chrcte/VlQH0piJtjXl.0t1XkA8pw9dMXTpOq';

if (password_verify('147852369az', $hash2)) {
    echo 'Le mot de passe est valide !'.$password;
} else {
    echo 'Le mot de passe est invalide.';
}
?>
