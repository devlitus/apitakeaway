<?php

use App\Action\CategoryCreateAction;
use App\Action\CategoryDeleteAction;
use App\Action\CategoryListAction;
use App\Action\CategoryUpdateAction;
use App\Action\DishesCreateAction;
use App\Action\DishesDeleteAction;
use App\Action\DishesListAction;
use App\Action\DishesUpdateAction;
use App\Action\UserCreateAction;
use App\Action\UserDeleteAction;
use App\Action\UserListAction;
use App\Action\UserUpdateAction;
use Slim\App;
use Slim\Routing\RouteCollectorProxy;

return function (App $app) {
    $app->group('/v1', function (RouteCollectorProxy $group){
//        Route Categories
        $group->group('/categories', function (RouteCollectorProxy $group){
            $group->get('/list', CategoryListAction::class);
            $group->post('/create', CategoryCreateAction::class);
            $group->put('/update', CategoryUpdateAction::class);
            $group->delete('/delete', CategoryDeleteAction::class);
        });
//      Route Clients
        $group->group('/user', function (RouteCollectorProxy $group){
            $group->get('/list', UserListAction::class);
            $group->post('/create', UserCreateAction::class);
            $group->put('/update', UserUpdateAction::class);
            $group->delete('/delete', UserDeleteAction::class);
        });
//        Route Dishes
        $group->group('/dishes', function (RouteCollectorProxy $group){
            $group->get('/list', DishesListAction::class);
            $group->post('/create', DishesCreateAction::class);
            $group->put('/update', DishesUpdateAction::class);
            $group->delete('/delete', DishesDeleteAction::class);
        });
    });
};
