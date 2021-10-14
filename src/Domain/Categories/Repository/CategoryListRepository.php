<?php

namespace App\Domain\Categories\Repository;

final class CategoryListRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection =$connection;
    }
    public function categoryList(): array
    {
        $statement = "SELECT * FROM categories";
        $result = $this->connection->prepare($statement);
        $result->execute();
        return $result->fetchAll();
    }
}