<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class ResourcesController
 * @package App\Controller
 */
class ResourcesController extends MainController
{
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        return $this->render("front/resources/resources.twig");
    }

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function createMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        if (!empty($this->getPost()->getPostArray())) {
            $resource = $this->getPost()->getPostArray();

            ModelFactory::getModel("Resources")->createData($resource);
            $this->getSession()->createAlert("New Resource successfully created !", "green");
        }

        return $this->render("back/resources/createResource.twig");
    }

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function updateMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        if (!empty($this->getPost()->getPostArray())) {
            $resource = $this->getPost()->getPostArray();

            ModelFactory::getModel("Resources")->updateData($this->getGet()->getGetVar("id"), $resource);
            $this->getSession()->createAlert("Successful modification of the selected Resource !", "blue");

            $this->redirect("admin");
        }

        $resource = ModelFactory::getModel("Resources")->readData($this->getGet()->getGetVar("id"));

        return $this->render("back/resources/updateResource.twig", ["resource" => $resource]);
    }

    public function deleteMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Resources")->deleteData($this->getGet()->getGetVar("id"));
        $this->getSession()->createAlert("Resource permanently deleted !", "red");

        $this->redirect("admin");

    }
}
