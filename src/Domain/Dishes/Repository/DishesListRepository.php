<?php

namespace App\Domain\Dishes\Repository;

final class DishesListRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    public function dishesList(): array
    {
        $sql = "SELECT * FROM dishes;";
        $result = $this->connection->prepare($sql);
        $result->execute();
        return $result->fetchAll();
    }
}