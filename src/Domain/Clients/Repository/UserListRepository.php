<?php

namespace App\Domain\Clients\Repository;

use phpDocumentor\Reflection\Types\This;

final class UserListRepository
{
    private \PDO $connection;
    public function __construct(\PDO $connection)
    {
        $this->connection =$connection;
    }
    public function userList(): array
    {
        $statement = "SELECT * FROM users";
        $result = $this->connection->prepare($statement);
        $result->execute();
        return $result->fetchAll();
    }
}