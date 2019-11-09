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
  <!-- Datepicker -->
  <link href="<?= base_url('plugins/datepicker/css/datepicker.css') ?>" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template -->
  <link href="<?= base_url('assets/css/career_recruitment.css') ?>" rel="stylesheet">
  <!-- old Browser Support -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
    .card {
      border: 2px solid #008000;
      border-radius: 0px;
    }
    .card-header {
      padding: 0.5em 1em;
    }
    .card-header:first-child {
      border-radius: 0px;
    }
    .card-body {  background-color: #e9ecef; }
    .jumbotron {  padding: 1rem; }
    .form-control {
      border: 1px solid #006699;
    }
    .main-form {
      border: 0px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="header-top"></div>
    <?php
    //include Header
    $this->load->view('header_layout');
    ?>
  <div class="jumbotron">
    <div class="card main-form">
      <h4 class="card-header text-center bg-secondary text-white">Application Form</h4>
      <div class="card-body">
          <?= form_open('job_apply/registration'); ?>

        <!-- name of post -->
        <div class="form-group row">
          <label for="job_post_title" class="col-md-3 col-form-label">
            Name of Post

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="job_post_title"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= $job_title ?>" readonly>
          </div>
        </div>
        <!-- applicant name -->
        <div class="form-group row">
          <label for="applicantName" class="col-md-3 col-form-label">
            Applicant Name
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="applicantName"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("applicant_name") ?>" name="applicant_name">
            <span class="text-danger"><?= form_error("applicant_name") ?></span>
          </div>
        </div>
        <!-- father's name -->
        <div class="form-group row">
          <label for="fatherName" class="col-md-3 col-form-label">
            Father's Name
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="fatherName"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("father_name") ?>" name="father_name">
            <span class="text-danger"><?= form_error("father_name") ?></span>
          </div>
        </div>
        <!-- mother's name -->
        <div class="form-group row">
          <label for="motherName" class="col-md-3 col-form-label">
            Mother's Name
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="motherName"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("mother_name") ?>" name="mother_name">
            <span class="text-danger"><?= form_error("mother_name") ?></span>
          </div>
        </div>
        <!-- date of birth -->
        <div class="form-group row">
          <label for="birthDate" class="col-md-3 col-form-label">
            Date of Birth
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-5">
            <input type="text" class="form-control date-picker" id="birthDate"
                   value="<?= set_value("birth_date") ?>" name="birth_date" placeholder="yyyy-mm-dd" readonly>
            <span class="text-danger"><?= form_error("birth_date") ?></span>
          </div>
        </div>
        <!-- birth palce -->
        <div class="form-group row">
          <label for="placeOfBirth" class="col-md-3 col-form-label">
            Place of Birth
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="placeOfBirth"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("place_of_birth") ?>" name="place_of_birth">
            <span class="text-danger"><?= form_error("place_of_birth") ?></span>
          </div>
        </div>
        <!-- gender -->
        <div class="form-group row">
          <label for="gender" class="col-md-3 col-form-label">
            Gender
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <!-- Radio Buttons -->
              <?php
              if (!empty($genders)) {
                  foreach ($genders as $gender) { ?>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender"
                             value="<?= $gender['id'] ?>" <?= set_radio('gender', $gender['id']); ?> >
                      <label class="form-check-label"><?= $gender['gender'] ?></label>
                    </div>
                      <?php
                  }
              }
              ?>

            <span class="text-danger"><?= form_error("applicant_name") ?></span>
          </div>
        </div>
        <!-- nationality -->
        <div class="form-group row">
          <label for="nationality" class="col-md-3 col-form-label">
            Nationality
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-5">
            <select class="form-control" id="nationality" name="nationality">
              <option value="0" <?= set_select('nationality', '0') ?>>Select Nationality</option>
              <option value="1" <?= set_select('nationality', '1') ?>>Bangladeshi</option>
            </select>
            <span class="text-danger"><?= form_error("place_of_birth") ?></span>
          </div>
        </div>
        <!-- nation ID -->
        <div class="form-group row">
          <label for="nationalId" class="col-md-3 col-form-label">
            National ID (NID)

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="nationalId"
                   value="<?= set_value("national_id") ?>" name="national_id">
            <span class="text-danger"><?= form_error("national_id") ?></span>
          </div>
        </div>
        <!-- birth registration -->
        <div class="form-group row">
          <label for="birthRegId" class="col-md-3 col-form-label">
            Birth Registration No:

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="birthRegId"
                   value="<?= set_value("birth_reg_id") ?>" name="birth_reg_id">
            <span class="text-danger"><?= form_error("birth_reg_id") ?></span>
          </div>
        </div>
        <!-- passport ID -->
        <div class="form-group row">
          <label for="passportId" class="col-md-3 col-form-label">
            Passport ID

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="passportId"
                   value="<?= set_value("passport_id") ?>" name="passport_id">
            <span class="text-danger"><?= form_error("passport_id") ?></span>
          </div>
        </div>
        <!-- religion -->
        <div class="form-group row">
          <label for="religion" class="col-md-3 col-form-label">
            Religion

          </label>
          <div class="col-md-5">
            <select class="form-control" id="religion" name="religion">
              <option value="" <?= set_select('religion', '') ?>>Select Religion</option>
                <?php if (!empty($religions)) {
                    foreach ($religions as $religion) { ?>
                      <option value="<?= $religion['id'] ?>"
                          <?= set_select('religion', $religion['id']) ?> >
                          <?= $religion['religion'] ?>
                      </option>
                        <?php
                        echo "\n";
                    }
                } ?>
            </select>
            <span class="text-danger"><?= form_error("place_of_birth") ?></span>
          </div>
        </div>
        <!-- matrial status -->
        <div class="form-group row">
          <label for="maritalStatus" class="col-md-3 col-form-label">
            Marital Status
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-3">
                  <?php
                  if (!empty($marriages)) {
                      foreach ($marriages as $marriage) { ?>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="marital_status"
                                 id="<?= $marriage['marriage'] ?>"
                                 value="<?= $marriage['id'] ?>" <?= set_radio('marital_status', '1'); ?> >
                          <label class="form-check-label"><?= $marriage['marriage'] ?></label>
                        </div>
                          <?php
                      }
                  } ?>
              </div>
              <div class="col-md-9">
                <div class="spouseName">
                  <input type="text" class="form-control" placeholder="Spouse Name"
                         id="spouseName" name="spouse_name" value="<?= set_value('spouse_name') ?>">
                  <span class="text-danger"><?= form_error('spouse_name') ?></span>
                </div>
              </div>
            </div>
            <span class="text-danger"><?= form_error("marital_status") ?></span>
          </div>
        </div>
        <!-- Qoutes -->
        <div class="form-group row">
          <label for="quota" class="col-md-3 col-form-label">
            Quota
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-5">
            <select class="form-control" id="quota" name="quota">
              <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                <?php if (!empty($quotas)) {
                    foreach ($quotas as $quota) { ?>
                      <option value="<?= $quota['id'] ?>"
                          <?= set_select('quota', $quota['id']) ?> >
                          <?= $quota['quota'] ?>
                      </option>
                        <?php
                        echo "\n";
                    }
                } ?>
            </select>
            <span class="text-danger"><?= form_error("place_of_birth") ?></span>
          </div>
        </div>
        <!-- address present / permant-->
        <div class="form-group row">
          <!-- mailing Address -->
          <div class="col-lg-6">
            <div class="card">
              <p class="card-header bg-secondary text-white text-center font-weight-bold">
                Mailing/Present Address
              </p>
              <div class="card-body">
                <!-- care of -->
                <div class="form-group row">
                  <label for="applicantName" class="col-md-3 col-form-label">
                    Care of
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-9">
                    <input type="text" class="form-control" id="applicantName"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("applicant_name") ?>" name="applicant_name">
                    <span class="text-danger"><?= form_error("applicant_name") ?></span>
                  </div>
                </div>
                <!-- Village/Town/Road/ House/Flat -->
                <div class="form-group row">
                  <label for="flatNo" class="col-md-3 col-form-label">
                    Village/Town/Road/ House/Flat
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-9">
                    <textarea class="form-control" id="flatNo"
                              oninput="this.value = this.value.toUpperCase()" name="flat_no"
                              rows="3"><?= set_value("flat_no") ?></textarea>
                    <span class="text-danger"><?= form_error("flat_no") ?></span>
                  </div>
                </div>
                <!-- District -->
                <div class="form-group row">
                  <label for="district" class="col-md-4 col-form-label">
                    District
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="district" name="district">
                      <option value="" <?= set_select('district', '') ?>>Select District</option>
                        <?php if (!empty($districts)) {
                            foreach ($districts as $district) { ?>
                              <option value="<?= $district['id'] ?>"
                                  <?= set_select('district', $district['id']) ?> >
                                  <?= $district['name'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- P.S./Upazila -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    P.S./Upazila
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- post Office -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    Post Office
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- Post office code -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    Post Code
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Permeamnt Address -->
          <div class="col-lg-6">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Mailing/Present Address
              </p>
              <div class="card-body">
                <!-- care of -->
                <div class="form-group row">
                  <label for="applicantName" class="col-md-3 col-form-label">
                    Care of
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-9">
                    <input type="text" class="form-control" id="applicantName"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("applicant_name") ?>" name="applicant_name">
                    <span class="text-danger"><?= form_error("applicant_name") ?></span>
                  </div>
                </div>
                <!-- Village/Town/Road/ House/Flat -->
                <div class="form-group row">
                  <label for="flatNo" class="col-md-3 col-form-label">
                    Village/Town/Road/ House/Flat
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-9">
                    <textarea class="form-control" id="flatNo"
                              oninput="this.value = this.value.toUpperCase()" name="flat_no"
                              rows="3"><?= set_value("flat_no") ?></textarea>
                    <span class="text-danger"><?= form_error("flat_no") ?></span>
                  </div>
                </div>
                <!-- District -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    District
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="district" name="district">
                      <option value="" <?= set_select('district', '') ?>>Select District</option>
                        <?php if (!empty($districts)) {
                            foreach ($districts as $district) { ?>
                              <option value="<?= $district['id'] ?>"
                                  <?= set_select('district', $district['id']) ?> >
                                  <?= $district['name'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- P.S./Upazila -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    P.S./Upazila
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- post Office -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    Post Office
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
                <!-- Post office code -->
                <div class="form-group row">
                  <label for="quota" class="col-md-4 col-form-label">
                    Post Code
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="quota" name="quota">
                      <option value="" <?= set_select('quota', '') ?>>Select Quota</option>
                        <?php if (!empty($quotas)) {
                            foreach ($quotas as $quota) { ?>
                              <option value="<?= $quota['id'] ?>"
                                  <?= set_select('quota', $quota['id']) ?> >
                                  <?= $quota['quota'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- mobile number -->
        <div class="form-group row">
          <label for="mobileNumber" class="col-md-3 col-form-label">
            Mobile Number
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="mobileNumber"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("mobile_number") ?>" name="mobile_number">
            <span class="text-danger"><?= form_error("mobile_number") ?></span>
          </div>
        </div>
        <!-- confirm mobile -->
        <div class="form-group row">
          <label for="confirmMobile" class="col-md-3 col-form-label">
            Confirm Mobile
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="confirmMobile"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("confirm_mobile") ?>" name="confirm_mobile"
                   placeholder="Please Re-type Mobile Number">
            <span class="text-danger"><?= form_error("confirm_mobile") ?></span>
          </div>
        </div>
        <!-- email address -->
        <div class="form-group row">
          <label for="emailAddress" class="col-md-3 col-form-label">
            Email Address
            <span class="text-danger font-weight-bolder">*</span>

          </label>
          <div class="col-md-9">
            <input type="email" class="form-control" id="emailAddress"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("email_address") ?>" name="email_address">
            <span class="text-danger"><?= form_error("email_address") ?></span>
          </div>
        </div>
        <!-- class five education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Class V or PSC or Ebtedayee or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Name of School
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <textarea class="form-control" id="applicantName"
                                  oninput="this.value = this.value.toUpperCase()"
                                  name="applicant_name" rows="2"><?= set_value("applicant_name") ?></textarea>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class eight education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Class VIII or JSC or JDC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Name of School
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <textarea class="form-control" id="applicantName"
                                  oninput="this.value = this.value.toUpperCase()"
                                  name="applicant_name" rows="2"><?= set_value("applicant_name") ?></textarea>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class sss/ten education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                SSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class Hss/eleven education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                HSC or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="applicantName" class="col-md-3 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-3 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-9">
                        <select class="form-control" id="board" name="board">
                          <option value="" <?= set_select('board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name"
                               min="1970" max="<?= date('Y')-1 ?>">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="applicantName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("applicant_name") ?>" name="applicant_name">
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <hr>
        <input type="reset" class="btn btn-outline-danger btn-lg" name="job_apply" value="Reset">
        <input type="submit" class="btn btn-primary float-right btn-lg" name="job_apply" value="Apply">
          <?= form_close(); ?>
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
<script type="text/javascript" src="<?= base_url('plugins/datepicker/js/bootstrap-datepicker.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/js/career_recruitment.js') ?>"></script>
</body>
</html>

