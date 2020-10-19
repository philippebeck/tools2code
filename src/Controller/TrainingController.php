<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class TrainingController
 * @package App\Controller
 */
class TrainingController extends MainController
{
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        return $this->render("front/training/training.twig");
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
            $training = $this->getPost()->getPostArray();

            ModelFactory::getModel("Training")->createData($training);
            $this->getSession()->createAlert("New Training successfully created !", "green");
        }

        return $this->render("back/training/createTraining.twig");
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
            $training = $this->getPost()->getPostArray();

            ModelFactory::getModel("Training")->updateData($this->getGet()->getGetVar("id"), $training);
            $this->getSession()->createAlert("Successful modification of the selected Training !", "blue");

            $this->redirect("admin");
        }

        $training = ModelFactory::getModel("Method")->readData($this->getGet()->getGetVar("id"));

        return $this->render("back/training/updateTraining.twig", ["training" => $training]);
    }

    public function deleteMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Training")->deleteData($this->getGet()->getGetVar("id"));
        $this->getSession()->createAlert("Training permanently deleted !", "red");

        $this->redirect("admin");

    }
}
