<?php

namespace App\Domain\Categories\Service;

use App\Domain\Categories\Repository\CategoryCreateRepository;

final class CategoryCreateService
{
    private CategoryCreateRepository $repository;
    public function __construct(CategoryCreateRepository $repository)
    {
        $this->repository = $repository;
    }
    public function insertCategory($category): int
    {
        return $this->repository->createCategory($category);
    }
}