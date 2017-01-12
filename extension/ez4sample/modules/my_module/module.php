<?php
/**
 * Created by PhpStorm.
 * User: francois
 * Date: 12/01/17
 * Time: 11:53
 */

$Module = ['name' => 'Monmodule'];
$ViewList = [];
$ViewList['hello'] = [
    'script' => 'hello.php',
    'default_navigation_part' => 'monnavigationpart',
    'ui_context' => 'edit',
    'params' => ['upcase', 'name'],
    'unordered_params' => ['offset' => 'Offset'],
    'functions' => ['read']
];
$FunctionList = [];
$FunctionList['read'] = [];

$Result['pagelayout'] = 'design:pagelayout.tpl';
$http = eZHTTPTool::instance();