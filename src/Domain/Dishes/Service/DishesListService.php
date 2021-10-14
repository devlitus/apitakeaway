<?php

namespace App\Domain\Dishes\Service;

use App\Domain\Dishes\Repository\DishesListRepository;

final class DishesListService
{
    private DishesListRepository $dishesListRepository;
    public function __construct(DishesListRepository $dishesListRepository)
    {
        $this->dishesListRepository = $dishesListRepository;
    }

    public function listdishes(): array
    {
        return $this->dishesListRepository->dishesList();
    }
}