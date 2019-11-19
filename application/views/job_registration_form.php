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

    .card-body {
      background-color: #e9ecef;
    }

    .jumbotron {
      padding: 1rem;
    }

    .form-control {
      border: 1px solid #006699;
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
          <label for="postTitle" class="col-md-3 col-form-label">
            Name of Post
          </label>
          <div class="col-md-9">
            <p class="font-weight-bolder text-dark"><?= strtoupper($job_title) ?></p>
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
                   value="<?= set_value("applicant_name") ?>" name="applicant_name" autofocus>
            <span class="text-danger" id="applicantNameError"><?= form_error("applicant_name") ?></span>
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
            <span class="text-danger" id="fatherNameError"><?= form_error("father_name") ?></span>
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
            <span class="text-danger" id="motherNameError"><?= form_error("mother_name") ?></span>
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
                   value="<?= set_value("birth_date") ?>" name="birth_date" placeholder="yyyy-mm-dd">
            <span class="text-danger" id="birthDateError"><?= form_error("birth_date") ?></span>
          </div>
        </div>
        <!-- birth place -->
        <div class="form-group row">
          <label for="placeOfBirth" class="col-md-3 col-form-label">
            Place of Birth
            <span class="text-danger font-weight-bolder">*</span>
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="placeOfBirth"
                   value="<?= set_value("place_of_birth") ?>" name="place_of_birth">
            <span class="text-danger" id="placeOfBirthError"><?= form_error("place_of_birth") ?></span>
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
                      <input class="form-check-input" type="radio" name="gender" id="<?= $gender['gender'] ?>"
                             value="<?= $gender['id'] ?>" <?= set_radio('gender', $gender['id']); ?> >
                      <label class="form-check-label" for="<?= $gender['gender'] ?>"><?= $gender['gender'] ?></label>
                    </div>
                      <?php
                  }
              }
              ?>

            <span class="text-danger" id="genderError"><?= form_error("gender") ?></span>
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
              <option value="" <?= set_select('nationality', '') ?>>Select Nationality</option>
              <option value="1" <?= set_select('nationality', '1') ?>>Bangladeshi</option>
            </select>
            <span class="text-danger" id="nationalityError"><?= form_error("nationality") ?></span>
          </div>
        </div>
        <p class="text-danger text-center">Any of (National ID/ Birth Register No. / Passport ID) is Compulsory. More
          then One is Acceptable.</p>
        <!-- nation ID -->
        <div class="form-group row">
          <label for="nationalId" class="col-md-3 col-form-label">
            National ID (NID)
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="nationalId"
                   value="<?= set_value("national_id") ?>" name="national_id">
            <span class="text-danger" id="nationalIdError"><?= form_error("national_id") ?></span>
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
            <span class="text-danger" id="birthRegIdError"><?= form_error("birth_reg_id") ?></span>
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
            <span class="text-danger" id="passportIdError"><?= form_error("passport_id") ?></span>
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
            <span class="text-danger" id="religionError"><?= form_error("religion") ?></span>
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
            <span class="text-danger" id="maritalStatusError"><?= form_error("marital_status") ?></span>
          </div>
        </div>
        <!-- qouta -->
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
            <span class="text-danger" id="quotaError"><?= form_error("quota") ?></span>
          </div>
        </div>
        <!-- address present / permant-->
        <div class="form-group row">
          <!-- mailing Address -->
          <div class="col-lg-6">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Mailing/Present Address
              </p>
              <div class="card-body">
                <!-- care of -->
                <div class="form-group row">
                  <label for="presentCareOf" class="col-md-3 col-form-label">
                    Care of
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-9">
                    <input type="text" class="form-control" id="presentCareOf"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("present_care_of") ?>" name="present_care_of">
                    <span class="text-danger" id="presentCareOfError"><?= form_error("present_care_of") ?></span>
                  </div>
                </div>
                <!-- Village/Town/Road/ House/Flat -->
                <div class="form-group row">
                  <label for="presentAddress" class="col-md-3 col-form-label">
                    Village/ Town/ Road/ House/ Flat No.
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-9">
                    <textarea class="form-control" id="presentAddress"
                              oninput="this.value = this.value.toUpperCase()" name="present_address"
                              rows="3"><?= set_value("present_address") ?></textarea>
                    <span class="text-danger" id="presentAddressError"><?= form_error("present_address") ?></span>
                  </div>
                </div>
                <!-- District -->
                <div class="form-group row">
                  <label for="presentDistrict" class="col-md-4 col-form-label">
                    District
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="presentDistrict" name="present_district">
                      <option value="" <?= set_select('present_district', '') ?>>Select District</option>
                        <?php if (!empty($districts)) {
                            foreach ($districts as $district) { ?>
                              <option value="<?= $district['id'] ?>"
                                  <?= set_select('present_district', $district['id']) ?> >
                                  <?= $district['name'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger" id="presentDistrictError"><?= form_error("present_district") ?></span>
                  </div>
                </div>
                <!-- P.S./Upazila -->
                <div class="form-group row">
                  <label for="presentUpazila" class="col-md-4 col-form-label">
                    P.S./ Upazila
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="presentUpazila" name="present_upazila">
                    </select>
                    <span class="text-danger" id="presentUpazilaError"><?= form_error("present_upazila") ?></span>
                  </div>
                </div>
                <!-- post Office -->
                <div class="form-group row">
                  <label for="presentPO" class="col-md-4 col-form-label">
                    Post Office
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <input type="text" class="form-control" id="presentPO"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("present_p_o") ?>" name="present_p_o">
                    <span class="text-danger" id="presentPOError"><?= form_error("present_p_o") ?></span>
                  </div>
                </div>
                <!-- Post office code -->
                <div class="form-group row">
                  <label for="presentPC" class="col-md-4 col-form-label">
                    Post Code
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <input type="number" class="form-control" id="presentPC"
                           value="<?= set_value("present_p_c") ?>" name="present_p_c"
                           min="1000" max="9999">
                    <span class="text-danger" id="presentPCError"><?= form_error("present_p_c") ?></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Permanent Address -->
          <div class="col-lg-6">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Permanent Address <span class="float-right"><input type="checkbox" id="sameAddress">   Same as Present Address. </span>
              </p>
              <div class="card-body">
                <!-- care of -->
                <div class="form-group row">
                  <label for="permanentCareOf" class="col-md-3 col-form-label">
                    Care of
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-9">
                    <input type="text" class="form-control" id="permanentCareOf"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("permanent_care_of") ?>" name="permanent_care_of">
                    <span class="text-danger" id="permanentCareOfError"><?= form_error("permanent_care_of") ?></span>
                  </div>
                </div>
                <!-- Village/Town/Road/ House/Flat -->
                <div class="form-group row">
                  <label for="permanentAddress" class="col-md-3 col-form-label">
                    Village/ Town/ Road/ House/ Flat No.
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-9">
                    <textarea class="form-control" id="permanentAddress"
                              oninput="this.value = this.value.toUpperCase()" name="permanent_address"
                              rows="3"><?= set_value("permanent_address") ?></textarea>
                    <span class="text-danger" id="permanentAddressError"><?= form_error("permanent_address") ?></span>
                  </div>
                </div>
                <!-- District -->
                <div class="form-group row">
                  <label for="permanentDistrict" class="col-md-4 col-form-label">
                    District
                    <span class="text-danger font-weight-bolder">*</span>

                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="permanentDistrict" name="permanent_district">
                      <option value="" <?= set_select('permanent_district', '') ?>>Select District</option>
                        <?php if (!empty($districts)) {
                            foreach ($districts as $district) { ?>
                              <option value="<?= $district['id'] ?>"
                                  <?= set_select('permanent_district', $district['id']) ?> >
                                  <?= $district['name'] ?>
                              </option>
                                <?php
                                echo "\n";
                            }
                        } ?>
                    </select>
                    <span class="text-danger" id="permanentDistrictError"><?= form_error("permanent_district") ?></span>
                  </div>
                </div>
                <!-- P.S./Upazila -->
                <div class="form-group row">
                  <label for="permanentUpazila" class="col-md-4 col-form-label">
                    P.S./ Upazila
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <select class="form-control" id="permanentUpazila" name="permanent_upazila">
                    </select>
                    <span class="text-danger" id="permanentUpazilaError"><?= form_error("permanent_upazila") ?></span>
                  </div>
                </div>
                <!-- post Office -->
                <div class="form-group row">
                  <label for="permanentPO" class="col-md-4 col-form-label">
                    Post Office
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <input type="text" class="form-control" id="permanentPO"
                           oninput="this.value = this.value.toUpperCase()"
                           value="<?= set_value("permanent_p_o") ?>" name="permanent_p_o">
                    <span class="text-danger" id="permanentPO"><?= form_error("permanent_p_o") ?></span>
                  </div>
                </div>
                <!-- Post office code -->
                <div class="form-group row">
                  <label for="permanentPC" class="col-md-4 col-form-label">
                    Post Code
                    <span class="text-danger font-weight-bolder">*</span>
                  </label>
                  <div class="col-md-8">
                    <input type="number" class="form-control" id="permanentPC"
                           value="<?= set_value("permanent_p_c") ?>" name="permanent_p_c"
                           min="1000" max="9999">
                    <span class="text-danger"><?= form_error("permanent_p_c") ?></span>
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
            <div class="simName" id="smName"></div>
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" id="mobileNumber"
                   value="<?= set_value("mobile_number") ?>" name="mobile_number">
            <span class="text-danger" id="mobileNumberError"><?= form_error("mobile_number") ?></span>
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
                   value="<?= set_value("confirm_mobile") ?>" name="confirm_mobile"
                   placeholder="Please Re-type Mobile Number">
            <span class="text-danger" id="confirmMobileError"><?= form_error("confirm_mobile") ?></span>
          </div>
        </div>
        <!-- email address -->
        <div class="form-group row">
          <label for="emailAddress" class="col-md-3 col-form-label">
            Email Address
          </label>
          <div class="col-md-9">
            <input type="email" class="form-control" id="emailAddress"
                   oninput="this.value = this.value.toUpperCase()"
                   value="<?= set_value("email_address") ?>" name="email_address">
            <span class="text-danger" id="emailAddressError"><?= form_error("email_address") ?></span>
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
                  <div class="col-md-7">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="FiveSchoolName" class="col-md-4 col-form-label">
                        Name of School
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <textarea class="form-control" id="FiveSchoolName"
                                  name="five_school_name" rows="2"><?= set_value("five_school_name") ?></textarea>
                        <span class="text-danger" id="FiveSchoolNameError"><?= form_error("five_school_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="FiveBoard" class="col-md-4 col-form-label">
                        Board
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="FiveBoard" name="five_board">
                          <option value="" <?= set_select('five_board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('five_board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger" id="FiveBoardError"><?= form_error("five_board") ?></span>
                      </div>
                    </div>
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="FiveRoll" class="col-md-4 col-form-label">
                        Roll
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="FiveRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("five_roll") ?>" name="five_roll">
                        <span class="text-danger" id="FiveRollError"><?= form_error("five_roll") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="FivePassYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="FivePassYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("five_pass_year") ?>" name="five_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger" id="FivePassYearError"><?= form_error("five_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="FiveResultType" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="FiveResultType" name="five_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="FiveGpaResult"
                               value="<?= set_value("five_gpa_result") ?>" name="five_gpa_result">
                        <span class="text-danger" id="FiveResultTypeError"><?= form_error("five_gpa_result") ?></span>
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
                  <div class="col-md-7">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="EightSchoolName" class="col-md-4 col-form-label">
                        Name of School
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <textarea class="form-control" id="EightSchoolName"
                                  oninput="this.value = this.value.toUpperCase()"
                                  name="five_school_name" rows="2"><?= set_value("eight_school_name") ?></textarea>
                        <span class="text-danger" id="EightResultTypeError"><?= form_error("eight_school_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="EightBoard" class="col-md-4 col-form-label">
                        Board
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="EightBoard" name="eight_board">
                          <option value="" <?= set_select('eight_board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('eight_board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("eight_board") ?></span>
                      </div>
                    </div>
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="EightRoll" class="col-md-4 col-form-label">
                        Roll
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="EightRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("eight_roll") ?>" name="eight_roll">
                        <span class="text-danger"><?= form_error("eight_roll") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="EightPassYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="EightPassYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("eight_pass_year") ?>" name="eight_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger"><?= form_error("eight_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="EightResultType" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="EightResultType" name="eight_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="EightGpaResult"
                               value="<?= set_value("eight_gpa_result") ?>" name="Eight_gpa_result">
                        <span class="text-danger" id="EightResultTypeError"><?= form_error("eight_gpa_result") ?></span>
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
                  <div class="col-md-7">
                    <!-- name of exam -->
                    <div class="form-group row">
                      <label for="sscExamName" class="col-md-4 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="sscExamName" name="ssc_exam_name">
                          <option value="" <?= set_select('ssc_exam_name', '') ?>>Select Exam</option>
                            <?php if (!empty($ssc_exams)) {
                                foreach ($ssc_exams as $ssc_exam) { ?>
                                  <option value="<?= $ssc_exam['id'] ?>"
                                      <?= set_select('ssc_exam_name', $ssc_exam['id']) ?> >
                                      <?= $ssc_exam['exam_name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("ssc_exam_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="sscExamBoard" class="col-md-4 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="sscExamBoard" name="ssc_exam_board">
                          <option value="" <?= set_select('ssc_exam_board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('ssc_exam_board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("ssc_exam_board") ?></span>
                      </div>
                    </div>
                    <!-- Group / Subject -->
                    <div class="form-group row">
                      <label for="sscGroup" class="col-md-4 col-form-label">
                        Group/Subject
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="sscGroup" name="ssc_group">
                          <option value="" <?= set_select('ssc_group', '') ?>>Select Subject/Group</option>
                            <?php if (!empty($subjects)) {
                                foreach ($subjects as $subject) { ?>
                                  <option value="<?= $subject['id'] ?>"
                                      <?= set_select('ssc_group', $subject['id']) ?> >
                                      <?= $subject['name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("ssc_group") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="sscRoll" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="sscRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("ssc_roll") ?>" name="ssc_roll">
                        <span class="text-danger"><?= form_error("ssc_roll") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="sscPassingYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="sscPassingYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("ssc_pass_year") ?>" name="ssc_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger"><?= form_error("ssc_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="sscResultType" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="sscResultType" name="ssc_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="sscGpaResult"
                               value="<?= set_value("ssc_gpa_result") ?>" name="ssc_gpa_result">
                        <span class="text-danger" id="sscResultTypeError"><?= form_error("ssc_gpa_result") ?></span>
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
                  <div class="col-md-7">
                    <!-- name of exam -->
                    <div class="form-group row">
                      <label for="hscExamName" class="col-md-4 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscExamName" name="hsc_exam_name">
                          <option value="" <?= set_select('hsc_exam_name', '') ?>>Select Exam</option>
                            <?php if (!empty($hsc_exams)) {
                                foreach ($hsc_exams as $hsc_exam) { ?>
                                  <option value="<?= $hsc_exam['id'] ?>"
                                      <?= set_select('hsc_exam_name', $hsc_exam['id']) ?> >
                                      <?= $hsc_exam['exam_name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("hsc_exam_name") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="hscExamBoard" class="col-md-4 col-form-label">
                        Board
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscExamBoard" name="hsc_exam_board">
                          <option value="" <?= set_select('hsc_exam_board', '') ?>>Select Board</option>
                            <?php if (!empty($boards)) {
                                foreach ($boards as $board) { ?>
                                  <option value="<?= $board['id'] ?>"
                                      <?= set_select('hsc_exam_board', $board['id']) ?> >
                                      <?= $board['board'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("hsc_exam_board") ?></span>
                      </div>
                    </div>
                    <!-- Group / Subject -->
                    <div class="form-group row">
                      <label for="hscGroup" class="col-md-4 col-form-label">
                        Group/Subject
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscGroup" name="hsc_group">
                          <option value="" <?= set_select('hsc_group', '') ?>>Select Subject/Group</option>
                            <?php if (!empty($subjects)) {
                                foreach ($subjects as $subject) { ?>
                                  <option value="<?= $subject['id'] ?>"
                                      <?= set_select('hsc_group', $subject['id']) ?> >
                                      <?= $subject['name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("hsc_group") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="hscRoll" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="hscRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("hsc_roll") ?>" name="hsc_roll">
                        <span class="text-danger"><?= form_error("hsc_roll") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="hscPassingYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="hscPassingYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("hsc_pass_year") ?>" name="hsc_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger"><?= form_error("hsc_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="hscResultType" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscResultType" name="hsc_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="hscGpaResult"
                               value="<?= set_value("hsc_gpa_result") ?>" name="hsc_gpa_result">
                        <span class="text-danger" id="hscResultTypeError"><?= form_error("hsc_gpa_result") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class graduation education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Graduation or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-7">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="graduateExam" class="col-md-4 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="graduateExam" name="graduate_exam">
                          <option value="" <?= set_select('graduate_exam', '') ?>>Select Exam</option>
                            <?php if (!empty($graduate_exams)) {
                                foreach ($graduate_exams as $graduate_exam) { ?>
                                  <option value="<?= $graduate_exam['id'] ?>"
                                      <?= set_select('graduate_exam', $graduate_exam['id']) ?> >
                                      <?= $graduate_exam['exam_name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("graduate_exam") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="graduateUni" class="col-md-4 col-form-label">
                        University/ Institute
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="graduateUni" name="graduate_university">
                          <option value="" <?= set_select('graduate_university', '') ?>>Select Name</option>
                            <?php if (!empty($univeristys)) {
                                foreach ($univeristys as $univeristy) { ?>
                                  <option value="<?= $univeristy['id'] ?>"
                                      <?= set_select('graduate_university', $univeristy['id']) ?> >
                                      <?= $univeristy['name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("graduate_university") ?></span>
                      </div>
                    </div>
                    <!-- Group / Subject -->
                    <div class="form-group row">
                      <label for="graduateSubject" class="col-md-4 col-form-label">
                        Subject/Degree
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="graduateSubject" name="graduate_subject">
                        </select>
                        <span class="text-danger"><?= form_error("graduate_subject") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="graduateRoll" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="graduateRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("graduate_roll") ?>" name="graduate_roll">
                        <span class="text-danger"><?= form_error("graduate_roll") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="graduateYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="graduateYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("graduate_pass_year") ?>" name="graduate_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger"><?= form_error("graduate_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="graduateResult" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscResultType" name="hsc_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="hscGpaResult"
                               value="<?= set_value("hsc_gpa_result") ?>" name="hsc_gpa_result">
                        <span class="text-danger" id="hscResultTypeError"><?= form_error("hsc_gpa_result") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class masters education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Masters or Equivalent Level
              </p>
              <div class="card-body">
                <div class="row">
                  <div class="col-md-7">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="mastersExam" class="col-md-4 col-form-label">
                        Examination
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="mastersExam" name="masters_exam">
                          <option value="" <?= set_select('masters_exam', '') ?>>Select Exam</option>
                            <?php if (!empty($masters_exams)) {
                                foreach ($masters_exams as $masters_exam) { ?>
                                  <option value="<?= $masters_exam['id'] ?>"
                                      <?= set_select('masters_exam', $masters_exam['id']) ?> >
                                      <?= $masters_exam['exam_name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("masters_exam") ?></span>
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="mastersUni" class="col-md-4 col-form-label">
                        University/ Institute
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="mastersUni" name="masters_university">
                          <option value="" <?= set_select('masters_university', '') ?>>Select Name</option>
                            <?php if (!empty($univeristys)) {
                                foreach ($univeristys as $univeristy) { ?>
                                  <option value="<?= $univeristy['id'] ?>"
                                      <?= set_select('masters_university', $univeristy['id']) ?> >
                                      <?= $univeristy['name'] ?>
                                  </option>
                                    <?php
                                    echo "\n";
                                }
                            } ?>
                        </select>
                        <span class="text-danger"><?= form_error("masters_university") ?></span>
                      </div>
                    </div>
                    <!-- Group / Subject -->
                    <div class="form-group row">
                      <label for="mastersSubject" class="col-md-4 col-form-label">
                        Subject/Degree
                        <span class="text-danger font-weight-bolder">*</span>
                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="mastersSubject" name="masters_subject">
                        </select>
                        <span class="text-danger"><?= form_error("masters_subject") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="mastersRoll" class="col-md-4 col-form-label">
                        Roll
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="mastersRoll"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("masters_roll") ?>" name="masters_roll">
                        <span class="text-danger"><?= form_error("masters_roll") ?></span>
                      </div>
                    </div>
                    <!-- Passing year -->
                    <div class="form-group row">
                      <label for="mastersYear" class="col-md-4 col-form-label">
                        Passing Year
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <input type="number" class="form-control" id="mastersYear"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("masters_pass_year") ?>" name="masters_pass_year"
                               min="1970" max="<?= date('Y') - 1 ?>">
                        <span class="text-danger"><?= form_error("masters_pass_year") ?></span>
                      </div>
                    </div>
                    <!-- result -->
                    <div class="form-group row">
                      <label for="mastersResult" class="col-md-4 col-form-label">
                        Result
                        <span class="text-danger font-weight-bolder">*</span>

                      </label>
                      <div class="col-md-8">
                        <select class="form-control" id="hscResultType" name="hsc_result_type">
                          <option value=""> Select</option>
                          <option value="1">1st Division</option>
                          <option value="2">2nd Division</option>
                          <option value="3">3rd Division</option>
                          <option value="4">GPA(Out of 4)</option>
                          <option value="5">GPA(Out of 5)</option>
                        </select>
                        <input type="text" class="form-control mt-4" id="hscGpaResult"
                               value="<?= set_value("hsc_gpa_result") ?>" name="hsc_gpa_result">
                        <span class="text-danger" id="hscResultTypeError"><?= form_error("hsc_gpa_result") ?></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- class five education-->
        <div class="form-group row">
          <div class="col-md-12">
            <div class="card">
              <p class="card-header bg-secondary text-white font-weight-bold">
                Professional Experience (Current Job Fill Up First)
              </p>
              <div class="card-body sections">
                <div class="row section">
                  <div class="col-md-7">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="designationName" class="col-md-4 col-form-label">
                        Designation/Post Name
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="designationName"
                               oninput="this.value = this.value.toUpperCase()" name="designation_name[]">
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Service Start Date
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control date" id="designationName"
                               oninput="this.value = this.value.toUpperCase()"
                               value="<?= set_value("designation_name") ?>" name="designation_name">
                        <span class="text-danger"><?= form_error("place_of_birth") ?></span>
                      </div>
                    </div>
                    <!-- roll -->
                    <div class="form-group row">
                      <label for="quota" class="col-md-4 col-form-label">
                        Responsibilities
                      </label>
                      <div class="col-md-8">
                                     <textarea class="form-control" id="applicantName"
                                               oninput="this.value = this.value.toUpperCase()"
                                               name="applicant_name"
                                               rows="2"><?= set_value("designation_name") ?></textarea>
                        <span class="text-danger"><?= form_error("applicant_name") ?></span>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">
                    <!-- name of School -->
                    <div class="form-group row">
                      <label for="designationName" class="col-md-4 col-form-label">
                        Designation/Post Name
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control" id="designationName"
                               oninput="this.value = this.value.toUpperCase()" name="designation_name[]">
                      </div>
                    </div>
                    <!-- Board -->
                    <div class="form-group row">
                      <label for="serviceStartDate" class="col-md-4 col-form-label">
                        Service Start Date
                      </label>
                      <div class="col-md-8">
                        <input type="text" class="form-control date-picker" id="serviceStartDate"
                               name="service_start_date[]" placeholder="yyyy-mm-dd" readonly>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="presentWork" class="col-md-7 col-form-label">
                        Currently Working
                      </label>
                      <div class="col-md-5">
                        <!-- Radio Buttons -->
                        <div class="form-check form-check-inline float-right">
                          <input class="form-check-input" type="checkbox" id="presentWork" name="present_work">
                          <label class="form-check-label">Yes. Working</label>
                        </div>
                        <span class="text-danger" id="genderError"><?= form_error("gender") ?></span>
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
<script type="text/javascript" src="<?= base_url('assets/js/form_query.js') ?>"></script>
</body>
</html>

