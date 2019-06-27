<?php

namespace app\controllers;

use easyPeasy\Controller;

class SiteController extends Controller
{
    public function index()
    {
        $this->render('index', [
            'text' => 'Welcome to Easy Peasy PHP Tiny Framework'
        ]);
    }
}