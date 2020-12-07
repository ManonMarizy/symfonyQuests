<?php


namespace App\Controller;

use App\Entity\Actor;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * @Route("/actor", name="actor_")
 */
class ActorController extends AbstractController
{
    /**
     * Show all rows from Program’s entity
     *
     * @Route("/", name="index")
     * @return Response A response instance
     */
    public function index(): Response
    {
        $actors = $this->getDoctrine()
            ->getRepository(Actor::class)
            ->findAll();

        return $this->render(
            'actor/index.html.twig',
            ['actors' => $actors]
        );
    }
    /**
     * @Route("/{id<^[0-9]+$>}", methods={"GET"}, requirements={"id"="\d+"}, name="show")
     * @param Actor $actor
     * @return Response
     */
    public function show(Actor $actor): Response
    {
        if (!$actor) {
            throw $this->createNotFoundException(
                'Oups, cet acteur n\'est pas référencé'
            );
        }
        $actor = $this->getDoctrine()
            ->getRepository(Actor::class)
            ->findOneBy(['id'=>$actor]);

        return $this->render('actor/show.html.twig', [
            'actor' => $actor,
        ]);
    }
}