<?php

namespace App\Domain\Clients\Service;

use App\Domain\Clients\Repository\UserListRepository;

final class UserListService
{
    private UserListRepository $repository;

    public function __construct(UserListRepository $repository)
    {
        $this->repository = $repository;
    }
    public function listCategory():array
    {
        return $this->repository->userList();
    }
}