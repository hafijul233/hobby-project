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
  <link href="<?= base_url('bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template -->
  <link href="<?= base_url('assets/css/career_recruitment.css') ?>" rel="stylesheet">
  <!-- dataTables -->
  <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">
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
    <div class="card">
      <h4 class="card-header text-center">Job Circular Notice Board</h4>
      <div class="card-body">
        <div class="table-responsive">
          <table id="noticeTable" class="table table-striped table-bordered" style="width:100%">
            <thead>
            <tr>
              <th>#</th>
              <th>Notice</th>
              <th>Date</th>
            </tr>
            </thead>
            <tbody>
            <?php
            for ($i = 1; $i < 199; $i++) { ?>
              <tr>
                <td width="20"><?= $i ?></td>
                <td>
                  <a href="#" class="notice-link">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</a>
                </td>
                <td width="100"></td>
              </tr>
            <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <footer class="footer py-4">
    <p class="text-center"> © 2019 Bangladesh Council of Scientific and Industrial Research(BCSIR), All Rights
      Reserved .</p>
  </footer>
</div>
<!-- /container-->

<script type="text/javascript" src="<?= base_url('jquery/jquery-3.4.1.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/js/career_recruitment.js') ?>"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#noticeTable').DataTable();
    });
</script>
</body>
</html>

