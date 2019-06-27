<?php

header('Content-Type: text/html; charset=utf-8');

require_once __DIR__ . '/../vendor/autoload.php';

$app = new easyPeasy\Router(new easyPeasy\Request);
$app->run();