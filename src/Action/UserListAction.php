<?php

namespace App\Action;

use App\Domain\Clients\Service\UserListService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class UserListAction
{
    private UserListService $userListService;

    public function __construct(UserListService $userListService)
    {
        $this->userListService = $userListService;
    }

    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = $this->userListService->listCategory();
        $payload = json_encode($data);
        $response->getBody()->write($payload);
        return $response->withHeader(
            'Access-Control-Allow-Origin', '*',
            'Content-type', 'application/json'
        )->withStatus(200);
    }
}