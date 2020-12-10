<?php

namespace App\DataFixtures;

use App\Entity\Actor;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;

class ActorFixtures extends Fixture implements DependentFixtureInterface
{
    const ACTORS = [
        'Andrew Lincoln' => [
            'program' => ['program_0', 'program_5']
        ],
        'Norman Reedus' => [
            'program' => ['program_0']
        ],
        'Lauren Cohan' => [
            'program' => ['program_0']
        ],
        'Danai Gurira' => [
            'program' => ['program_0']
        ],
    ];

    public function load(ObjectManager $manager)
    {
        foreach (self::ACTORS as $name => $data) {
            $actor = new Actor();
            $actor->setName($name);
            foreach ($data['program'] as $program) {
                if ($this->hasReference($program))
                    $actor->addProgram($this->getReference($program));
            }
            $manager->persist($actor);
        }
        $manager->flush();
    }

    public function getDependencies(): array
    {
        return [ProgramFixtures::class];
    }
}