<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\Factory\ModelFactory;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class AdminController
 * @package App\Controller
 */
class AdminController extends MainController
{
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        $courses    = ModelFactory::getModel("Courses")->listData();
        $resources  = ModelFactory::getModel("Resources")->listData();
        $exercises  = ModelFactory::getModel("Exercises")->listData();
        $users      = ModelFactory::getModel("Users")->listData();

        return $this->render("back/admin.twig", [
            "courses"   => $courses,
            "resources" => $resources,
            "exercises" => $exercises,
            "users"     => $users
        ]);
    }
}
