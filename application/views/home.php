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
    <?php
    //include Header
    $this->load->view('header_layout');
    ?>
  <!-- Page Content -->
  <div class="jumbotron">
    <div class="row justify-content-center">
      <div class="col-md-4">
        <p>
          <a href="<?= base_url('job_apply/circular') ?>" style="text-decoration: none">
            <button class="btn btn-lg btn-success btn-block" style="font-size: 30px">
              Circular
            </button>
          </a>
        </p>
        <p>
          <a href="<?= base_url('job_apply/post_list') ?>" style="text-decoration: none">
            <button class="btn btn-lg btn-success btn-block" style="font-size: 30px">
              Apply Now
            </button>
          </a>
        </p>
        <p>
          <a href="<?= base_url('job_apply/others') ?>" style="text-decoration: none">
            <button class="btn btn-lg btn-success btn-block" style="font-size: 30px">
              Others
            </button>
          </a>
        </p>
      </div>
    </div>
  </div>
  <footer class="footer py-4">
    <p class="text-center">© 2019 Bangladesh Council of Scientific and Industrial Research (BCSIR), All Rights
      Reserved.</p>
  </footer>
</div>
<!-- /container -->
<script type="text/javascript" src="<?= base_url('jquery/jquery-3.4.1.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/js/career_recruitment.js') ?>"></script>
</body>
</html>

