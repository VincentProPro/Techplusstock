<?php
require '../vendor/autoload.php';
// $router = new AltoRouter();
// define('VIEW_PATH', dirname(__DIR__) . '/views');
$router= new Techplus\Stockplateforme\Router(dirname(__DIR__) . '/views');
$router->get('/blog', '/post/index', 'blog')
    ->get('/blog/category', '/category/show', 'category')
    ->run();

// $router->map('GET', '/blog', function (){
//     require VIEW_PATH . '/post/index.php';
// });
// $router->map('GET', '/blog/category', function (){
//     require VIEW_PATH . '/category/show.php'; 
// });

// $match = $router->match();
// $match['target']();

?>
