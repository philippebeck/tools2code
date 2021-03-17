<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\Factory\ModelFactory;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class AuthController
 * @package App\Controller
 */
class AuthController extends MainController
{
    /**
     * @var array
     */
    private $user = [];

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        if (!empty($this->getPost()->getPostArray())) {
            $this->user = $this->getPost()->getPostArray();
            $this->checkSecurity();
        }

        return $this->render("front/login.twig");
    }

    private function checkSecurity()
    {
        if (isset($this->user["g-recaptcha-response"]) && !empty($this->user["g-recaptcha-response"])) {

            if ($this->getSecurity()->checkRecaptcha($this->user["g-recaptcha-response"])) {
                $this->checkLogin();
            }
        }

        $this->getSession()->createAlert("Vérifier le reCAPTCHA !", "red");

        $this->redirect("users");
    }

    private function checkLogin()
    {
        $user = ModelFactory::getModel("Users")->readData($this->user["email"], "email");

        if (!password_verify($this->user["pass"], $user["pass"])) {
            $this->getSession()->createAlert("Authentification échouée !", "black");

            $this->redirect("users");
        }

        $this->getSession()->createSession($user);
        $this->getSession()->createAlert("Authentification réussie, bienvenue " . $user["name"] . " !", "violet");

        $this->redirect("admin");
    }

    public function logoutMethod()
    {
        $this->getSession()->destroySession();

        $this->redirect("home");
    }
}
