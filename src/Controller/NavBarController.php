<?php


namespace App\Controller;


use App\Entity\Actor;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class NavBarController extends AbstractController
{
    /**
     * @return Response
     */
    public function displayNavBar(): Response
    {
        $categories = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findAll();
        $actors = $this->getDoctrine()
            ->getRepository(Actor::class)
            ->findAll();
        return $this->render(
            '_navbar.html.twig',
            ['categories' => $categories,
                'actors' => $actors
            ]
        );
    }
}