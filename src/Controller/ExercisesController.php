<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\Factory\ModelFactory;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class ExercisesController
 * @package App\Controller
 */
class ExercisesController extends MainController
{
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        $allExercises = ModelFactory::getModel("Exercises")->listData();

        return $this->render("front/exercises/listExercises.twig", ["allExercises" => $allExercises]);
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
            $exercise = $this->getPost()->getPostArray();

            ModelFactory::getModel("Exercises")->createData($exercise);
            $this->getSession()->createAlert("New Exercise successfully created !", "green");
        }

        return $this->render("back/exercises/createExercise.twig");
    }
    
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function readMethod()
    {
        $exercise = ModelFactory::getModel("Exercises")->readData($this->getGet()->getGetVar("id"));

        return $this->render("front/exercises/readExercise.twig", ["exercise" => $exercise]);
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
            $exercise = $this->getPost()->getPostArray();

            ModelFactory::getModel("Exercises")->updateData($this->getGet()->getGetVar("id"), $exercise);
            $this->getSession()->createAlert("Successful modification of the selected Exercise !", "blue");

            $this->redirect("admin");
        }

        $exercises = ModelFactory::getModel("Exercises")->readData($this->getGet()->getGetVar("id"));

        return $this->render("back/exercises/updateExercise.twig", ["exercise" => $exercise]);
    }

    public function deleteMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Exercises")->deleteData($this->getGet()->getGetVar("id"));
        $this->getSession()->createAlert("Exercise permanently deleted !", "red");

        $this->redirect("admin");

    }
}
