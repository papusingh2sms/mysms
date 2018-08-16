<?php


file_put_contents("contacts.txt", "" . $_POST['contact'] . "\n", FILE_APPEND);

exit();
