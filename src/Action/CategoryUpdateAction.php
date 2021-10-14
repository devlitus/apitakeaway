<?php

namespace App\Action;

use App\Domain\Categories\Service\CategoryUpdateService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class CategoryUpdateAction
{
    private CategoryUpdateService $updateService;
    public function __construct(CategoryUpdateService $updateService)
    {
        $this->updateService = $updateService;
    }
    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = $request->getParsedBody();
        $categoryId = $this->updateService->categoryUpdate($data);
        $result =['ok' => true, 'categoryID' => $categoryId];
        $response->getBody()->write(json_encode($result));
        return $response->withHeader(
            'Access-Control-Allow-Origin', '*',
            'Content-type', 'application/json'
        )->withStatus(200);
    }
}