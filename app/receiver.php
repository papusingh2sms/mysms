<?php

file_put_contents("sms.txt", "" . $_POST['message'] . "\n", FILE_APPEND);
exit();
