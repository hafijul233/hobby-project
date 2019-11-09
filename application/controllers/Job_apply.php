<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/4/2019
 * Time: 3:58 PM
 */
class Job_apply extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->database();
    }

    public function index()
    {
        $data = [
            'page_title' => 'Home'
        ];
        $this->load->view('home', $data);
    }

    public function circular()
    {
        $data['page_title'] = 'Circular';

        $this->load->view('job_circular', $data);
    }

    public function post_list()
    {
        $this->load->model('job_apply_model');

        $data['page_title'] = 'Available Post List';

        //get Job List
        $data['job_post_list'] = $this->job_apply_model->get_post_list();

        //form validation rule
        $this->form_validation->set_rules('job_post', 'Job Post', 'required');

        //form validation executive
        if ($this->form_validation->run() == TRUE) {
            $this->session->post_id = $this->input->post('job_post');

            redirect(base_url('job_apply/registration'));
        }

        $this->load->view('post_list', $data);
    }

    public function registration()
    {
        /*
         * array(13) {
         * ["applicant_name"]=> string(9) "FGHFGHGHD"
         * ["father_name"]=> string(9) "FGHFGHFGH"
         * ["mother_name"]=> string(7) "FGHFGFG"
         * ["birth_date"]=> string(10) "2010-02-02"
         * ["place_of_birth"]=> string(7) "GFHGDFG" ["gender"]=> string(1) "1" ["nationality"]=> string(1) "1" ["national_id"]=> string(6) "fghfdg" ["birth_reg_id"]=> string(5) "fghfg" ["passport_id"]=> string(6) "fghfgd" ["religion"]=> string(1) "2" ["maritalStatus"]=> string(1) "1" ["job_apply"]=> string(5) "Apply" }
         */

        $this->load->model('job_apply_model');

        $data['page_title'] = 'Application Form';

        //get post title
        $data['job_title'] = $this->job_apply_model->selected_post_title($this->session->post_id);
        //get registration form predefined data
        $data = array_merge($data, $this->reg_form_meta_data());
/*
        //Form validation Rules
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('father_name', 'Father\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('mother_name', 'Mother\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('birth_date', 'Birth Date', 'trim|required|exact_length[10]|regex_match[/([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/]');
        $this->form_validation->set_rules('place_of_birth', 'Birth Place', 'trim|required|max_length[]');
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'required');
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'required');
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'required');
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'required');
*/
        /*//Form validation Execute
        if ($this->form_validation->run() == TRUE) {
            //$this->session->job_post = $this->input->post('job_post');
            //redirect(base_url('job_apply/registration'));
        }
*/
        $this->load->view('job_registration_form', $data);


    }

    public function reg_form_meta_data()
    {
        //get gender list
        $meta['genders'] = $this->job_apply_model->get_gender_list();
        //get religion list
        $meta['religions'] = $this->job_apply_model->get_religion_list();
        //get marital status list
        $meta['marriages'] = $this->job_apply_model->get_martial_status();
        //get quota list
        $meta['quotas'] = $this->job_apply_model->get_quota_list();
        //get education board list
        $meta['boards'] = $this->job_apply_model->get_board_list();
        //district list
        $meta['districts'] = $this->job_apply_model->get_district_list();
        return $meta;
    }


}