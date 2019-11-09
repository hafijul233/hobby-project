<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/4/2019
 * Time: 7:23 PM
 */
?>
<div class="jumbotron">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <!-- <form class="form" action="./process/fieldname_process.php?action=insert-field" method="POST"> -->
            <div class="card">
                    <h4 class="card-header">Available Posts </h4>
                    <div class="card-body">
                        <?= form_open('job_apply/post_list'); ?>
                        <div class="form-group p-4">
                            <label>Select a Job Post</label>
                            <?php
                            for ($i = 0; $i < 10; $i++) { ?>
                                <p>
                                    <input type="radio" class="form-check-input" name="gg"> Hello
                                </p>
                            <?php }
                            echo form_close(); ?>
                        </div>
                    </div>
                </div>
                <div class="add_field" id="add_field">
                    <div class="form-group row" id="section_header">
                        <label for="form_title" class="col-md-3 col-form-label">Name of the post</label>
                        <label class="col-form-label">:</label>
                        <div class="col-md-7">
                            <label class="col-form-label">Master Form </label> <input type="hidden" id="post_id"
                                                                                      name="post_id" value="1">
                            <input type="hidden" name="action" value="insert-form-value">

                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Applicant's Name<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_applicants_name"
                                   id="persoanl_info_applicants_name" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Father's Name<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_fathers_name" id="persoanl_info_fathers_name"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Mother's Name<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_mothers_name" id="persoanl_info_mothers_name"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Date Of Birth<span
                                    id="required_str">*<span></span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-2">

                            <select class="form-control" id="info_day">
                                <option value="">--Day--</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>

                            <input class="form-control" type="hidden" name="personal_info_date_of_birth" value=""
                                   id="personal_info_date_of_birth" autocomplete="off">

                        </div>
                        <div class="col-md-3">

                            <select class="form-control" id="info_month">
                                <option value="">--Month--</option>
                                <option value="01">01 - January</option>
                                <option value="02">02 - February</option>
                                <option value="03">03 - March</option>
                                <option value="04">04 - April</option>
                                <option value="05">05 - May</option>
                                <option value="06">06 - June</option>
                                <option value="07">07 - July</option>
                                <option value="08">08 - August</option>
                                <option value="09">09 - September</option>
                                <option value="10">10 - October</option>
                                <option value="11">11 - November</option>
                                <option value="12">12 - December</option>
                            </select>
                        </div>
                        <div class="col-md-3">

                            <select class="form-control" id="info_year">
                                <option value="">--Year--</option>
                                <option value="1959">1959</option>
                                <option value="1960">1960</option>
                                <option value="1961">1961</option>
                                <option value="1962">1962</option>
                                <option value="1963">1963</option>
                                <option value="1964">1964</option>
                                <option value="1965">1965</option>
                                <option value="1966">1966</option>
                                <option value="1967">1967</option>
                                <option value="1968">1968</option>
                                <option value="1969">1969</option>
                                <option value="1970">1970</option>
                                <option value="1971">1971</option>
                                <option value="1972">1972</option>
                                <option value="1973">1973</option>
                                <option value="1974">1974</option>
                                <option value="1975">1975</option>
                                <option value="1976">1976</option>
                                <option value="1977">1977</option>
                                <option value="1978">1978</option>
                                <option value="1979">1979</option>
                                <option value="1980">1980</option>
                                <option value="1981">1981</option>
                                <option value="1982">1982</option>
                                <option value="1983">1983</option>
                                <option value="1984">1984</option>
                                <option value="1985">1985</option>
                                <option value="1986">1986</option>
                                <option value="1987">1987</option>
                                <option value="1988">1988</option>
                                <option value="1989">1989</option>
                                <option value="1990">1990</option>
                                <option value="1991">1991</option>
                                <option value="1992">1992</option>
                                <option value="1993">1993</option>
                                <option value="1994">1994</option>
                                <option value="1995">1995</option>
                                <option value="1996">1996</option>
                                <option value="1997">1997</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                                <option value="2019">2019</option>
                            </select>
                        </div>

                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Place of birth<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="personal_info_place_of_birth" id="personal_info_place_of_birth"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Gender<span
                                    id="required_str">*<span></span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <label class="radio-inline">
                                <input type="radio" name="personal_info_gender" id="personal_info_gender"
                                       value="Male">&nbsp;Male
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="personal_info_gender" id="personal_info_gender"
                                       value="Female">&nbsp;Female
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="personal_info_gender" id="personal_info_gender"
                                       value="Others">&nbsp;Others
                            </label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Nationality<span
                                    id="required_str">*<span></span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-5">
                            <select class="form-control" name="persoanl_info_nationality"
                                    id="persoanl_info_nationality">
                                <option value=""> Select</option>
                                <option value="Bangladeshi">Bangladeshi</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">National ID
                        </label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_national_id" id="persoanl_info_national_id"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Birth Registration
                        </label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_birth_registration_"
                                   id="persoanl_info_birth_registration_" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Passport ID
                        </label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="persoanl_info_passport_id" id="persoanl_info_passport_id"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Religion</label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-5">
                            <select class="form-control" name="persoanl_info_religion" id="persoanl_info_religion">
                                <option value=""> Select</option>
                                <option value="Islam">Islam</option>
                                <option value="Hinduism">Hinduism</option>
                                <option value="Christianity">Christianity</option>
                                <option value="Buddhism">Buddhism</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Marital Status<span
                                    id="required_str">*<span></span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <label class="radio-inline">
                                <input type="radio" name="persoanl_info_merital_status"
                                       id="persoanl_info_merital_status" value="Married">&nbsp;Married
                            </label><input type="text" name="spouse_name" id="spouse_name" placeholder="Spouse Name"
                                           onkeypress="return alpha(event,letters)"
                                           style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 0); text-decoration: none; background-color: rgb(255, 255, 255); border: 1px solid rgb(0, 102, 153); font-weight: normal; width: 50%; padding: 4px; border-radius: 4px; height: 30px;">
                            <label class="radio-inline">
                                <input type="radio" name="persoanl_info_merital_status"
                                       id="persoanl_info_merital_status" value="Single">&nbsp;Single
                            </label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Quota<span
                                    id="required_str">*<span></span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-5">
                            <select class="form-control" name="persoanl_info_quota" id="persoanl_info_quota">
                                <option value=""> Select</option>
                                <option value="Freedom Fighter">Freedom Fighter</option>
                                <option value="Child of Freedom Fighter">Child of Freedom Fighter</option>
                                <option value="Grand Child of Freedom Fighter">Grand Child of Freedom Fighter
                                </option>
                                <option value="Non Quota">Non Quota</option>
                                <option value="Orpahn">Orpahn</option>
                                <option value="Physically Handicapped">Physically Handicapped</option>
                                <option value="Ansar-VDP">Ansar-VDP</option>
                                <option value="Ethnic Minority">Ethnic Minority</option>
                            </select>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <div style="border: 1px solid green;">

                                <label class="col-md-12 col-form-label" id="section_header">Mailing/Present
                                    Address </label>

                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">Care Of<span
                                                id="required_str">*<span>
										    </span></span></label>

                                    <div class="col-md-8">
                                        <input type="text" name="present_address_care_of"
                                               id="present_address_care_of" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">Village/Town/Road/
                                        House/Flat<span id="required_str">*<span></span></span></label>

                                    <div class="col-md-8">
                                            <textarea type="text" name="present_address_village_town_road_house_flat"
                                                      id="present_address_village_town_road_house_flat"
                                                      class="form-control"></textarea>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">District<span
                                                id="required_str">*<span></span></span></label>

                                    <div class="col-md-8">
                                        <select class="form-control" name="present_address_district"
                                                id="present_address_district">
                                            <option value="">select</option>
                                            <option value="Bagerhat">Bagerhat</option>
                                            <option value="Bandarban">Bandarban</option>
                                            <option value="Barguna">Barguna</option>
                                            <option value="Barishal">Barishal</option>
                                            <option value="Bhola">Bhola</option>
                                            <option value="Bogra">Bogra</option>
                                            <option value="Brahamanbaria">Brahamanbaria</option>
                                            <option value="Chandpur">Chandpur</option>
                                            <option value="Chapai Nawabganj">Chapai Nawabganj</option>
                                            <option value="Chattogram">Chattogram</option>
                                            <option value="Chuadanga">Chuadanga</option>
                                            <option value="Coxs Bazar">Coxs Bazar</option>
                                            <option value="Cumilla">Cumilla</option>
                                            <option value="Dhaka">Dhaka</option>
                                            <option value="Dinajpur">Dinajpur</option>
                                            <option value="Faridpur">Faridpur</option>
                                            <option value="Feni">Feni</option>
                                            <option value="Gaibanda">Gaibanda</option>
                                            <option value="Gazipur">Gazipur</option>
                                            <option value="Gopalganj">Gopalganj</option>
                                            <option value="Habiganj">Habiganj</option>
                                            <option value="Jaipurhat">Jaipurhat</option>
                                            <option value="Jamalpur">Jamalpur</option>
                                            <option value="Jashore">Jashore</option>
                                            <option value="Jhalokhathi">Jhalokhathi</option>
                                            <option value="Jhenaidah">Jhenaidah</option>
                                            <option value="Khagrachhari">Khagrachhari</option>
                                            <option value="Khulna">Khulna</option>
                                            <option value="Kishorganj">Kishorganj</option>
                                            <option value="Kurigram">Kurigram</option>
                                            <option value="Kushtia">Kushtia</option>
                                            <option value="Lalmonirhat">Lalmonirhat</option>
                                            <option value="Luxmipur">Luxmipur</option>
                                            <option value="Madaripur">Madaripur</option>
                                            <option value="Magura">Magura</option>
                                            <option value="Manikganj">Manikganj</option>
                                            <option value="Meharpur">Meharpur</option>
                                            <option value="Mouluvibazar">Mouluvibazar</option>
                                            <option value="Munshiganj">Munshiganj</option>
                                            <option value="Mymensingh">Mymensingh</option>
                                            <option value="Naogaon">Naogaon</option>
                                            <option value="Narail">Narail</option>
                                            <option value="Narayanganj">Narayanganj</option>
                                            <option value="Narsingdi">Narsingdi</option>
                                            <option value="Natore">Natore</option>
                                            <option value="Netrokona">Netrokona</option>
                                            <option value="Nilphamari">Nilphamari</option>
                                            <option value="Noakhali">Noakhali</option>
                                            <option value="Pabna">Pabna</option>
                                            <option value="Panchagarh">Panchagarh</option>
                                            <option value="Patuakhali">Patuakhali</option>
                                            <option value="Pirojpur">Pirojpur</option>
                                            <option value="Rajbari">Rajbari</option>
                                            <option value="Rajshahi">Rajshahi</option>
                                            <option value="Rangamati">Rangamati</option>
                                            <option value="Rangpur">Rangpur</option>
                                            <option value="Satkhira">Satkhira</option>
                                            <option value="Shariatpur">Shariatpur</option>
                                            <option value="Sherpur">Sherpur</option>
                                            <option value="Sirajganj">Sirajganj</option>
                                            <option value="Sunamganj">Sunamganj</option>
                                            <option value="Sylhet">Sylhet</option>
                                            <option value="Tangail">Tangail</option>
                                            <option value="Thakurgaon">Thakurgaon</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">P.S./Upazila<span
                                                id="required_str">*<span></span></span></label>

                                    <div class="col-md-8">
                                        <select class="form-control" name="present_address_ps_upazila"
                                                id="present_address_ps_upazila">
                                            <option value="">select</option>
                                            <option value="Bholahat">Bholahat</option>
                                            <option value="Gomastapur">Gomastapur</option>
                                            <option value="Nachole">Nachole</option>
                                            <option value="Nawabganj Sadar">Nawabganj Sadar</option>
                                            <option value="Shibganj">Shibganj</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">Post Office<span
                                                id="required_str">*<span>
										    </span></span></label>

                                    <div class="col-md-8">
                                        <input type="text" name="present_address_post_office"
                                               id="present_address_post_office" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="form_title" class="col-md-4 col-form-label">Post Code<span
                                                id="required_str">*<span>
										    </span></span></label>

                                    <div class="col-md-8">
                                        <input type="text" name="present_address_post_code"
                                               id="present_address_post_code" class="form-control">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div style="border: 1px solid green;">

                                <label class="col-md-12 col-form-label" id="section_header">Permanent Address &nbsp;
                                    &nbsp; <input type="checkbox" id="present" name="present" value="present"
                                                  onclick="load_present_address();"> same as present address
                                </label>
                                <div id="permanent_add">

                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">Care of<span
                                                    id="required_str">*<span>
										    </span></span></label>

                                        <div class="col-md-8">
                                            <input type="text" name="permanent_address_care_of"
                                                   id="permanent_address_care_of" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">Village/Town/Road/
                                            House/Flat<span id="required_str">*<span></span></span></label>

                                        <div class="col-md-8">
                                                <textarea type="text"
                                                          name="permanent_address_village_town_road__house_flat"
                                                          id="permanent_address_village_town_road__house_flat"
                                                          class="form-control"></textarea>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">District<span
                                                    id="required_str">*<span></span></span></label>

                                        <div class="col-md-8">
                                            <select class="form-control" name="permanent_address_district"
                                                    id="permanent_address_district">
                                                <option value="">select</option>
                                                <option value="Bagerhat">Bagerhat</option>
                                                <option value="Bandarban">Bandarban</option>
                                                <option value="Barguna">Barguna</option>
                                                <option value="Barishal">Barishal</option>
                                                <option value="Bhola">Bhola</option>
                                                <option value="Bogra">Bogra</option>
                                                <option value="Brahamanbaria">Brahamanbaria</option>
                                                <option value="Chandpur">Chandpur</option>
                                                <option value="Chapai Nawabganj">Chapai Nawabganj</option>
                                                <option value="Chattogram">Chattogram</option>
                                                <option value="Chuadanga">Chuadanga</option>
                                                <option value="Coxs Bazar">Coxs Bazar</option>
                                                <option value="Cumilla">Cumilla</option>
                                                <option value="Dhaka">Dhaka</option>
                                                <option value="Dinajpur">Dinajpur</option>
                                                <option value="Faridpur">Faridpur</option>
                                                <option value="Feni">Feni</option>
                                                <option value="Gaibanda">Gaibanda</option>
                                                <option value="Gazipur">Gazipur</option>
                                                <option value="Gopalganj">Gopalganj</option>
                                                <option value="Habiganj">Habiganj</option>
                                                <option value="Jaipurhat">Jaipurhat</option>
                                                <option value="Jamalpur">Jamalpur</option>
                                                <option value="Jashore">Jashore</option>
                                                <option value="Jhalokhathi">Jhalokhathi</option>
                                                <option value="Jhenaidah">Jhenaidah</option>
                                                <option value="Khagrachhari">Khagrachhari</option>
                                                <option value="Khulna">Khulna</option>
                                                <option value="Kishorganj">Kishorganj</option>
                                                <option value="Kurigram">Kurigram</option>
                                                <option value="Kushtia">Kushtia</option>
                                                <option value="Lalmonirhat">Lalmonirhat</option>
                                                <option value="Luxmipur">Luxmipur</option>
                                                <option value="Madaripur">Madaripur</option>
                                                <option value="Magura">Magura</option>
                                                <option value="Manikganj">Manikganj</option>
                                                <option value="Meharpur">Meharpur</option>
                                                <option value="Mouluvibazar">Mouluvibazar</option>
                                                <option value="Munshiganj">Munshiganj</option>
                                                <option value="Mymensingh">Mymensingh</option>
                                                <option value="Naogaon">Naogaon</option>
                                                <option value="Narail">Narail</option>
                                                <option value="Narayanganj">Narayanganj</option>
                                                <option value="Narsingdi">Narsingdi</option>
                                                <option value="Natore">Natore</option>
                                                <option value="Netrokona">Netrokona</option>
                                                <option value="Nilphamari">Nilphamari</option>
                                                <option value="Noakhali">Noakhali</option>
                                                <option value="Pabna">Pabna</option>
                                                <option value="Panchagarh">Panchagarh</option>
                                                <option value="Patuakhali">Patuakhali</option>
                                                <option value="Pirojpur">Pirojpur</option>
                                                <option value="Rajbari">Rajbari</option>
                                                <option value="Rajshahi">Rajshahi</option>
                                                <option value="Rangamati">Rangamati</option>
                                                <option value="Rangpur">Rangpur</option>
                                                <option value="Satkhira">Satkhira</option>
                                                <option value="Shariatpur">Shariatpur</option>
                                                <option value="Sherpur">Sherpur</option>
                                                <option value="Sirajganj">Sirajganj</option>
                                                <option value="Sunamganj">Sunamganj</option>
                                                <option value="Sylhet">Sylhet</option>
                                                <option value="Tangail">Tangail</option>
                                                <option value="Thakurgaon">Thakurgaon</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">P.S./Upazila<span
                                                    id="required_str">*<span></span></span></label>

                                        <div class="col-md-8">
                                            <select class="form-control" name="permanent_address_ps_upazila"
                                                    id="permanent_address_ps_upazila">
                                                <option value="">select</option>
                                                <option value="Alamdanga">Alamdanga</option>
                                                <option value="Chuadanga Sadar">Chuadanga Sadar</option>
                                                <option value="Damurhuda">Damurhuda</option>
                                                <option value="Jiban Nagar">Jiban Nagar</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">Post Office<span
                                                    id="required_str">*<span>
										    </span></span></label>

                                        <div class="col-md-8">
                                            <input type="text" name="permanent_address_post_office"
                                                   id="permanent_address_post_office" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="form_title" class="col-md-4 col-form-label">Post Code<span
                                                    id="required_str">*<span>
										    </span></span></label>

                                        <div class="col-md-8">
                                            <input type="text" name="permanent_address_post_code"
                                                   id="permanent_address_post_code" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Mobile Number<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="contact_indo_mobile_number" id="contact_indo_mobile_number"
                                   class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Confirm Mobile<span
                                    id="required_str">*<span>
							    </span></span></label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="contact_indo_confirm_mobile" id="contact_indo_confirm_mobile"
                                   class="form-control" placeholder="Please Retype Mobile Number">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="form_title" class="col-md-3 col-form-label">Email
                        </label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-8">
                            <input type="text" name="contact_indo_email" id="contact_indo_email"
                                   class="form-control">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">
                                <label class="col-md-12 col-form-label" id="section_header">Class V or PSC or
                                    Ebtedayee or Equivalent Level </label>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Name of
                                                School<span id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text" name="psc_or_equivalent_level_name_of_school"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="psc_or_equivalent_level_passing_year" id="">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Board</label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="psc_or_equivalent_level_board"
                                                        id="">
                                                    <option value=""> Select</option>
                                                    <option value="Dhaka Board">Dhaka Board</option>
                                                    <option value="Cumilla Board">Cumilla Board</option>
                                                    <option value="Rajshahi Board">Rajshahi Board</option>
                                                    <option value="Jashore Board">Jashore Board</option>
                                                    <option value="Chittagong Board">Chittagong Board</option>
                                                    <option value="Barishal Board">Barishal Board</option>
                                                    <option value="Sylhet Board">Sylhet Board</option>
                                                    <option value="Dinajpur Board">Dinajpur Board</option>
                                                    <option value="Mymensingh Board">Mymensingh Board</option>
                                                    <option value="Madrasah Board">Madrasah Board</option>
                                                    <option value="Technical">Technical</option>
                                                    <option value="Cambridge International - IGCE">Cambridge
                                                        International - IGCE
                                                    </option>
                                                    <option value="Edexcel International">Edexcel International
                                                    </option>
                                                    <option value="Bangladesh Technical Education Board (BTEB)">
                                                        Bangladesh Technical Education Board (BTEB)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text" name="psc_or_equivalent_level_result"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Roll
                                            </label>

                                            <div class="col-md-8">
                                                <input type="text" name="psc_or_equivalent_level_roll"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">
                                <label class="col-md-12 col-form-label" id="section_header">Class VIII or JSC or JDC
                                    or Equivalent Level </label>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Name of School
                                                or Institution<span id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text"
                                                       name="jsc_or_jdc_or_equivalent_level_name_of_school"
                                                       id="jsc_or_jdc_or_equivalent_level_name_of_school"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="jsc_or_jdc_or_equivalent_level_passing_year"
                                                        id="jsc_or_jdc_or_equivalent_level_passing_year">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1999">1999</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Board</label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="jsc_or_jdc_or_equivalent_level_board"
                                                        id="jsc_or_jdc_or_equivalent_level_board">
                                                    <option value=""> Select</option>
                                                    <option value="Dhaka Board">Dhaka Board</option>
                                                    <option value="Chattogram Board">Chattogram Board</option>
                                                    <option value="Rajshahi Board">Rajshahi Board</option>
                                                    <option value="Barishal Board">Barishal Board</option>
                                                    <option value="Jessore Board">Jessore Board</option>
                                                    <option value="Cumilla Board">Cumilla Board</option>
                                                    <option value="Mymenshing Board">Mymenshing Board</option>
                                                    <option value="Rangpur Board">Rangpur Board</option>
                                                    <option value="Madrasah Board">Madrasah Board</option>
                                                    <option value="Technical">Technical</option>
                                                    <option value="Cambridge International - IGCE">Cambridge
                                                        International - IGCE
                                                    </option>
                                                    <option value="Edexcel International">Edexcel International
                                                    </option>
                                                    <option value="Bangladesh Technical Education Board (BTEB)">
                                                        Bangladesh Technical Education Board (BTEB)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                    <option value="Sylhet Board">Sylhet Board</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Roll
                                            </label>

                                            <div class="col-md-8">
                                                <input type="text" name="jsc_or_jdc_or_equivalent_level_roll"
                                                       id="jsc_or_jdc_or_equivalent_level_roll"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text" name="jsc_or_jdc_or_equivalent_level_"
                                                       id="jsc_or_jdc_or_equivalent_level_" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <br>

                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">

                                <label class="col-md-12 col-form-label" id="section_header">SSC or Equivalent
                                    Level </label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Examination<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="ssc_or_equivalent_level_examination"
                                                        id="ssc_or_equivalent_level_examination">
                                                    <option value=""> Select</option>
                                                    <option value="S.S.C">S.S.C</option>
                                                    <option value="Dakhil">Dakhil</option>
                                                    <option value="S.S.C Vocational">S.S.C Vocational</option>
                                                    <option value="O Level/Cambridge">O Level/Cambridge</option>
                                                    <option value="S.S.C Equivalent">S.S.C Equivalent</option>
                                                    <option value="Trade Certificate">Trade Certificate</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Board<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="ssc_or_equivalent_level_board"
                                                        id="ssc_or_equivalent_level_board">
                                                    <option value=""> Select</option>
                                                    <option value="Dhaka">Dhaka</option>
                                                    <option value="Cumilla">Cumilla</option>
                                                    <option value="Rajshahi">Rajshahi</option>
                                                    <option value="Jashore">Jashore</option>
                                                    <option value="Chittagong">Chittagong</option>
                                                    <option value="Barishal">Barishal</option>
                                                    <option value="Sylhet">Sylhet</option>
                                                    <option value="Dinajpur">Dinajpur</option>
                                                    <option value="Madrasah">Madrasah</option>
                                                    <option value="Technical">Technical</option>
                                                    <option value="Cambridge International - IGCE">Cambridge
                                                        International - IGCE
                                                    </option>
                                                    <option value="Edexcel International">Edexcel International
                                                    </option>
                                                    <option value="Bangladesh Technical Education Board (BTEB)">
                                                        Bangladesh Technical Education Board (BTEB)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Roll No<span
                                                        id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text" name="ssc_or_equivalent_level_roll_no"
                                                       id="ssc_or_equivalent_level_roll_no" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="ssc_or_equivalent_level_result"
                                                        id="ssc_or_equivalent_level_result">
                                                    <option value=""> Select</option>
                                                    <option value="1st Division">1st Division</option>
                                                    <option value="2nd Division">2nd Division</option>
                                                    <option value="3rd Division">3rd Division</option>
                                                    <option value="GPA(Out of 4)">GPA(Out of 4)</option>
                                                    <option value="GPA(Out of 5)">GPA(Out of 5)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title"
                                                   class="col-md-4 col-form-label">Group/Subject<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="ssc_or_equivalent_level_group_subject"
                                                        id="ssc_or_equivalent_level_group_subject">
                                                    <option value=""> Select</option>
                                                    <option value="Science">Science</option>
                                                    <option value="Humanities">Humanities</option>
                                                    <option value="Business Studies">Business Studies</option>
                                                    <option value="Agriculture Technology">Agriculture Technology
                                                    </option>
                                                    <option value="Architecture and Interior Design Technology">
                                                        Architecture and Interior Design Technology
                                                    </option>
                                                    <option value="Automobile Technology">Automobile Technology
                                                    </option>
                                                    <option value="Civil Technology">Civil Technology</option>
                                                    <option value="Computer Science &amp; Technology">Computer
                                                        Science &amp; Technology
                                                    </option>
                                                    <option value="Chemical Technology">Chemical Technology</option>
                                                    <option value="Electrical Technology">Electrical Technology
                                                    </option>
                                                    <option value="Data Telecommunication and Network Technology">
                                                        Data Telecommunication and Network Technology
                                                    </option>
                                                    <option value="Electrical and Electronics Technology">Electrical
                                                        and Electronics Technology
                                                    </option>
                                                    <option value="Environmental Technology">Environmental
                                                        Technology
                                                    </option>
                                                    <option value="Instrumentation &amp; Process Control Technology">
                                                        Instrumentation &amp; Process Control Technology
                                                    </option>
                                                    <option value="Mechanical Technology">Mechanical Technology
                                                    </option>
                                                    <option value="Mechatronics Technology">Mechatronics
                                                        Technology
                                                    </option>
                                                    <option value="Power Technology">Power Technology</option>
                                                    <option value="Refregeration &amp; Air Conditioning Technology">
                                                        Refregeration &amp; Air Conditioning Technology
                                                    </option>
                                                    <option value="Telecommunication Technology">Telecommunication
                                                        Technology
                                                    </option>
                                                    <option value="Electronics Technology">Electronics Technology
                                                    </option>
                                                    <option value="Library Science">Library Science</option>
                                                    <option value="Survey">Survey</option>
                                                    <option value="General Mechanics">General Mechanics</option>
                                                    <option value="Firm Machinery">Firm Machinery</option>
                                                    <option value="Textile Technology">Textile Technology</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="ssc_or_equivalent_level_passing_year"
                                                        id="ssc_or_equivalent_level_passing_year">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1999">1999</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">

                                <label class="col-md-12 col-form-label" id="section_header">HSC or Equivalent
                                    Level </label>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Examination<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="hsc_or_equivalent_level_examination"
                                                        id="hsc_or_equivalent_level_examination">
                                                    <option value=""> Select</option>
                                                    <option value="H.S.C">H.S.C</option>
                                                    <option value="Alim">Alim</option>
                                                    <option value="Business Management">Business Management</option>
                                                    <option value="Diploma Engineering">Diploma Engineering</option>
                                                    <option value="A Level/Sr. Cambridge">A Level/Sr. Cambridge
                                                    </option>
                                                    <option value="H.S.C Equivalent">H.S.C Equivalent</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Board<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="hsc_or_equivalent_level_board"
                                                        id="hsc_or_equivalent_level_board">
                                                    <option value=""> Select</option>
                                                    <option value="Dhaka">Dhaka</option>
                                                    <option value="Cumilla">Cumilla</option>
                                                    <option value="Rajshahi">Rajshahi</option>
                                                    <option value="Jashore">Jashore</option>
                                                    <option value="Chittagong">Chittagong</option>
                                                    <option value="Barishal">Barishal</option>
                                                    <option value="Sylhet">Sylhet</option>
                                                    <option value="Dinajpur">Dinajpur</option>
                                                    <option value="Madrasah">Madrasah</option>
                                                    <option value="Technical">Technical</option>
                                                    <option value="Cambridge International - IGCE">Cambridge
                                                        International - IGCE
                                                    </option>
                                                    <option value="Edexcel International">Edexcel International
                                                    </option>
                                                    <option value="Bangladesh Technical Education Board (BTEB)">
                                                        Bangladesh Technical Education Board (BTEB)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Roll No<span
                                                        id="required_str">*<span>
											    </span></span></label>

                                            <div class="col-md-8">
                                                <input type="text" name="hsc_or_equivalent_level_roll_no"
                                                       id="hsc_or_equivalent_level_roll_no" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="hsc_or_equivalent_level_result"
                                                        id="hsc_or_equivalent_level_result">
                                                    <option value=""> Select</option>
                                                    <option value="1st Division ">1st Division</option>
                                                    <option value="2nd Division">2nd Division</option>
                                                    <option value="3rd Division">3rd Division</option>
                                                    <option value="GPA(Out of 4)">GPA(Out of 4)</option>
                                                    <option value="GPA(Out of 5)">GPA(Out of 5)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title"
                                                   class="col-md-4 col-form-label">Group/Subject<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="hsc_or_equivalent_level_group_subject"
                                                        id="hsc_or_equivalent_level_group_subject">
                                                    <option value=""> Select</option>
                                                    <option value="Science">Science</option>
                                                    <option value="Humanities">Humanities</option>
                                                    <option value="Business Studies">Business Studies</option>
                                                    <option value="Agriculture Technology">Agriculture Technology
                                                    </option>
                                                    <option value="Architecture and Interior Design Technology">
                                                        Architecture and Interior Design Technology
                                                    </option>
                                                    <option value="Automobile Technology">Automobile Technology
                                                    </option>
                                                    <option value="Civil Technology">Civil Technology</option>
                                                    <option value="Computer Science &amp; Technology">Computer
                                                        Science &amp; Technology
                                                    </option>
                                                    <option value="Chemical Technology">Chemical Technology</option>
                                                    <option value="Electrical Technology">Electrical Technology
                                                    </option>
                                                    <option value="Data Telecommunication and Network Technology">
                                                        Data Telecommunication and Network Technology
                                                    </option>
                                                    <option value="Electrical and Electronics Technology">Electrical
                                                        and Electronics Technology
                                                    </option>
                                                    <option value="Environmental Technology">Environmental
                                                        Technology
                                                    </option>
                                                    <option value="Instrumentation &amp; Process Control Technology">
                                                        Instrumentation &amp; Process Control Technology
                                                    </option>
                                                    <option value="Mechanical Technology">Mechanical Technology
                                                    </option>
                                                    <option value="Mechatronics Technology">Mechatronics
                                                        Technology
                                                    </option>
                                                    <option value="Power Technology">Power Technology</option>
                                                    <option value="Refregeration &amp; Air Conditioning Technology">
                                                        Refregeration &amp; Air Conditioning Technology
                                                    </option>
                                                    <option value="Telecommunication Technology">Telecommunication
                                                        Technology
                                                    </option>
                                                    <option value="Electronics Technology">Electronics Technology
                                                    </option>
                                                    <option value="Library Science">Library Science</option>
                                                    <option value="Survey">Survey</option>
                                                    <option value="General Mechanics">General Mechanics</option>
                                                    <option value="Firm Machinery">Firm Machinery</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="hsc_or_equivalent_level_passing_year"
                                                        id="hsc_or_equivalent_level_passing_year">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1999">1999</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <br>

                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">
                                <label class="col-md-12 col-form-label" id="section_header">Graduation or Equivalent
                                    Level </label>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Examination<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_examination"
                                                        id="graduation_equivalent_level_examination">
                                                    <option value="">select</option>
                                                    <option value="B.A (Honors)">B.A (Honors)</option>
                                                    <option value="B.A (Pass Course)">B.A (Pass Course)</option>
                                                    <option value="B.Com (Honors)">B.Com (Honors)</option>
                                                    <option value="B.Com (Pass Course)">B.Com (Pass Course)</option>
                                                    <option value="B.Ed (Honors)">B.Ed (Honors)</option>
                                                    <option value="B.S.S (Honors)">B.S.S (Honors)</option>
                                                    <option value="B.S.S (Pass Course)">B.S.S (Pass Course)</option>
                                                    <option value="B.Sc (Agricultural Science)">B.Sc (Agricultural
                                                        Science)
                                                    </option>
                                                    <option value="B.Sc (Engineering/Architecture)">B.Sc
                                                        (Engineering/Architecture)
                                                    </option>
                                                    <option value="B.Sc (Honors)">B.Sc (Honors)</option>
                                                    <option value="B.Sc (Pass Course)">B.Sc (Pass Course)</option>
                                                    <option value="B.Tech">B.Tech</option>
                                                    <option value="BBA">BBA</option>
                                                    <option value="BBS">BBS</option>
                                                    <option value="BBS (Pass Course)">BBS (Pass Course)</option>
                                                    <option value="Fazil">Fazil</option>
                                                    <option value="L.L.B (Pass Course)">L.L.B (Pass Course)</option>
                                                    <option value="LL.B. (Honours)">LL.B. (Honours)</option>
                                                    <option value="M.B.B.S/ B.D.S">M.B.B.S/ B.D.S</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title"
                                                   class="col-md-4 col-form-label">Subject/Degree<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_subject_degree"
                                                        id="graduation_equivalent_level_subject_degree">
                                                    <option value="">select</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">University/Institute<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_university_institute"
                                                        id="graduation_equivalent_level_university_institute">
                                                    <option value=""> Select</option>
                                                    <option value="Bangabandhu Sheikh Mujib Medical University">
                                                        Bangabandhu Sheikh Mujib Medical University
                                                    </option>
                                                    <option value="Bangabandhu Sheikh Mujibur Rahman Agricultural University">
                                                        Bangabandhu Sheikh Mujibur Rahman Agricultural University
                                                    </option>
                                                    <option value="Bangladesh Agricultural University,Mymensingh">
                                                        Bangladesh Agricultural University,Mymensingh
                                                    </option>
                                                    <option value="Bangladesh Open University">Bangladesh Open
                                                        University
                                                    </option>
                                                    <option value="Bangladesh University of Engineering &amp; Technology">
                                                        Bangladesh University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Bangladesh University of Professionals">
                                                        Bangladesh University of Professionals
                                                    </option>
                                                    <option value="Chittagong University of Engineering &amp; Technology">
                                                        Chittagong University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Chittagong Veterinary and Animal Sciences University">
                                                        Chittagong Veterinary and Animal Sciences University
                                                    </option>
                                                    <option value="Comilla University">Comilla University</option>
                                                    <option value="Dhaka University">Dhaka University</option>
                                                    <option value="Dhaka University of Engineering &amp; Technology">
                                                        Dhaka University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Hajee Mohammad Danesh Science &amp; Technology University">
                                                        Hajee Mohammad Danesh Science &amp; Technology University
                                                    </option>
                                                    <option value="Islamic University, Kushtia ">Islamic University,
                                                        Kushtia
                                                    </option>
                                                    <option value="Jagannath University">Jagannath University
                                                    </option>
                                                    <option value="Jahangirnagar University">Jahangirnagar
                                                        University
                                                    </option>
                                                    <option value="Jatiya Kabi Kazi Nazrul Islam University">Jatiya
                                                        Kabi Kazi Nazrul Islam University
                                                    </option>
                                                    <option value="Jessore Science &amp; Technology University">
                                                        Jessore Science &amp; Technology University
                                                    </option>
                                                    <option value="Khulna University">Khulna University</option>
                                                    <option value="Khulna University of Engineering and Technology">
                                                        Khulna University of Engineering and Technology
                                                    </option>
                                                    <option value="Mawlana Bhashani Science &amp; Technology University">
                                                        Mawlana Bhashani Science &amp; Technology University
                                                    </option>
                                                    <option value="National University">National University</option>
                                                    <option value="Noakhali Science &amp; Technology University">
                                                        Noakhali Science &amp; Technology University
                                                    </option>
                                                    <option value="Pabna University of Science and Technology">Pabna
                                                        University of Science and Technology
                                                    </option>
                                                    <option value="Patuakhali Science And Technology University">
                                                        Patuakhali Science And Technology University
                                                    </option>
                                                    <option value="Rajshahi University">Rajshahi University</option>
                                                    <option value="Rajshahi University of Engineering &amp; Technology">
                                                        Rajshahi University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Rangpur University">Rangpur University</option>
                                                    <option value="Shahjalal University of Science &amp; Technology">
                                                        Shahjalal University of Science &amp; Technology
                                                    </option>
                                                    <option value="Sher-e-Bangla Agricultural University">
                                                        Sher-e-Bangla Agricultural University
                                                    </option>
                                                    <option value="Sylhet Agricultural University">Sylhet
                                                        Agricultural University
                                                    </option>
                                                    <option value="University of Chittagong">University of
                                                        Chittagong
                                                    </option>
                                                    <option value="Ahsanullah University of Science and Technology">
                                                        Ahsanullah University of Science and Technology
                                                    </option>
                                                    <option value="America Bangladesh University">America Bangladesh
                                                        University
                                                    </option>
                                                    <option value="American International University Bangladesh">
                                                        American International University Bangladesh
                                                    </option>
                                                    <option value="ASA University Bangladesh">ASA University
                                                        Bangladesh
                                                    </option>
                                                    <option value="Asian University of Bangladesh">Asian University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="Atish Dipankar University of Science &amp; Technology">
                                                        Atish Dipankar University of Science &amp; Technology
                                                    </option>
                                                    <option value="Bangladesh Islami University">Bangladesh Islami
                                                        University
                                                    </option>
                                                    <option value="Bangladesh University">Bangladesh University
                                                    </option>
                                                    <option value="Bangladesh University of Business &amp; Technology (BUBT)">
                                                        Bangladesh University of Business &amp; Technology (BUBT)
                                                    </option>
                                                    <option value="BGC Trust University Bangladesh, Chittagong">BGC
                                                        Trust University Bangladesh, Chittagong
                                                    </option>
                                                    <option value="BRAC University">BRAC University</option>
                                                    <option value="Central Women&#39;s University">Central Women's
                                                        University
                                                    </option>
                                                    <option value="City University">City University</option>
                                                    <option value="Daffodil International University">Daffodil
                                                        International University
                                                    </option>
                                                    <option value="Darul Ihsan University">Darul Ihsan University
                                                    </option>
                                                    <option value="Dhaka International University">Dhaka
                                                        International University
                                                    </option>
                                                    <option value="East Delta University , Chittagong">East Delta
                                                        University , Chittagong
                                                    </option>
                                                    <option value="East West University">East West University
                                                    </option>
                                                    <option value="Eastern University">Eastern University</option>
                                                    <option value="Gono Bishwabidyalay">Gono Bishwabidyalay</option>
                                                    <option value="Green University of Bangladesh">Green University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="IBAIS University">IBAIS University</option>
                                                    <option value="Independent University, Bangladesh">Independent
                                                        University, Bangladesh
                                                    </option>
                                                    <option value="International Islamic University, Chittagong">
                                                        International Islamic University, Chittagong
                                                    </option>
                                                    <option value="International University of Business Agriculture &amp; Technology">
                                                        International University of Business Agriculture &amp;
                                                        Technology
                                                    </option>
                                                    <option value="Leading University, Sylhet">Leading University,
                                                        Sylhet
                                                    </option>
                                                    <option value="Manarat International University">Manarat
                                                        International University
                                                    </option>
                                                    <option value="Metropolitan University, Sylhet">Metropolitan
                                                        University, Sylhet
                                                    </option>
                                                    <option value="North South University">North South University
                                                    </option>
                                                    <option value="Northern University Bangladesh">Northern
                                                        University Bangladesh
                                                    </option>
                                                    <option value="Premier University, Chittagong">Premier
                                                        University, Chittagong
                                                    </option>
                                                    <option value="Presidency University">Presidency University
                                                    </option>
                                                    <option value="Prime University">Prime University</option>
                                                    <option value="Primeasia University">Primeasia University
                                                    </option>
                                                    <option value="Queens University">Queens University</option>
                                                    <option value="Royal University of Dhaka">Royal University of
                                                        Dhaka
                                                    </option>
                                                    <option value="Shanto Mariam University of Creative Technology">
                                                        Shanto Mariam University of Creative Technology
                                                    </option>
                                                    <option value="Southeast University">Southeast University
                                                    </option>
                                                    <option value="Southern University of Bangladesh , Chittagong">
                                                        Southern University of Bangladesh , Chittagong
                                                    </option>
                                                    <option value="Stamford University, Bangladesh">Stamford
                                                        University, Bangladesh
                                                    </option>
                                                    <option value="State University Of Bangladesh">State University
                                                        Of Bangladesh
                                                    </option>
                                                    <option value="Sylhet International University, Sylhet">Sylhet
                                                        International University, Sylhet
                                                    </option>
                                                    <option value="The Millenium University">The Millenium
                                                        University
                                                    </option>
                                                    <option value="The Peoples University of Bangladesh">The Peoples
                                                        University of Bangladesh
                                                    </option>
                                                    <option value="The University of Asia Pacific">The University of
                                                        Asia Pacific
                                                    </option>
                                                    <option value="United International University">United
                                                        International University
                                                    </option>
                                                    <option value="University of Development Alternative">University
                                                        of Development Alternative
                                                    </option>
                                                    <option value="University of Information Technology &amp; Sciences">
                                                        University of Information Technology &amp; Sciences
                                                    </option>
                                                    <option value="University of Liberal Arts Bangladesh">University
                                                        of Liberal Arts Bangladesh
                                                    </option>
                                                    <option value="University of Science &amp; Technology, Chittagong">
                                                        University of Science &amp; Technology, Chittagong
                                                    </option>
                                                    <option value="University of South Asia">University of South
                                                        Asia
                                                    </option>
                                                    <option value="Uttara University">Uttara University</option>
                                                    <option value="Victoria University of Bangladesh">Victoria
                                                        University of Bangladesh
                                                    </option>
                                                    <option value="World University of Bangladesh">World University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="Asian University for Women">Asian University for
                                                        Women
                                                    </option>
                                                    <option value="Islamic University of Technology">Islamic
                                                        University of Technology
                                                    </option>
                                                    <option value="South Asian University">South Asian University
                                                    </option>
                                                    <option value="Dhaka Medical College">Dhaka Medical College
                                                    </option>
                                                    <option value="Sir Salimullah Medical College">Sir Salimullah
                                                        Medical College
                                                    </option>
                                                    <option value="Mymensingh Medical College">Mymensingh Medical
                                                        College
                                                    </option>
                                                    <option value="Chittagong Medical College">Chittagong Medical
                                                        College
                                                    </option>
                                                    <option value="Rajshahi Medical College">Rajshahi Medical
                                                        College
                                                    </option>
                                                    <option value="MAG Osmani Medical College">MAG Osmani Medical
                                                        College
                                                    </option>
                                                    <option value="Sher-E-Bangla Medical College">Sher-E-Bangla
                                                        Medical College
                                                    </option>
                                                    <option value="Rangpur Medical College">Rangpur Medical
                                                        College
                                                    </option>
                                                    <option value="Comilla Medical College">Comilla Medical
                                                        College
                                                    </option>
                                                    <option value="Khulna Medical College">Khulna Medical College
                                                    </option>
                                                    <option value="Shaheed Ziaur Rahman Medical College">Shaheed
                                                        Ziaur Rahman Medical College
                                                    </option>
                                                    <option value="Dinajpur Medical College">Dinajpur Medical
                                                        College
                                                    </option>
                                                    <option value="Faridpur Medical College">Faridpur Medical
                                                        College
                                                    </option>
                                                    <option value="Shaheed Suhrawardy Medical College">Shaheed
                                                        Suhrawardy Medical College
                                                    </option>
                                                    <option value="Pabna Medical College">Pabna Medical College
                                                    </option>
                                                    <option value="Noakhali Medical College">Noakhali Medical
                                                        College
                                                    </option>
                                                    <option value="Cox`s Bazar Medical College">Cox`s Bazar Medical
                                                        College
                                                    </option>
                                                    <option value="Jessore Medical College">Jessore Medical
                                                        College
                                                    </option>
                                                    <option value="Shaheed Nazrul Islam Medical College">Shaheed
                                                        Nazrul Islam Medical College
                                                    </option>
                                                    <option value="Kushtia Medical College">Kushtia Medical
                                                        College
                                                    </option>
                                                    <option value="Satkhira Medical College">Satkhira Medical
                                                        College
                                                    </option>
                                                    <option value="Sheikh Sayera Khatun Medical College, Gopalganj">
                                                        Sheikh Sayera Khatun Medical College, Gopalganj
                                                    </option>
                                                    <option value="Feni Medical College,Feni">Feni Medical
                                                        College,Feni
                                                    </option>
                                                    <option value="Gono Bishwabidyalay, Savar, Dhaka">Gono
                                                        Bishwabidyalay, Savar, Dhaka
                                                    </option>
                                                    <option value="Ad-din Womens Medical College, Dhaka">Ad-din
                                                        Womens Medical College, Dhaka
                                                    </option>
                                                    <option value="Anwer Khan Modern Medical College, Dhaka">Anwer
                                                        Khan Modern Medical College, Dhaka
                                                    </option>
                                                    <option value="Bangladesh Medical College">Bangladesh Medical
                                                        College
                                                    </option>
                                                    <option value="Jalalabad Rageb-Rabeya Medical College,Sylhet">
                                                        Jalalabad Rageb-Rabeya Medical College,Sylhet
                                                    </option>
                                                    <option value="BGC Trust Medical College, Chittagong">BGC Trust
                                                        Medical College, Chittagong
                                                    </option>
                                                    <option value="Central Medical College, Comilla">Central Medical
                                                        College, Comilla
                                                    </option>
                                                    <option value="Chottagram Ma-O-Shishu Hospital Medical College">
                                                        Chottagram Ma-O-Shishu Hospital Medical College
                                                    </option>
                                                    <option value="Community Based Medical College (cbmc), Mymensingh">
                                                        Community Based Medical College (cbmc), Mymensingh
                                                    </option>
                                                    <option value="Community Medical College, Dhaka">Community
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="Delta Medical College, Dhaka">Delta Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="Dhaka National Medical College">Dhaka National
                                                        Medical College
                                                    </option>
                                                    <option value="Durra Samad Rahman Red Crescent Women�s Medical College, Sylhet">
                                                        Durra Samad Rahman Red Crescent Women�s Medical College,
                                                        Sylhet
                                                    </option>
                                                    <option value="Eastern Medical College, Comilla">Eastern Medical
                                                        College, Comilla
                                                    </option>
                                                    <option value="Enam Medical College, Savar, Dhaka">Enam Medical
                                                        College, Savar, Dhaka
                                                    </option>
                                                    <option value="Sylhet Women`s Medical College, Sylhet">Sylhet
                                                        Women`s Medical College, Sylhet
                                                    </option>
                                                    <option value="Green Life Medical College,Dhaka">Green Life
                                                        Medical College,Dhaka
                                                    </option>
                                                    <option value="Holy Family Red Crescent Medical College, Dhaka">
                                                        Holy Family Red Crescent Medical College, Dhaka
                                                    </option>
                                                    <option value="Ibrahim Medical College, Dhaka">Ibrahim Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="Ibn Sina Medical College, Dhaka">Ibn Sina Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="International Medical College, Gazipur">
                                                        International Medical College, Gazipur
                                                    </option>
                                                    <option value="Islami Bank Medical College, Rajshahi">Islami
                                                        Bank Medical College, Rajshahi
                                                    </option>
                                                    <option value="Jahurul Islam Medical College, Kishoregonj">
                                                        Jahurul Islam Medical College, Kishoregonj
                                                    </option>
                                                    <option value="Jalalabad Ragib-Rabeya Medical College Sylhet">
                                                        Jalalabad Ragib-Rabeya Medical College Sylhet
                                                    </option>
                                                    <option value="Khawja Yunus Ali Medical College, Sirajganj">
                                                        Khawja Yunus Ali Medical College, Sirajganj
                                                    </option>
                                                    <option value="Kumudini Medical College, Tangail">Kumudini
                                                        Medical College, Tangail
                                                    </option>
                                                    <option value="Labaid Medical College[6] Dhanmondi, Dhaka">
                                                        Labaid Medical College[6] Dhanmondi, Dhaka
                                                    </option>
                                                    <option value="Maulana Bhasani Medical College">Maulana Bhasani
                                                        Medical College
                                                    </option>
                                                    <option value="Medical College for Women and Hospital, Dhaka">
                                                        Medical College for Women and Hospital, Dhaka
                                                    </option>
                                                    <option value="Nightingale Medical College, Dhaka">Nightingale
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="North Bengal Medical College, Sirajganj">North
                                                        Bengal Medical College, Sirajganj
                                                    </option>
                                                    <option value="North East Medical College, Sylhet">North East
                                                        Medical College, Sylhet
                                                    </option>
                                                    <option value="Northern International Medical College, Dhaka">
                                                        Northern International Medical College, Dhaka
                                                    </option>
                                                    <option value="Northern Private Medical College, Rangpur">
                                                        Northern Private Medical College, Rangpur
                                                    </option>
                                                    <option value="Popular Medical College &amp; Hospital, Dhaka">
                                                        Popular Medical College &amp; Hospital, Dhaka
                                                    </option>
                                                    <option value="Prime Medical College, Rangpur">Prime Medical
                                                        College, Rangpur
                                                    </option>
                                                    <option value="Rangpur Community Hospital Medical College">
                                                        Rangpur Community Hospital Medical College
                                                    </option>
                                                    <option value="Sahabuddin Medical College and Hospital">
                                                        Sahabuddin Medical College and Hospital
                                                    </option>
                                                    <option value="Samaj Vittik Medical College, Mirzanagar, Savar">
                                                        Samaj Vittik Medical College, Mirzanagar, Savar
                                                    </option>
                                                    <option value="Shahabuddin Medical College, Dhaka">Shahabuddin
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="Z. H. Sikder Women`s Medical College">Z. H.
                                                        Sikder Women`s Medical College
                                                    </option>
                                                    <option value="Southern Medical College, Chittagong">Southern
                                                        Medical College, Chittagong
                                                    </option>
                                                    <option value="Tairunnessa Memorial Medical College, Gazipur">
                                                        Tairunnessa Memorial Medical College, Gazipur
                                                    </option>
                                                    <option value="TMSS Medical College,Bogra">TMSS Medical
                                                        College,Bogra
                                                    </option>
                                                    <option value="University Of Science and Technology Chittagong. IAMS">
                                                        University Of Science and Technology Chittagong. IAMS
                                                    </option>
                                                    <option value="Uttara Adhunik Medical College,Dhaka">Uttara
                                                        Adhunik Medical College,Dhaka
                                                    </option>
                                                    <option value="Military Institute of Science and Technology (MIST)">
                                                        Military Institute of Science and Technology (MIST)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                    <option value="Sonargaon University">Sonargaon University
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_result"
                                                        id="graduation_equivalent_level_result">
                                                    <option value=""> Select</option>
                                                    <option value="1st Class">1st Class</option>
                                                    <option value="2nd Class">2nd Class</option>
                                                    <option value="3rd Class">3rd Class</option>
                                                    <option value="CGPA(Out of 4)">CGPA(Out of 4)</option>
                                                    <option value="CGPA(Out of 5)">CGPA(Out of 5)</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_passing_year"
                                                        id="graduation_equivalent_level_passing_year">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1884">1884</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1889">1889</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1999">1999</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Course
                                                Duration<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="graduation_equivalent_level_course_duration"
                                                        id="graduation_equivalent_level_course_duration">
                                                    <option value=""> Select</option>
                                                    <option value="4 years">4 years</option>
                                                    <option value="5 years">5 years</option>
                                                    <option value="3 years">3 years</option>
                                                    <option value="2 years">2 years</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div style="border: 1px solid green;">
                                <label class="col-md-12 col-form-label" id="section_header">Masters or Equivalent
                                    Level </label>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Examination<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="masters_equivalent_level_examination"
                                                        id="masters_equivalent_level_examination">
                                                    <option value="">select</option>
                                                    <option value="Kamil">Kamil</option>
                                                    <option value="LL.M">LL.M</option>
                                                    <option value="M.A">M.A</option>
                                                    <option value="M.Com">M.Com</option>
                                                    <option value="M.Ed">M.Ed</option>
                                                    <option value="M.S.S">M.S.S</option>
                                                    <option value="M.Sc">M.Sc</option>
                                                    <option value="M.Sc (Agricultural Science)">M.Sc (Agricultural
                                                        Science)
                                                    </option>
                                                    <option value="M.Sc (Engineering/Architecture)">M.Sc
                                                        (Engineering/Architecture)
                                                    </option>
                                                    <option value="MBA">MBA</option>
                                                    <option value="MBS">MBS</option>
                                                    <option value="ME/Mtech">ME/Mtech</option>
                                                    <option value="Mmed">Mmed</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">University/Institute<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="masters_equivalent_level_university_institute"
                                                        id="masters_equivalent_level_university_institute">
                                                    <option value=""> Select</option>
                                                    <option value="Bangabandhu Sheikh Mujib Medical University">
                                                        Bangabandhu Sheikh Mujib Medical University
                                                    </option>
                                                    <option value="Bangabandhu Sheikh Mujibur Rahman Agricultural University">
                                                        Bangabandhu Sheikh Mujibur Rahman Agricultural University
                                                    </option>
                                                    <option value="Bangladesh Agricultural University,Mymensingh">
                                                        Bangladesh Agricultural University,Mymensingh
                                                    </option>
                                                    <option value="Bangladesh Open University">Bangladesh Open
                                                        University
                                                    </option>
                                                    <option value="Bangladesh University of Engineering &amp; Technology">
                                                        Bangladesh University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Bangladesh University of Professionals">
                                                        Bangladesh University of Professionals
                                                    </option>
                                                    <option value="Chittagong University of Engineering &amp; Technology">
                                                        Chittagong University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Chittagong Veterinary and Animal Sciences University">
                                                        Chittagong Veterinary and Animal Sciences University
                                                    </option>
                                                    <option value="Comilla University">Comilla University</option>
                                                    <option value="Dhaka University">Dhaka University</option>
                                                    <option value="Dhaka University of Engineering &amp; Technology">
                                                        Dhaka University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Hajee Mohammad Danesh Science &amp; Technology University">
                                                        Hajee Mohammad Danesh Science &amp; Technology University
                                                    </option>
                                                    <option value="Islamic University, Kushtia ">Islamic University,
                                                        Kushtia
                                                    </option>
                                                    <option value="Jagannath University">Jagannath University
                                                    </option>
                                                    <option value="Jahangirnagar University">Jahangirnagar
                                                        University
                                                    </option>
                                                    <option value="Jatiya Kabi Kazi Nazrul Islam University">Jatiya
                                                        Kabi Kazi Nazrul Islam University
                                                    </option>
                                                    <option value="Jessore Science &amp; Technology University">
                                                        Jessore Science &amp; Technology University
                                                    </option>
                                                    <option value="Khulna University">Khulna University</option>
                                                    <option value="Khulna University of Engineering and Technology">
                                                        Khulna University of Engineering and Technology
                                                    </option>
                                                    <option value="Mawlana Bhashani Science &amp; Technology University">
                                                        Mawlana Bhashani Science &amp; Technology University
                                                    </option>
                                                    <option value="National University">National University</option>
                                                    <option value="Noakhali Science &amp; Technology University">
                                                        Noakhali Science &amp; Technology University
                                                    </option>
                                                    <option value="Pabna University of Science and Technology">Pabna
                                                        University of Science and Technology
                                                    </option>
                                                    <option value="Patuakhali Science And Technology University">
                                                        Patuakhali Science And Technology University
                                                    </option>
                                                    <option value="Rajshahi University">Rajshahi University</option>
                                                    <option value="Rajshahi University of Engineering &amp; Technology">
                                                        Rajshahi University of Engineering &amp; Technology
                                                    </option>
                                                    <option value="Rangpur University">Rangpur University</option>
                                                    <option value="Shahjalal University of Science &amp; Technology">
                                                        Shahjalal University of Science &amp; Technology
                                                    </option>
                                                    <option value="Sher-e-Bangla Agricultural University">
                                                        Sher-e-Bangla Agricultural University
                                                    </option>
                                                    <option value="Sylhet Agricultural University">Sylhet
                                                        Agricultural University
                                                    </option>
                                                    <option value="University of Chittagong">University of
                                                        Chittagong
                                                    </option>
                                                    <option value="Ahsanullah University of Science and Technology">
                                                        Ahsanullah University of Science and Technology
                                                    </option>
                                                    <option value="America Bangladesh University">America Bangladesh
                                                        University
                                                    </option>
                                                    <option value="American International University Bangladesh">
                                                        American International University Bangladesh
                                                    </option>
                                                    <option value="ASA University Bangladesh">ASA University
                                                        Bangladesh
                                                    </option>
                                                    <option value="Asian University of Bangladesh">Asian University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="Atish Dipankar University of Science &amp; Technology">
                                                        Atish Dipankar University of Science &amp; Technology
                                                    </option>
                                                    <option value="Bangladesh Islami University">Bangladesh Islami
                                                        University
                                                    </option>
                                                    <option value="Bangladesh University">Bangladesh University
                                                    </option>
                                                    <option value="Bangladesh University of Business &amp; Technology (BUBT)">
                                                        Bangladesh University of Business &amp; Technology (BUBT)
                                                    </option>
                                                    <option value="BGC Trust University Bangladesh, Chittagong">BGC
                                                        Trust University Bangladesh, Chittagong
                                                    </option>
                                                    <option value="BRAC University">BRAC University</option>
                                                    <option value="Central Women&#39;s University">Central Women's
                                                        University
                                                    </option>
                                                    <option value="City University">City University</option>
                                                    <option value="Daffodil International University">Daffodil
                                                        International University
                                                    </option>
                                                    <option value="Darul Ihsan University">Darul Ihsan University
                                                    </option>
                                                    <option value="Dhaka International University">Dhaka
                                                        International University
                                                    </option>
                                                    <option value="East Delta University , Chittagong">East Delta
                                                        University , Chittagong
                                                    </option>
                                                    <option value="East West University">East West University
                                                    </option>
                                                    <option value="Eastern University">Eastern University</option>
                                                    <option value="Gono Bishwabidyalay">Gono Bishwabidyalay</option>
                                                    <option value="Green University of Bangladesh">Green University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="IBAIS University">IBAIS University</option>
                                                    <option value="Independent University, Bangladesh">Independent
                                                        University, Bangladesh
                                                    </option>
                                                    <option value="International Islamic University, Chittagong">
                                                        International Islamic University, Chittagong
                                                    </option>
                                                    <option value="International University of Business Agriculture &amp; Technology">
                                                        International University of Business Agriculture &amp;
                                                        Technology
                                                    </option>
                                                    <option value="Leading University, Sylhet">Leading University,
                                                        Sylhet
                                                    </option>
                                                    <option value="Manarat International University">Manarat
                                                        International University
                                                    </option>
                                                    <option value="Metropolitan University, Sylhet">Metropolitan
                                                        University, Sylhet
                                                    </option>
                                                    <option value="North South University">North South University
                                                    </option>
                                                    <option value="Northern University Bangladesh">Northern
                                                        University Bangladesh
                                                    </option>
                                                    <option value="Premier University, Chittagong">Premier
                                                        University, Chittagong
                                                    </option>
                                                    <option value="Presidency University">Presidency University
                                                    </option>
                                                    <option value="Prime University">Prime University</option>
                                                    <option value="Primeasia University">Primeasia University
                                                    </option>
                                                    <option value="Queens University">Queens University</option>
                                                    <option value="Royal University of Dhaka">Royal University of
                                                        Dhaka
                                                    </option>
                                                    <option value="Shanto Mariam University of Creative Technology">
                                                        Shanto Mariam University of Creative Technology
                                                    </option>
                                                    <option value="Southeast University">Southeast University
                                                    </option>
                                                    <option value="Southern University of Bangladesh , Chittagong">
                                                        Southern University of Bangladesh , Chittagong
                                                    </option>
                                                    <option value="Stamford University, Bangladesh">Stamford
                                                        University, Bangladesh
                                                    </option>
                                                    <option value="State University Of Bangladesh">State University
                                                        Of Bangladesh
                                                    </option>
                                                    <option value="Sylhet International University, Sylhet">Sylhet
                                                        International University, Sylhet
                                                    </option>
                                                    <option value="The Millenium University">The Millenium
                                                        University
                                                    </option>
                                                    <option value="The Peoples University of Bangladesh">The Peoples
                                                        University of Bangladesh
                                                    </option>
                                                    <option value="The University of Asia Pacific">The University of
                                                        Asia Pacific
                                                    </option>
                                                    <option value="United International University">United
                                                        International University
                                                    </option>
                                                    <option value="University of Development Alternative">University
                                                        of Development Alternative
                                                    </option>
                                                    <option value="University of Information Technology &amp; Sciences">
                                                        University of Information Technology &amp; Sciences
                                                    </option>
                                                    <option value="University of Liberal Arts Bangladesh">University
                                                        of Liberal Arts Bangladesh
                                                    </option>
                                                    <option value="University of Science &amp; Technology, Chittagong">
                                                        University of Science &amp; Technology, Chittagong
                                                    </option>
                                                    <option value="University of South Asia">University of South
                                                        Asia
                                                    </option>
                                                    <option value="Uttara University">Uttara University</option>
                                                    <option value="Victoria University of Bangladesh">Victoria
                                                        University of Bangladesh
                                                    </option>
                                                    <option value="World University of Bangladesh">World University
                                                        of Bangladesh
                                                    </option>
                                                    <option value="Asian University for Women">Asian University for
                                                        Women
                                                    </option>
                                                    <option value="Islamic University of Technology">Islamic
                                                        University of Technology
                                                    </option>
                                                    <option value="South Asian University">South Asian University
                                                    </option>
                                                    <option value="Dhaka Medical College">Dhaka Medical College
                                                    </option>
                                                    <option value="Sir Salimullah Medical College">Sir Salimullah
                                                        Medical College
                                                    </option>
                                                    <option value="Mymensingh Medical College">Mymensingh Medical
                                                        College
                                                    </option>
                                                    <option value="Chittagong Medical College">Chittagong Medical
                                                        College
                                                    </option>
                                                    <option value="Rajshahi Medical College">Rajshahi Medical
                                                        College
                                                    </option>
                                                    <option value="MAG Osmani Medical College">MAG Osmani Medical
                                                        College
                                                    </option>
                                                    <option value="Sher-E-Bangla Medical College">Sher-E-Bangla
                                                        Medical College
                                                    </option>
                                                    <option value="Rangpur Medical College">Rangpur Medical
                                                        College
                                                    </option>
                                                    <option value="Comilla Medical College">Comilla Medical
                                                        College
                                                    </option>
                                                    <option value="Khulna Medical College">Khulna Medical College
                                                    </option>
                                                    <option value="Shaheed Ziaur Rahman Medical College">Shaheed
                                                        Ziaur Rahman Medical College
                                                    </option>
                                                    <option value="Dinajpur Medical College">Dinajpur Medical
                                                        College
                                                    </option>
                                                    <option value="Faridpur Medical College">Faridpur Medical
                                                        College
                                                    </option>
                                                    <option value="Shaheed Suhrawardy Medical College">Shaheed
                                                        Suhrawardy Medical College
                                                    </option>
                                                    <option value="Pabna Medical College">Pabna Medical College
                                                    </option>
                                                    <option value="Noakhali Medical College">Noakhali Medical
                                                        College
                                                    </option>
                                                    <option value="Cox&#39;s Bazar Medical College">Cox's Bazar
                                                        Medical College
                                                    </option>
                                                    <option value="Jessore Medical College">Jessore Medical
                                                        College
                                                    </option>
                                                    <option value="Shaheed Nazrul Islam Medical College">Shaheed
                                                        Nazrul Islam Medical College
                                                    </option>
                                                    <option value="Kushtia Medical College">Kushtia Medical
                                                        College
                                                    </option>
                                                    <option value="Satkhira Medical College">Satkhira Medical
                                                        College
                                                    </option>
                                                    <option value="Sheikh Sayera Khatun Medical College, Gopalganj">
                                                        Sheikh Sayera Khatun Medical College, Gopalganj
                                                    </option>
                                                    <option value="Feni Medical College,Feni">Feni Medical
                                                        College,Feni
                                                    </option>
                                                    <option value="Gono Bishwabidyalay, Savar, Dhaka">Gono
                                                        Bishwabidyalay, Savar, Dhaka
                                                    </option>
                                                    <option value="Ad-din Womens Medical College, Dhaka">Ad-din
                                                        Womens Medical College, Dhaka
                                                    </option>
                                                    <option value="Anwer Khan Modern Medical College, Dhaka">Anwer
                                                        Khan Modern Medical College, Dhaka
                                                    </option>
                                                    <option value="Bangladesh Medical College">Bangladesh Medical
                                                        College
                                                    </option>
                                                    <option value="Jalalabad Rageb-Rabeya Medical College,Sylhet">
                                                        Jalalabad Rageb-Rabeya Medical College,Sylhet
                                                    </option>
                                                    <option value="BGC Trust Medical College, Chittagong">BGC Trust
                                                        Medical College, Chittagong
                                                    </option>
                                                    <option value="Central Medical College, Comilla">Central Medical
                                                        College, Comilla
                                                    </option>
                                                    <option value="Chottagram Ma-O-Shishu Hospital Medical College">
                                                        Chottagram Ma-O-Shishu Hospital Medical College
                                                    </option>
                                                    <option value="Community Based Medical College (cbmc), Mymensingh">
                                                        Community Based Medical College (cbmc), Mymensingh
                                                    </option>
                                                    <option value="Community Medical College, Dhaka">Community
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="Delta Medical College, Dhaka">Delta Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="Dhaka National Medical College">Dhaka National
                                                        Medical College
                                                    </option>
                                                    <option value="Durra Samad Rahman Red Crescent Women�s Medical College, Sylhet">
                                                        Durra Samad Rahman Red Crescent Women�s Medical College,
                                                        Sylhet
                                                    </option>
                                                    <option value="Eastern Medical College, Comilla">Eastern Medical
                                                        College, Comilla
                                                    </option>
                                                    <option value="Enam Medical College, Savar, Dhaka">Enam Medical
                                                        College, Savar, Dhaka
                                                    </option>
                                                    <option value="Sylhet Women`s Medical College, Sylhet">Sylhet
                                                        Women`s Medical College, Sylhet
                                                    </option>
                                                    <option value="Green Life Medical College,Dhaka">Green Life
                                                        Medical College,Dhaka
                                                    </option>
                                                    <option value="Holy Family Red Crescent Medical College, Dhaka">
                                                        Holy Family Red Crescent Medical College, Dhaka
                                                    </option>
                                                    <option value="Ibrahim Medical College, Dhaka">Ibrahim Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="Ibn Sina Medical College, Dhaka">Ibn Sina Medical
                                                        College, Dhaka
                                                    </option>
                                                    <option value="International Medical College, Gazipur">
                                                        International Medical College, Gazipur
                                                    </option>
                                                    <option value="Islami Bank Medical College, Rajshahi">Islami
                                                        Bank Medical College, Rajshahi
                                                    </option>
                                                    <option value="Jahurul Islam Medical College, Kishoregonj">
                                                        Jahurul Islam Medical College, Kishoregonj
                                                    </option>
                                                    <option value="Jalalabad Ragib-Rabeya Medical College Sylhet">
                                                        Jalalabad Ragib-Rabeya Medical College Sylhet
                                                    </option>
                                                    <option value="Khawja Yunus Ali Medical College, Sirajganj">
                                                        Khawja Yunus Ali Medical College, Sirajganj
                                                    </option>
                                                    <option value="Kumudini Medical College, Tangail">Kumudini
                                                        Medical College, Tangail
                                                    </option>
                                                    <option value="Labaid Medical College[6] Dhanmondi, Dhaka">
                                                        Labaid Medical College[6] Dhanmondi, Dhaka
                                                    </option>
                                                    <option value="Maulana Bhasani Medical College">Maulana Bhasani
                                                        Medical College
                                                    </option>
                                                    <option value="Medical College for Women and Hospital, Dhaka">
                                                        Medical College for Women and Hospital, Dhaka
                                                    </option>
                                                    <option value="Nightingale Medical College, Dhaka">Nightingale
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="North Bengal Medical College, Sirajganj">North
                                                        Bengal Medical College, Sirajganj
                                                    </option>
                                                    <option value="North East Medical College, Sylhet">North East
                                                        Medical College, Sylhet
                                                    </option>
                                                    <option value="Northern International Medical College, Dhaka">
                                                        Northern International Medical College, Dhaka
                                                    </option>
                                                    <option value="Northern Private Medical College, Rangpur">
                                                        Northern Private Medical College, Rangpur
                                                    </option>
                                                    <option value="Popular Medical College &amp; Hospital, Dhaka">
                                                        Popular Medical College &amp; Hospital, Dhaka
                                                    </option>
                                                    <option value="Prime Medical College, Rangpur">Prime Medical
                                                        College, Rangpur
                                                    </option>
                                                    <option value="Rangpur Community Hospital Medical College">
                                                        Rangpur Community Hospital Medical College
                                                    </option>
                                                    <option value="Sahabuddin Medical College and Hospital">
                                                        Sahabuddin Medical College and Hospital
                                                    </option>
                                                    <option value="Samaj Vittik Medical College, Mirzanagar, Savar">
                                                        Samaj Vittik Medical College, Mirzanagar, Savar
                                                    </option>
                                                    <option value="Shahabuddin Medical College, Dhaka">Shahabuddin
                                                        Medical College, Dhaka
                                                    </option>
                                                    <option value="Z. H. Sikder Women`s Medical College">Z. H.
                                                        Sikder Women`s Medical College
                                                    </option>
                                                    <option value="Southern Medical College, Chittagong">Southern
                                                        Medical College, Chittagong
                                                    </option>
                                                    <option value="Tairunnessa Memorial Medical College, Gazipur">
                                                        Tairunnessa Memorial Medical College, Gazipur
                                                    </option>
                                                    <option value="TMSS Medical College,Bogra">TMSS Medical
                                                        College,Bogra
                                                    </option>
                                                    <option value="University Of Science and Technology Chittagong. IAMS">
                                                        University Of Science and Technology Chittagong. IAMS
                                                    </option>
                                                    <option value="Uttara Adhunik Medical College,Dhaka">Uttara
                                                        Adhunik Medical College,Dhaka
                                                    </option>
                                                    <option value="Military Institute of Science and Technology (MIST)">
                                                        Military Institute of Science and Technology (MIST)
                                                    </option>
                                                    <option value="Others">Others</option>
                                                    <option value="Sonargaon University">Sonargaon University
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Passing
                                                Year<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="masters_equivalent_level_passing_year"
                                                        id="masters_equivalent_level_passing_year">
                                                    <option value=""> Select</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1999">1999</option>
                                                    <option value="2000">2000</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title"
                                                   class="col-md-4 col-form-label">Subject/Degree<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="masters_equivalent_level_subject_degree"
                                                        id="masters_equivalent_level_subject_degree">
                                                    <option value="">select</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Result<span
                                                        id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control" name="masters_equivalent_level_result"
                                                        id="masters_equivalent_level_result">
                                                    <option value=""> Select</option>
                                                    <option value="1st Class">1st Class</option>
                                                    <option value="2nd Class">2nd Class</option>
                                                    <option value="3rd Class">3rd Class</option>
                                                    <option value="CGPA(Out of 4)">CGPA(Out of 4)</option>
                                                    <option value="CGPA(Out of 5)">CGPA(Out of 5)</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">Course
                                                Duration<span id="required_str">*<span></span></span></label>

                                            <div class="col-md-8">
                                                <select class="form-control"
                                                        name="masters_equivalent_level_course_duration"
                                                        id="masters_equivalent_level_course_duration">
                                                    <option value=""> Select</option>
                                                    <option value="2 years">2 years</option>
                                                    <option value="1 year">1 year</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div id="pro_exp">
                        <div id="pro_exp_ele_app">
                            <div class="row" id="pro_exp_ele">
                                <div class="col-md-12">
                                    <div style="border: 1px solid green;">
                                        <label class="col-md-12 col-form-label" id="section_header">Professional
                                            Experience (Current Job Fill Up First) </label>
                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label for="form_title" class="col-md-4 col-form-label">Designation/Post
                                                        Name
                                                    </label>

                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               name="professional_experience__designation_post_name[]"
                                                               id="professional_experience__designation_post_name"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label for="form_title" class="col-md-4 col-form-label">Organization
                                                        Name
                                                    </label>

                                                    <div class="col-md-8">
                                                        <input type="text"
                                                               name="professional_experience__organization_name[]"
                                                               id="professional_experience__organization_name"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label for="form_title" class="col-md-4 col-form-label">Service
                                                        Start Date</label>

                                                    <div class="col-md-8">
                                                        <input class="form-control mydate" type="text"
                                                               name="professional_experience__service_start_date[]"
                                                               value=""
                                                               id="professional_experience__service_start_date"
                                                               placeholder="yyyy-mm-dd" autocomplete="off"
                                                               data-lang="en" data-format="YYYY-MM-DD"
                                                               readonly="readonly">

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label for="form_title" class="col-md-4 col-form-label">Service
                                                        End Date</label>

                                                    <div class="col-md-8">
                                                        <input class="form-control mydate" type="text"
                                                               name="professional_experience__service_end_date[]"
                                                               value=""
                                                               id="professional_experience__service_end_date"
                                                               placeholder="yyyy-mm-dd" autocomplete="off"
                                                               data-lang="en" data-format="YYYY-MM-DD"
                                                               readonly="readonly">

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label for="form_title" class="col-md-4 col-form-label">Responsibilities</label>

                                                    <div class="col-md-8">
                                                            <textarea type="text"
                                                                      name="professional_experience__responsibilities[]"
                                                                      id="professional_experience__responsibilities"
                                                                      class="form-control"></textarea>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-md-4"></label>
                                                    <div class="col-md-8">
                                                        <input type="checkbox" name="till_now[]" id="till_now"
                                                               value="yes"> <label> &nbsp; Till Now</label>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div id="row_id3">
                            <div class="row" id="pro_exp_ele">
                                <div class="col-md-12">
                                    <div style="border: 1px solid green;"><label class="col-md-12 col-form-label"
                                                                                 id="section_header">Professional
                                            Experince </label>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row"><label for="form_title"
                                                                                   class="col-md-4 col-form-label">Designation/Post
                                                        Name</label>
                                                    <div class="col-md-8"><input type="text"
                                                                                 name="professional_experience__designation_post_name[]"
                                                                                 id="professional_experience__designation_post_name"
                                                                                 class="form-control"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row"><label for="form_title"
                                                                                   class="col-md-4 col-form-label">Organization
                                                        Name</label>
                                                    <div class="col-md-8"><input type="text"
                                                                                 name="professional_experience__organization_name[]"
                                                                                 id="professional_experience__organization_name"
                                                                                 class="form-control"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row"><label for="form_title"
                                                                                   class="col-md-4 col-form-label">Service
                                                        Start Date</label>
                                                    <div class="col-md-8"><input class="form-control mydate"
                                                                                 type="text"
                                                                                 data-format="YYYY-MM-DD"
                                                                                 name="professional_experience__service_start_date[]"
                                                                                 value=""
                                                                                 id="professional_experience__service_start_date"
                                                                                 autocomplete="off"
                                                                                 readonly="readonly"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row"><label for="form_title"
                                                                                   class="col-md-4 col-form-label">Service
                                                        End Date</label>
                                                    <div class="col-md-8"><input class="form-control mydate"
                                                                                 data-format="YYYY-MM-DD"
                                                                                 type="text"
                                                                                 name="professional_experience__service_end_date[]"
                                                                                 value=""
                                                                                 id="professional_experience__service_end_date"
                                                                                 autocomplete="off"
                                                                                 readonly="readonly"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row"><label for="form_title"
                                                                                   class="col-md-4 col-form-label">Responsibilities</label>
                                                    <div class="col-md-8"><textarea type="text"
                                                                                    name="professional_experience__responsibilities[]"
                                                                                    id="professional_experience__responsibilities"
                                                                                    class="form-control"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top:5px;">
                                <div class="col-md-10"></div>
                                <div class="col-md-2">
                                    <button id="3" class="remove_btn" type="button">Remove</button>
                                </div>
                            </div>
                            <br></div>
                    </div>


                    <div class="row" style="margin-top:5px;">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <button id="add_more" type="button">Add More Job Description!</button>
                        </div>
                    </div>
                    <br>

                    <div class="row">
                        <div class="col-md-12">
                            <div>
                                <label class="col-md-12 col-form-label" id="section_header">Required
                                    Experience</label>

                                <div class="col-md-12">
                                </div>


                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div>
                                <label class="col-md-12 col-form-label" id="section_header">Required Skills</label>


                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label for="form_title" class="col-md-4 col-form-label">testing required
                                                skill name test yes or non
                                            </label>

                                            <div class="col-md-8">
                                                <input type="text"
                                                       name="required_skill_testing_required_skill_name_test_yes_or_non"
                                                       id="required_skill_testing_required_skill_name_test_yes_or_non"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>


                    <br>


                    <br>


                    <div class="form-group row">
                        <label for="form_title" class="col-md-4 col-form-label">Departmental Candidate
                            Status</label>
                        <label class="col-form-labe">:</label>
                        <div class="col-md-6">
                            <select class="form-control" name="candidate_departmental_candidate_status"
                                    id="candidate_departmental_candidate_status">
                                <option value=""> Select</option>
                                <option value="Govt. Employee">Govt. Employee</option>
                                <option value="Semi Govt. Employee">Semi Govt. Employee</option>
                                <option value="Autonomous">Autonomous</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div>


                    <div class="form-group row" onselectstart="return false;">
                        <label class="col-md-4 col-form-label">Validation Code</label>
                        <label>:</label>
                        <div class="col-md-3">
                            <input type="hidden" name="" id="cap_code" value="395349">
                            <h5 style="color:#008000;"><em>395349</em></h5>

                        </div>
                        <div class="col-md-3 col-sm-4">
                            <input class="form-control" id="inter_code" name="" placeholder="Enter your code">
                        </div>
                    </div>

                </div>
                <div style="background: #a2a2a2; padding: 20px;">
                    <div class="form-group row">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <input type="checkbox" value="yes" id="btn_check" onclick="btn_active();"> The above
                            information is correct and I would like to go to the next step.
                        </div>
                        <!-- <label class="col-md-10 checkbox-inline">
                                <input type=" checkbox" name="confirm_status" id="confirm_status" >

                            </label> -->

                    </div>
                    <div class="form-group row">
                        <div class="col-md-5"></div>
                        <div class="col-md-2 ">
                            <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
                            <button type="button" onclick="form_validation()" id="submit_button" disabled="true">
                                Next
                            </button>

                        </div>


                    </div>
                    <br>
                    <br>
                </div>
            </form>
            <!-- </form> -->

            <!-- <table class="table">
                    <tbody>
                        <tr class="table-active">
                            <td class="left">Name of the post</td>
                            <td class="middle">:</td>
                            <td class="right"></td>
                        </tr>
                    </tbody>
                </table> -->
        </div>
    </div>

    <br>
    <br>


    <link rel="stylesheet" type="text/css"
          href="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/jquery.datepick.css">
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/jquery.plugin.js.download"></script>
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/jquery.datepick.js.download"></script>
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/moment.min.js.download"></script>
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/moment-with-locales.min.js.download"></script>
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/ion.calendar.js.download"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            $("#sm-5").addClass('active');
            $(".mydate").ionDatePicker().attr('readonly', 'readonly');

        });

        function download_csv() {
            var post_id = $("#post_id").val();
            window.open('./process/csvdownload_process.php?post_id=' + post_id);

        }


        /*$('#datepicker').datepicker({
         "autoclose": true
         });*/

        $(function () {
            $('#popupDatepicker').datepick({dateFormat: 'yyyy-mm-dd'});
            //$('#inlineDatepicker').datepick({onSelect: showDate});
        });

        $(function () {
            $('.popupDatepicker').datepick({dateFormat: 'yyyy-mm-dd'});
            //$('#inlineDatepicker').datepick({onSelect: showDate});
        });

        function btn_active() {
            if ($("#btn_check").is(':checked')) {
                console.log("test");
                $("#submit_button").attr("disabled", false);
            } else {
                $("#submit_button").attr("disabled", true);
            }
        }
    </script>

    <script>
        $(document).on('focusin', '.popupDatepicker', function () {
            $('.popupDatepicker').datepick({dateFormat: 'yyyy-mm-dd'}).attr('readonly', 'readonly');
        });
    </script>


    <!-- <footer style="background-color:#007bff; height:50px; ">
        <p class="text-center" style="padding-top:10px;">Copyright &copy; 2015 - All Rights Reserved - <b>ENTERTECH</b>.</p>
        </footer>  -->
    <br>
    <br>
    <script type="text/javascript"
            src="./Bangladesh Council of Scientific and Industrial Research (BCSIR)4_files/doLogin.js.download"></script>
    <script>
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
        var dropdown = document.getElementsByClassName("dropbtn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>
    </main>
</div>


<div class="ic__datepicker" id="ic__datepicker-1" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="ic__datepicker" id="ic__datepicker-2" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="ic__datepicker" id="ic__datepicker-3" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="ic__datepicker" id="ic__datepicker-4" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="ic__datepicker" id="ic__datepicker-5" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="ic__datepicker" id="ic__datepicker-6" style="left: -9999px; top: -9999px;">
    <div class="ic__container">
        <div class="ic__header">
            <div class="ic__prev">
                <div></div>
            </div>
            <div class="ic__next">
                <div></div>
            </div>
            <div class="ic__month"><select class="ic__month-select">
                    <option value="0">January</option>
                    <option value="1">February</option>
                    <option value="2">March</option>
                    <option value="3">April</option>
                    <option value="4">May</option>
                    <option value="5">June</option>
                    <option value="6">July</option>
                    <option value="7">August</option>
                    <option value="8" selected="selected">September</option>
                    <option value="9">October</option>
                    <option value="10">November</option>
                    <option value="11">December</option>
                </select></div>
            <div class="ic__year"><select class="ic__year-select">
                    <option value="1939">1939</option>
                    <option value="1940">1940</option>
                    <option value="1941">1941</option>
                    <option value="1942">1942</option>
                    <option value="1943">1943</option>
                    <option value="1944">1944</option>
                    <option value="1945">1945</option>
                    <option value="1946">1946</option>
                    <option value="1947">1947</option>
                    <option value="1948">1948</option>
                    <option value="1949">1949</option>
                    <option value="1950">1950</option>
                    <option value="1951">1951</option>
                    <option value="1952">1952</option>
                    <option value="1953">1953</option>
                    <option value="1954">1954</option>
                    <option value="1955">1955</option>
                    <option value="1956">1956</option>
                    <option value="1957">1957</option>
                    <option value="1958">1958</option>
                    <option value="1959">1959</option>
                    <option value="1960">1960</option>
                    <option value="1961">1961</option>
                    <option value="1962">1962</option>
                    <option value="1963">1963</option>
                    <option value="1964">1964</option>
                    <option value="1965">1965</option>
                    <option value="1966">1966</option>
                    <option value="1967">1967</option>
                    <option value="1968">1968</option>
                    <option value="1969">1969</option>
                    <option value="1970">1970</option>
                    <option value="1971">1971</option>
                    <option value="1972">1972</option>
                    <option value="1973">1973</option>
                    <option value="1974">1974</option>
                    <option value="1975">1975</option>
                    <option value="1976">1976</option>
                    <option value="1977">1977</option>
                    <option value="1978">1978</option>
                    <option value="1979">1979</option>
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1986">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                </select></div>
        </div>
        <table class="ic__week-head">
            <tbody>
            <tr>
                <td>Su</td>
                <td>Mo</td>
                <td>Tu</td>
                <td>We</td>
                <td>Th</td>
                <td>Fr</td>
                <td>Sa</td>
            </tr>
            </tbody>
        </table>
        <table class="ic__days">
            <tbody>
            <tr>
                <td class="ic__day">1</td>
                <td class="ic__day">2</td>
                <td class="ic__day">3</td>
                <td class="ic__day">4</td>
                <td class="ic__day">5</td>
                <td class="ic__day">6</td>
                <td class="ic__day">7</td>
            </tr>
            <tr>
                <td class="ic__day">8</td>
                <td class="ic__day">9</td>
                <td class="ic__day">10</td>
                <td class="ic__day">11</td>
                <td class="ic__day">12</td>
                <td class="ic__day">13</td>
                <td class="ic__day">14</td>
            </tr>
            <tr>
                <td class="ic__day">15</td>
                <td class="ic__day">16</td>
                <td class="ic__day">17</td>
                <td class="ic__day">18</td>
                <td class="ic__day">19</td>
                <td class="ic__day">20</td>
                <td class="ic__day ic__day_state_current">21</td>
            </tr>
            <tr>
                <td class="ic__day">22</td>
                <td class="ic__day">23</td>
                <td class="ic__day">24</td>
                <td class="ic__day">25</td>
                <td class="ic__day">26</td>
                <td class="ic__day">27</td>
                <td class="ic__day">28</td>
            </tr>
            <tr>
                <td class="ic__day">29</td>
                <td class="ic__day">30</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
                <td class="ic__day-empty">&nbsp;</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
</div>
