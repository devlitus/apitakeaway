<?php

namespace App\Action;

use App\Domain\Categories\Service\CategoryCreateService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class CategoryCreateAction
{
    private CategoryCreateService $createCategory;
    public function __construct(CategoryCreateService $createCategory)
    {
        $this->createCategory = $createCategory;
    }
    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = (array)$request->getParsedBody();
        $categoryId = $this->createCategory->insertCategory($data);
        $result = ['ok' => true, 'categoryId' => $categoryId];
        $response->getBody()->write(json_encode($result));
        return $response->withHeader(
            'Access-Control-Allow-Origin', '*',
            'Content-type', 'application/json'
        )->withStatus(201);
    }
}