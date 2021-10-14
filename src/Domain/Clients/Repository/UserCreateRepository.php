<?php

namespace App\Domain\Clients\Repository;

use App\Domain\Clients\Data\UserData;

final class UserCreateRepository
{
    private \PDO $connection;

    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    public function userCreate(array $client): int
    {
        $user = new UserData();
        $user->username = filter_var($client['username'], FILTER_SANITIZE_STRING);
        $user->email = filter_var($client['email'], FILTER_SANITIZE_EMAIL);
        $user->password = password_hash($client['password'], PASSWORD_DEFAULT, ['cost' => 10]);
        (empty($client['activate'])) ? $user->active = 'false' : $user->active = filter_var($client['active'], FILTER_SANITIZE_STRING);
        (empty($client['role'])) ? $user->role = 'USER_ROLE' : $user->role = filter_var($client['role'], FILTER_SANITIZE_STRING);
        (empty($client['image'])) ? $user->image = 'default.png' : $user->image = 'image';
        $row = [
            'username' => $user->username,
            'email' => $user->email,
            'password' => $user->password,
            'image' => $user->image,
            'activate' => $user->active,
            'role' => $user->role
        ];
        $statement = "INSERT INTO users SET 
                            username=:username, 
                            email=:email, 
                            password=:password,
                            imagen=:image,
                            active=:activate, 
                            role=:role";

        $this->connection->prepare($statement)->execute($row);
        return (int)$this->connection->lastInsertId();
    }
}