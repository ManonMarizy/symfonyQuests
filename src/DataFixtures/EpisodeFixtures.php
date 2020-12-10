<?php

namespace App\DataFixtures;

use App\Entity\Episode;
use App\Service\Slugify;
use Faker;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;

class EpisodeFixtures extends Fixture implements DependentFixtureInterface
{
    const EPISODE_COUNT = 10;
    
    public function load(ObjectManager $manager)
    {
        for ($i = 0; $i < self::EPISODE_COUNT; $i++) {

            $faker  =  Faker\Factory::create('fr_FR');
            $episode = new Episode();
            $slugify = new Slugify();
            $episode->setTitle(($faker->title));
            $slug = $slugify->generate($episode->getTitle());
            $episode->setSlug($slug);
            $episode->setNumber($faker->numberBetween(1, 5));
            $episode->setSynopsis($faker->text);
            $episode->setSeason($this->getReference('season_' . rand(0, SeasonFixtures::SEASONS_COUNT-1)));
            $manager->persist($episode);
        }
        $manager->flush();
    }

    public function getDependencies(): array
    {
        return [SeasonFixtures::class];
    }
}
