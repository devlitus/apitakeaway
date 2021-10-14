<?php

namespace App\Domain\Clients\Service;

use App\Domain\Clients\Repository\UserUpdateRepository;

final class UserUploadService
{
    private UserUpdateRepository $userUpdateRepository;
    public function __construct(UserUpdateRepository $userUpdateRepository)
    {
        $this->userUpdateRepository = $userUpdateRepository;
    }

    public function uploaderUser(array $data)
    {
        $this->userUpdateRepository->clientUpdate($data);
    }
}