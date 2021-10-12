<?php

use App\Action\CategoryCreateAction;
use App\Action\CategoryListAction;
use App\Action\CategoryUpdateAction;
use Slim\App;
use Slim\Routing\RouteCollectorProxy;

return function (App $app) {
    $app->get('/', \App\Action\HomeAction::class)->setName('home');
};
