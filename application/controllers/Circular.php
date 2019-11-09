<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/4/2019
 * Time: 3:57 PM
 */
class Payment extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->view('welcome_message');
    }

    public function generate_pdf()
    {

    }

}