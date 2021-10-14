<?php

namespace App\Domain\Clients\Repository;

final class UserUpdateRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }
    public function clientUpdate(array $data)
    {
        $rows = "";
        $id = $data['id'];
        foreach ($data as $key => $value):
            $rows .= $key. '='. $this->connection->quote($value).",";
        endforeach;
        $rows = substr($rows, 0, -1);
        $rows = substr($rows, 8);
        $sql = "UPDATE users SET $rows WHERE id=$id;";
        $this->connection->prepare($sql)->execute($rows);
        return (int)$this->connection->lastInsertId();
    }
}