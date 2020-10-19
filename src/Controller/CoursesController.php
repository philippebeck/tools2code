<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class CoursesController
 * @package App\Controller
 */
class CoursesController extends MainController
{
    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        return $this->render("front/courses/courses.twig");
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
            $course = $this->getPost()->getPostArray();

            ModelFactory::getModel("Courses")->createData($course);
            $this->getSession()->createAlert("New Course successfully created !", "green");
        }

        return $this->render("back/courses/createCourse.twig");
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
            $course = $this->getPost()->getPostArray();

            ModelFactory::getModel("Courses")->updateData($this->getGet()->getGetVar("id"), $course);
            $this->getSession()->createAlert("Successful modification of the selected Course !", "blue");

            $this->redirect("admin");
        }

        $course = ModelFactory::getModel("Method")->readData($this->getGet()->getGetVar("id"));

        return $this->render("back/courses/updateCourse.twig", ["course" => $course]);
    }

    public function deleteMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Courses")->deleteData($this->getGet()->getGetVar("id"));
        $this->getSession()->createAlert("Course permanently deleted !", "red");

        $this->redirect("admin");

    }
}
