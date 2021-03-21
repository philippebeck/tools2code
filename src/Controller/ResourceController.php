<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\Factory\ModelFactory;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

/**
 * Class ResourceController
 * @package App\Controller
 */
class ResourceController extends MainController
{
    /**
     * @var array
     */
    private $resource = [];

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function defaultMethod()
    {
        $technology = $this->getGet()->getGetVar("technology");

        switch ($technology) {
            case 'HTML':
            case 'CSS':
            case 'JS':
            case 'PHP':
            case 'SQL':
            case 'Git':
            case 'Media':
                $allResources   = $this->getArray()->getArrayElements(ModelFactory::getModel("Resource")->listData($technology), "technology");
                $resources      = $this->getArray()->getArrayElements($allResources[$technology]);

                return $this->render("front/resource.twig", [
                    "resources"     => $resources,
                    "technology"    => $technology
                ]);

            default:
                $this->redirect('home');
        }
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
            $this->setResourceData();

            ModelFactory::getModel("Resource")->createData($this->resource);
            $this->getSession()->createAlert("Nouvelle ressource créé avec succès !", "green");
        }

        return $this->render("back/resource/createResource.twig");
    }

    private function setResourceData()
    {
        $this->resource = $this->getPost()->getPostArray();

        $this->resource["link"] = (string) trim($this->resource["link"]);
        $this->resource["link"] = str_replace("http://", "", $this->resource["link"]);
        $this->resource["link"] = str_replace("https://", "", $this->resource["link"]);

        $this->resource["name"]         = (string) trim($this->resource["name"]);
        $this->resource["category"]     = (string) trim($this->resource["category"]);
        $this->resource["description"]  = (string) trim($this->resource["description"]);
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
            $this->setResourceData();

            ModelFactory::getModel("Resource")->updateData($this->getGet()->getGetVar("id"), $this->resource);
            $this->getSession()->createAlert("Modification de la ressource réussie !", "blue");

            $this->redirect("admin");
        }

        $this->resource = ModelFactory::getModel("Resource")->readData($this->getGet()->getGetVar("id"));

        return $this->render("back/resource/updateResource.twig", ["resource" => $this->resource]);
    }

    public function deleteMethod()
    {
        if ($this->getSecurity()->checkIsAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Resource")->deleteData($this->getGet()->getGetVar("id"));
        $this->getSession()->createAlert("Suppression de la resource effectuée !", "red");

        $this->redirect("admin");

    }
}
