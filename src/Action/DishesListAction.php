<?php

namespace App\Action;

use App\Domain\Dishes\Service\DishesListService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class DishesListAction
{
    private DishesListService $dishesListService;
    public function __construct(DishesListService $dishesListService)
    {
        $this->dishesListService = $dishesListService;
    }

    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = ['ok' => true, 'dishes' => $this->dishesListService->listdishes()];
        $response->getBody()->write(json_encode($data));
        return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Content-type', 'application/json')
            ->withStatus(200);
    }
}