<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/20/2019
 * Time: 7:16 PM
 */
class Applicant_Insert extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();

    }
    // insert data

    public function insert_user($applicant = NULL) {
        var_dump($applicant);
        die();
    }

    protected function



}