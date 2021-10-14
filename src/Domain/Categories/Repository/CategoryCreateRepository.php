<?php

namespace App\Domain\Categories\Repository;

final class CategoryCreateRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    public function createCategory(array $category):int
    {
        $row = [
            'category' => $category['category'],
            'description' => $category['description']
        ];
        $sql = "INSERT INTO categories set categoria=:category, descripcion=:description";
        $this->connection->prepare($sql)->execute($row);
        return (int)$this->connection->lastInsertId();
    }
}