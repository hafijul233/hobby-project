<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/5/2019
 * Time: 12:37 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<nav class="navbar navbar-expand-lg">
    <!-- Header -->
    <div class="row">
        <div class="col-sm-12 col-md-2">
            <center>
                <img src="<?= base_url('assets/img/govt_logo.png') ?>" class="img-circle img-responsive"
                     width="94">
            </center>
        </div>
        <div class="col-sm-12 col-md-10">
            <span class="text-white d-block font-weight-bold">Government of the People's Republic of Bangladesh</span>
            <h2 class="text-left d-block text-white">Bangladesh Council of Scientific and Industrial Research
                (BCSIR)
            </h2>
        </div>
        <div class="col-12 mt-2">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon text-white">Menu</span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active text-white" href="<?= base_url(); ?>">Home <span
                            class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link text-white" href="<?= base_url('payment'); ?>">Payments</a>
                    <a class="nav-item nav-link text-white" href="<?= base_url('admit_card/download_card'); ?>">Download
                        Applicant Copy</a>
                    <a class="nav-item nav-link text-white" href="<?= base_url('admit_card/view_card'); ?>">Admit
                        Card</a>
                </div>
            </div>
        </div>
    </div>
</nav>

