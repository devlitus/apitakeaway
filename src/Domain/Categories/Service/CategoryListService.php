<?php

namespace App\Domain\Categories\Service;

use App\Domain\Categories\Repository\CategoryListRepository;

final class CategoryListService
{
    private CategoryListRepository $repository;

    public function __construct(CategoryListRepository $repository)
    {
        $this->repository = $repository;
    }
    public function listCategory():array
    {
       return $this->repository->categoryList();
    }
}