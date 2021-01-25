<?php


namespace App\Controller;


use App\Entity\Actor;
use App\Entity\Category;
use App\Repository\ActorRepository;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class NavBarController extends AbstractController
{
    /**
     * @param CategoryRepository $categoryRepository
     * @param ActorRepository $actorRepository
     * @return Response
     */
    public function displayNavBar(CategoryRepository $categoryRepository, ActorRepository $actorRepository): Response
    {
        return $this->render(
            '_navbar.html.twig',
            ['categories' => $categoryRepository->findBy([], ['id' => 'DESC']),
                'actors' => $actorRepository->findAll()
            ]
        );
    }
}