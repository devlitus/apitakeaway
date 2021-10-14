<?php

namespace App\Domain\Categories\Service;

use App\Domain\Categories\Repository\CategoryUpdateRepository;

final class CategoryUpdateService
{
    private CategoryUpdateRepository $repository;
    public function __construct(CategoryUpdateRepository $repository)
    {
        $this->repository = $repository;
    }
    public function categoryUpdate(array $data): int
    {
        return $this->repository->categoryUpdate($data);
    }
}