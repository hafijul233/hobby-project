<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/4/2019
 * Time: 3:54 PM
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Bangladesh Council of Scientific and Industrial Research (BCSIR)">
  <meta name="author" content="">
  <title><?= $page_title ?> - Bangladesh Council of Scientific and Industrial Research (BCSIR)</title>
  <link href="<?= base_url('favicon.ico') ?>" type="image/png" rel="icon">
  <!-- Bootstrap core CSS -->
  <link href="<?= base_url('plugins/bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template -->
  <link href="<?= base_url('assets/css/career_recruitment.css') ?>" rel="stylesheet">
  <!-- old Browser Support -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="container">
  <div class="header-top"></div>
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
          <div class="navbar-nav justify-content-around">
            <a class="nav-item nav-link active text-white" href="#">Home <span
                  class="sr-only">(current)</span></a>
            <a class="nav-item nav-link text-white" href="#">Payments</a>
            <a class="nav-item nav-link text-white" href="#">Download Applicant Copy</a>
            <a class="nav-item nav-link text-white" href="#">Admit Card</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
  <div class="jumbotron">
    <div class="row justify-content-center">
      <div class="col-md-10">
        <div class="card">
          <h4 class="card-header text-center bg-secondary text-white">Select a Job Post</h4>
          <div class="card-body">
              <?php if (empty($job_post_list)) { ?>
                <p class="text-center text-dark">No Job Post Available</p>
              <?php } else {
              echo form_open('job_apply/post_list'); ?>
            <span class="text-danger"><?= form_error('job_post') ?></span>
            <div class="form-group pl-4">
                <?php
                //Load Job Posts
                foreach ($job_post_list as $post) { ?>
                  <p class="font-weight-bolder">
                    <input type="radio" class="form-check-input" name="job_post"
                           value="<?= $post['id'] ?>"> <?= $post['postdesignation'] ?>
                  </p>
                <?php } ?>
              <hr>
              <button type="submit" class="btn btn-outline-success float-right">Apply ></button>
                <?= form_close(); ?>
                <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer py-4">
    <p class="text-center">© 2019 Bangladesh Council of Scientific and Industrial Research (BCSIR), All Rights
      Reserved.</p>
  </footer>
</div> <!-- /container -->

<script type="text/javascript" src="<?= base_url('plugins/jquery/jquery-3.4.1.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('plugins/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/js/career_recruitment.js') ?>"></script>
</body>
</html>

