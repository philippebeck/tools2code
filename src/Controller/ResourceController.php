<?php

namespace App\Controller;

use Pam\Controller\MainController;
use Pam\Model\ModelFactory;
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
        $technology = $this->getGet("technology");

        switch ($technology) {
            case 'HTML':
            case 'CSS':
            case 'JS':
            case 'PHP':
            case 'SQL':
            case 'Git':
            case 'Media':
                $allResources   = $this->getArrayElements(ModelFactory::getModel("Resource")->listData($technology), "technology");
                $resources      = $this->getArrayElements($allResources[$technology]);

                return $this->render("front/resource.twig", [
                    "resources"     => $resources,
                    "technology"    => $technology
                ]);

            default:
                $this->redirect('home');
        }
    }

    private function setResourceData()
    {
        $this->resource["link"] = (string) trim($this->getPost("link"));
        $this->resource["link"] = str_replace("http://", "", $this->resource["link"]);
        $this->resource["link"] = str_replace("https://", "", $this->resource["link"]);

        $this->resource["name"]         = (string) trim($this->getPost("name"));
        $this->resource["category"]     = (string) trim($this->getPost("category"));
        $this->resource["description"]  = (string) trim($this->getPost("description"));
    }

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function createMethod()
    {
        if ($this->checkAdmin() !== true) {
            $this->redirect("home");
        }

        if ($this->checkArray($this->getPost())) {
            $this->setResourceData();

            ModelFactory::getModel("Resource")->createData($this->resource);

            $this->setSession([
                "message"   => "Nouvelle ressource créé avec succès !", 
                "type"      => "green"
            ]);

            $this->redirect("admin");
        }

        return $this->render("back/createResource.twig");
    }

    /**
     * @return string
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function updateMethod()
    {
        if ($this->checkAdmin() !== true) {
            $this->redirect("home");
        }

        if ($this->checkArray($this->getPost())) {
            $this->setResourceData();

            ModelFactory::getModel("Resource")->updateData(
                $this->getGet("id"), 
                $this->resource
            );

            $this->setSession([
                "message"   => "Modification de la ressource réussie !", 
                "type"      => "blue"
            ]);

            $this->redirect("admin");
        }

        $this->resource = ModelFactory::getModel("Resource")->readData($this->getGet("id"));

        return $this->render("back/updateResource.twig", ["resource" => $this->resource]);
    }

    public function deleteMethod()
    {
        if ($this->checkAdmin() !== true) {
            $this->redirect("home");
        }

        ModelFactory::getModel("Resource")->deleteData($this->getGet("id"));

        $this->setSession([
            "message"   => "Suppression de la resource effectuée !", 
            "type"      => "red"
        ]);

        $this->redirect("admin");
    }
}
