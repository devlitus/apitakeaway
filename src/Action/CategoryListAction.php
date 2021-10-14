<?php

namespace App\Action;

use App\Domain\Categories\Service\CategoryListService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class CategoryListAction
{
    private CategoryListService $category;
    public function __construct(CategoryListService $category)
    {
        $this->category = $category;
    }
    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = ['ok' => true, 'categories' => $this->category->listCategory()];
        $payload = json_encode($data);
        $response->getBody()->write($payload);
        return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Content-Type', 'application/json')
            ->withStatus(200);
    }
}