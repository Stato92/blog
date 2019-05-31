<?php

namespace AppBundle\Controller;

use AppBundle\Entity\BlogPost;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(PaginatorInterface $paginator, Request $request)
    {
        $repo = $this->getDoctrine()
            ->getRepository(BlogPost::class);
        return $this->render('default/index.html.twig', [
            'posts' => $paginator->paginate($repo->findAllCurrentPosts(),$request->query->getInt('page',1),3)
        ]);
    }
    /**
     * @Route("/{post_title}", name="post")
     */
    public function postAction($post_title)
    {
        $post = $this->getDoctrine()
            ->getRepository(BlogPost::class)
            ->findOneByTitle($post_title);
        // replace this example code with whatever you need
        return $this->render('default/post.html.twig', [
            'post' => $post,
        ]);
    }
}
