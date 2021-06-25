<?php 

require 'vendor/autoload.php';

use LuBbs\HelloWorld\SayHello;

echo SayHello::hello($_ENV['APP_NAME'] ?? null);