<?php

namespace App\Domain\Clients\Data;

final class UserData
{
    /**
     * @var int
     */
    public int $id;
    /**
     * @var string
     */
    public string $username;
    /**
     * @var string
     */
    public string $email;
    /**
     * @var string
     */
    public string $password;
    /**
     * @var string
     */
    public string $image;
    /**
     * @var string
     */
    public string $date;
    /**
     * @var bool
     */
    public bool $active;
    /**
     * @var string
     */
    public string $role;
}