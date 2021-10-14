<?php

namespace App\Domain\Clients\Service;

use App\Domain\Clients\Repository\UserCreateRepository;

final class UserCreateService
{
    private UserCreateRepository $repository;
    public function __construct(UserCreateRepository $repository)
    {
        $this->repository =$repository;
    }

    public function insertUser(array $user): int
    {
        return $this->repository->userCreate($user);
    }
}