<?php

namespace App\Domain\Dishes\Data;

class DisheData
{
    /**
     * @var string
     */
    public string $name;
    /**
     * @var string
     */
    public string $description;
    /**
     * @var float
     */
    public float $price;
    /**
     * @var string
     */
    public string $image;
    /**
     * @var \DateTime
     */
    public \DateTime $date;
    /**
     * @var bool
     */
    public bool $activate;
    /**
     * @var int
     */
    public int $id_category;
}