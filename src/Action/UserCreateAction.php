<?php

namespace App\Action;

use App\Domain\Clients\Service\UserCreateService;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;

final class UserCreateAction
{
    private UserCreateService $userCreateService;
    public function __construct(UserCreateService $userCreateService)
    {
        $this->userCreateService = $userCreateService;
    }
    public function __invoke(ServerRequestInterface $request, ResponseInterface $response): ResponseInterface
    {
        $data = $request->getParsedBody();
        $userId = $this->userCreateService->insertUser($data);
        $result = ['ok' => true, 'userId' => $userId];
        $response->getBody()->write(json_encode($result));
        return $response->withHeader(
            'Access-Control-Allow-Origin', '*',
            'Content-type', 'application/json'
        )->withStatus(201);
    }
}