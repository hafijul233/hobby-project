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
        $this->load->model('job_apply_model');
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
        /*array(27) {
        ["applicant_name"]=> string(0) ""
        ["father_name"]=> string(0) ""
        ["mother_name"]=> string(0) ""
        ["birth_date"]=> string(0) ""
        ["place_of_birth"]=> string(0) ""
        ["nationality"]=> string(0) ""
        ["national_id"]=> string(0) ""
        ["birth_reg_id"]=> string(0) ""
        ["passport_id"]=> string(0) "" ["religion"]=> string(0) "" ["spouse_name"]=> string(0) "" ["quota"]=> string(0) "" ["present_care_of"]=> string(0) "" ["present_address"]=> string(0) "" ["present_district"]=> string(0) "" ["present_p_o"]=> string(0) "" ["present_p_c"]=> string(0) "" ["permanent_care_of"]=> string(0) "" ["permanent_address"]=> string(0) "" ["permanent_district"]=> string(0) "" ["permanent_p_o"]=> string(0) "" ["permanent_p_c"]=> string(0) "" ["mobile_number"]=> string(0) "" ["confirm_mobile"]=> string(0) "" ["email_address"]=> string(0) "" ["board"]=> string(0) "" ["job_apply"]=> string(5) "Apply" }
         *
         */

        $data['page_title'] = 'Application Form';
        //get post title
        $data['job_title'] = $this->job_apply_model->selected_post_title($this->session->post_id);
        //get registration form predefined data
        $data = array_merge($data, $this->reg_form_meta_data());

        //Form validation Rules
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('father_name', 'Father\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('mother_name', 'Mother\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('birth_date', 'Birth Date', 'trim|required|exact_length[10]|regex_match[/([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/]');
        $this->form_validation->set_rules('place_of_birth', 'Birth Place', 'trim|required|max_length[255]');
        $this->form_validation->set_rules('nationality', 'Nationality', 'trim|required');
        $this->form_validation->set_rules('national_id', 'National ID', 'trim|integer');
        $this->form_validation->set_rules('birth_reg_id', 'Birth Registration No.', 'trim|integer');
        $this->form_validation->set_rules('passport_id', 'Passport ID', 'required');

        /*//Form validation Execute
        if ($this->form_validation->run() == TRUE) {
            //$this->session->job_post = $this->input->post('job_post');
            //redirect(base_url('job_apply/registration'));
        }
*/
        $this->load->view('job_registration_form', $data);


    }

    protected function reg_form_meta_data()
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
        //ssc exam list
        $meta['ssc_exams'] = $this->job_apply_model->get_ssc_exam_names();
        //hsc exam list
        $meta['hsc_exams'] = $this->job_apply_model->get_hsc_exam_names();
        //graduate exam list
        $meta['graduate_exams'] = $this->job_apply_model->get_graduate_names();
        //masters exam list
        $meta['masters_exams'] = $this->job_apply_model->get_masters_names();
        //hsc/ssc exam subject
        $meta['subjects'] = $this->job_apply_model->get_ssc_hsc_subject();
        //universitry list
        $meta['univeristys'] = $this->job_apply_model->get_university_list();

        return $meta;

    }

    public function ajax_upzila_list()
    {
        if (isset($_POST['district'])) {
            $output = NULL;
            $district_id = $this->input->post('district');
            $upzila_list = $this->job_apply_model->get_upzila_names($district_id);
            if ($upzila_list != NULL) {
                foreach ($upzila_list as $upzila) {
                    $output .= '<option value="' . $upzila['id'] . '">' . $upzila['name'] . '</option>';
                }
            } else {
                $output = '<option value="">No Post Office Found</option>';
            }

            echo $output;
        }
    }

    public function ajax_graduate_subjects()
    {
        if (isset($_POST['graduate'])) {
            $output = NULL;
            $exam_id = $this->input->post('graduate');
            $graduact_list = $this->job_apply_model->get_graduate_sub_names($exam_id);

            if ($graduact_list != NULL) {
                foreach ($graduact_list as $graduate) {
                    $output .= '<option value="' . $graduate['id'] . '">' . $graduate['name'] . '</option>';
                }
            } else {
                $output = '<option value="">No Available Subject Found</option>';
            }

            echo $output;
        }
    }

    public function ajax_masters_subjects()
    {
        if (isset($_POST['masters'])) {
            $output = NULL;
            $exam_id = $this->input->post('masters');
            $masters_list = $this->job_apply_model->get_masters_sub_names($exam_id);

            if ($masters_list != NULL) {
                foreach ($masters_list as $masters) {
                    $output .= '<option value="' . $masters['id'] . '">' . $masters['name'] . '</option>';
                }
            } else {
                $output = '<option value="">No Available Subject Found</option>';
            }

            echo $output;
        }
    }


}