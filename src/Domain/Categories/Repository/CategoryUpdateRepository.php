<?php

namespace App\Domain\Categories\Repository;

final class CategoryUpdateRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    public function categoryUpdate(array $data): int
    {
        $row = '';
        $id = $data['id'];
        foreach ($data as $key => $value):
            $row .= $key. '='. $this->connection->quote($value).",";
        endforeach;
        $row = substr($row, 0, -1);
        $row = substr($row, 8);
        $sql = "UPDATE categories SET $row WHERE id=$id";
//        $this->connection->prepare($sql)->execute($row);
//        return (int)$this->connection->lastInsertId();
    }
}