<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\ModelFactory;
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
        if ($this->checkAdmin() !== true) {
            $this->redirect("home");
        }

        $resources  = ModelFactory::getModel("Resource")->listData();
        $users      = ModelFactory::getModel("User")->listData();

        return $this->render("back/admin.twig", [
            "resources" => $resources,
            "users"     => $users
        ]);
    }
}
