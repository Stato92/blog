<?php

namespace AppBundle\Controller;

use AppBundle\Entity\BlogPost;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(PaginatorInterface $paginator, Request $request)
    {
        $session = new Session();
        if (!$session->has('layout')) {
            $session->start();
            $session->set('layout', 'blog');
        }
        $repo = $this->getDoctrine()
            ->getRepository(BlogPost::class);
        return $this->render($session->get('layout') . '/home.html.twig', [
            'posts' => $paginator->paginate($repo->findAllCurrentPosts(), $request->query->getInt('page', 1), 4)
        ]);
    }
    /**
     * @Route("post/{post_title}", name="post")
     */
    public function postAction($post_title)
    {
        $session = new Session();
        $post = $this->getDoctrine()
            ->getRepository(BlogPost::class)
            ->findOneByTitle($post_title);
        // replace this example code with whatever you need
        return $this->render($session->get('layout') . '/post.html.twig', [
            'post' => $post,
        ]);
    }

    /**
     * @Route("/layout/{layout}", name="layout_change")
     */
    public function layoutAction($layout)
    {
        $session = new Session();
        $session->set('layout', $layout);
        return $this->redirectToRoute('homepage');
    }

    /**
     * @Route("/login", name="login")
     */
    public function loginAction(AuthenticationUtils $authenticationUtils)
    {
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('login.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error,
        ]);
    }
}
