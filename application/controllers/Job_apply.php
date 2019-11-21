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
    }

    public function index()
    {
        $data['page_title'] = 'Home';
        $this->load->view('home', $data);
    }

    public function circular()
    {
        $data['page_title'] = 'Circular';
        $this->load->view('job_circular', $data);
    }

    public function post_list()
    {
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('Applicant_form');

        $data['page_title'] = 'Available Post List';
        //get Job List
        $data['job_post_list'] = $this->Applicant_form->get_post_list();
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
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('Applicant_form');

        $data['page_title'] = 'Application Form';
        //get post title
        $data['job_title'] = $this->Applicant_form->selected_post_title($this->session->post_id);

        //get registration form predefined data
        $data = array_merge($data, $this->reg_form_meta_data());
        //Form validation Rules
        $this->form_validation->set_rules('applicant_name', 'Applicant Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('father_name', 'Father\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('mother_name', 'Mother\'s Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('birth_date', 'Birth Date', 'trim|required|exact_length[10]|regex_match[/^[\d]{4}-[\d]{2}-[\d]{2}$/]');
        $this->form_validation->set_rules('place_of_birth', 'Birth Place', 'trim|required|max_length[255]');
        $this->form_validation->set_rules('gender', 'Gender', 'required|integer');
        $this->form_validation->set_rules('nationality', 'Nationality', 'trim|required|exact_length[1]');
        $this->form_validation->set_rules('national_id', 'National ID', 'trim|integer');
        $this->form_validation->set_rules('birth_reg_id', 'Birth Registration No.', 'trim|integer');
        $this->form_validation->set_rules('passport_id', 'Passport ID', 'trim|alpha_numeric');
        $this->form_validation->set_rules('religion', 'Religion', 'trim|required|integer');
        $this->form_validation->set_rules('marital_status', 'Marital Status', 'trim|required|integer');
        $this->form_validation->set_rules('spouse_name', 'Spouse Name', 'trim|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('quota', 'Quota', 'trim|required|integer');
        $this->form_validation->set_rules('present_care_of', 'Care Of', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('present_address', 'Village/Flat ...', 'trim|required|max_length[500]');
        $this->form_validation->set_rules('present_district', 'District', 'trim|required|integer');
        $this->form_validation->set_rules('present_upazila', 'P.S./ Upazila', 'trim|required|integer');
        $this->form_validation->set_rules('present_p_o', 'Post Office', 'trim|required|alpha_numeric_spaces');
        $this->form_validation->set_rules('present_p_c', 'Post Code', 'trim|required|integer|exact_length[4]');
        $this->form_validation->set_rules('permanent_care_of', 'Care Of', 'trim|required|max_length[255]|alpha_numeric_spaces');
        $this->form_validation->set_rules('permanent_address', 'Village/Flat ...', 'trim|required|max_length[500]');
        $this->form_validation->set_rules('permanent_district', 'District', 'trim|required|integer');
        $this->form_validation->set_rules('permanent_upazila', 'P.S./ Upazila', 'trim|required|integer');
        $this->form_validation->set_rules('permanent_p_o', 'Post Office', 'trim|required|alpha_numeric_spaces');
        $this->form_validation->set_rules('permanent_p_c', 'Post Code', 'trim|required|integer|exact_length[4]');
        $this->form_validation->set_rules('mobile_number', 'Mobile Number', 'trim|required|exact_length[13]|regex_match[/^[\d]{3}-[\d]{4}-[\d]{4}$/]');
        $this->form_validation->set_rules('confirm_mobile', 'Confirm Mobile', 'trim|required|exact_length[13]|matches[mobile_number]');
        $this->form_validation->set_rules('email_address', 'Email Address', 'trim|valid_email');
        /*                $this->form_validation->set_rules('five_school_name', 'School Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
                        $this->form_validation->set_rules('five_board', 'Board', 'trim|required|integer');
                        $this->form_validation->set_rules('five_roll', 'Class Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('five_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('five_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('eight_school_name', 'School Name', 'trim|required|max_length[255]|alpha_numeric_spaces');
                        $this->form_validation->set_rules('eight_board', 'Board', 'trim|required|integer');
                        $this->form_validation->set_rules('eight_roll', 'Class Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('eight_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('eight_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('ssc_exam_name', 'Examination', 'trim|required|integer');
                        $this->form_validation->set_rules('ssc_exam_board', 'Board', 'trim|required|integer');
                        $this->form_validation->set_rules('ssc_group', 'Group/Subject', 'trim|required|integer');
                        $this->form_validation->set_rules('ssc_roll', 'Board Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('ssc_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('ssc_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('hsc_exam_name', 'Examination', 'trim|required|integer');
                        $this->form_validation->set_rules('hsc_exam_board', 'Board', 'trim|required|integer');
                        $this->form_validation->set_rules('hsc_group', 'Group/Subject', 'trim|required|integer');
                        $this->form_validation->set_rules('hsc_roll', 'Board Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('hsc_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('hsc_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('graduate_exam', 'Examination', 'trim|required|integer');
                        $this->form_validation->set_rules('graduate_university', 'University', 'trim|required|integer');
                        $this->form_validation->set_rules('graduate_subject', 'Subject/Degree', 'trim|required|integer');
                        $this->form_validation->set_rules('graduate_roll', 'Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('graduate_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('graduate_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('masters_exam', 'Examination', 'trim|required|integer');
                        $this->form_validation->set_rules('masters_university', 'University', 'trim|required|integer');
                        $this->form_validation->set_rules('masters_subject', 'Subject/Degree', 'trim|required|integer');
                        $this->form_validation->set_rules('masters_roll', 'Roll', 'trim|required|integer');
                        $this->form_validation->set_rules('masters_pass_year', 'Passing Year', 'trim|required|integer|exact_length[4]');
                        $this->form_validation->set_rules('masters_result', 'Result', 'trim|required|numeric');

                        $this->form_validation->set_rules('designation_name[]', 'Designation', 'trim|alpha_numeric_spaces|max_length[255]');
                        $this->form_validation->set_rules('masters_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('masters_result', 'Result', 'trim|required|numeric');
                        $this->form_validation->set_rules('masters_result', 'Result', 'trim|required|numeric');*/

        //Form validation Execute
        if ($this->form_validation->run() == TRUE) {
            $applicant = [
                'job_post_id' => $this->session->post_id,
                'applicant_name' => $this->input->post('applicant_name'),
                'father_name' => $this->input->post('father_name'),
                'mother_name' => $this->input->post('mother_name'),
                'birth_date' => $this->input->post('birth_date'),
                'place_of_birth' => $this->input->post('place_of_birth'),
                'gender' => $this->input->post('gender'),
                'nationality' => $this->input->post('nationality'),
                'national_id' => $this->input->post('national_id'),
                'birth_reg_id' => $this->input->post('birth_reg_id'),
                'passport_id' => $this->input->post('passport_id'),
                'religion' => $this->input->post('religion'),
                'marital_status' => $this->input->post('marital_status'),
                'quota' => $this->input->post('quota'),
                //Mail Address
                'present_care_of' => $this->input->post('present_care_of'),
                'present_address' => $this->input->post('present_address'),
                'present_district' => $this->input->post('present_address'),
                'present_upazila' => $this->input->post('present_upazila'),
                'present_p_o' => $this->input->post('present_p_o'),
                'present_p_c' => $this->input->post('present_p_c'),
                //Permanent Address
                'permanent_care_of' => $this->input->post('permanent_care_of'),
                'permanent_address' => $this->input->post('permanent_address'),
                'permanent_district' => $this->input->post('permanent_district'),
                'permanent_upazila' => $this->input->post('permanent_upazila'),
                'permanent_p_o' => $this->input->post('permanent_p_o'),
                'permanent_p_c' => $this->input->post('permanent_p_c'),
                //Contact Info
                'mobile_number' => $this->input->post('mobile_number'),
                'email_address' => $this->input->post('email_address'),
                /*
                 //Class V
                'five_school_name' => $this->input->post('five_school_name'),
                'five_board' => $this->input->post('five_board'),
                'five_pass_year' => $this->input->post('five_pass_year'),
                'five_roll' => $this->input->post('five_roll'),
                'five_result' => $this->input->post('five_result'),
                //Class VIII
                'eight_school_name' => $this->input->post('eight_school_name'),
                'eight_board' => $this->input->post('eight_board'),
                'eight_pass_year' => $this->input->post('eight_pass_year'),
                'eight_roll' => $this->input->post('eight_roll'),
                'eight_result' => $this->input->post('eight_result'),
                //SSC Info
                'ssc_exam_name' => $this->input->post('ssc_exam_name'),
                'ssc_exam_board' => $this->input->post('ssc_exam_board'),
                'ssc_group' => $this->input->post('ssc_group'),
                'ssc_roll' => $this->input->post('ssc_roll'),
                'ssc_pass_year' => $this->input->post('ssc_pass_year'),
                'ssc_result' => $this->input->post('ssc_result'),
                //HSC Info
                'hsc_exam_name' => $this->input->post('hsc_exam_name'),
                'hsc_exam_board' => $this->input->post('hsc_exam_board'),
                'hsc_group' => $this->input->post('hsc_group'),
                'hsc_roll' => $this->input->post('hsc_roll'),
                'hsc_pass_year' => $this->input->post('hsc_pass_year'),
                'hsc_result' => $this->input->post('hsc_result'),
                //BSC Info
                'graduate_exam' => $this->input->post('graduate_exam'),
                'graduate_university' => $this->input->post('graduate_university'),
                'graduate_subject' => $this->input->post('graduate_subject'),
                'graduate_roll' => $this->input->post('graduate_roll'),
                'graduate_pass_year' => $this->input->post('graduate_pass_year'),
                'graduate_result' => $this->input->post('graduate_result'),
                //MSC Info
                'masters_exam' => $this->input->post('masters_exam'),
                'masters_university' => $this->input->post('masters_university'),
                'masters_subject' => $this->input->post('masters_subject'),
                'masters_roll' => $this->input->post('masters_roll'),
                'masters_pass_year' => $this->input->post('masters_pass_year'),
                'masters_result' => $this->input->post('masters_result') */
            ];
            $response = $this->insert_new_applicant($applicant);
        }

        $this->load->view('job_registration_form', $data);


    }

    protected function reg_form_meta_data()
    {
        //get gender list
        $meta['genders'] = $this->Applicant_form->get_gender_list();
        //get religion list
        $meta['religions'] = $this->Applicant_form->get_religion_list();
        //get marital status list
        $meta['marriages'] = $this->Applicant_form->get_martial_status();
        //get quota list
        $meta['quotas'] = $this->Applicant_form->get_quota_list();
        //get education board list
        $meta['boards'] = $this->Applicant_form->get_board_list();
        //district list
        $meta['districts'] = $this->Applicant_form->get_district_list();
        //ssc exam list
        $meta['ssc_exams'] = $this->Applicant_form->get_ssc_exam_names();
        //hsc exam list
        $meta['hsc_exams'] = $this->Applicant_form->get_hsc_exam_names();
        //graduate exam list
        $meta['graduate_exams'] = $this->Applicant_form->get_graduate_names();
        //masters exam list
        $meta['masters_exams'] = $this->Applicant_form->get_masters_names();
        //hsc/ssc exam subject
        $meta['subjects'] = $this->Applicant_form->get_ssc_hsc_subject();
        //universitry list
        $meta['univeristys'] = $this->Applicant_form->get_university_list();

        return $meta;

    }

    public function ajax_upzila_list()
    {

        $this->load->model('Applicant_form');

        if (isset($_POST['district'])) {
            $output = NULL;
            $district_id = $this->input->post('district');
            $upzila_list = $this->Applicant_form->get_upzila_names($district_id);
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
            $graduact_list = $this->Applicant_form->get_graduate_sub_names($exam_id);

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
            $masters_list = $this->Applicant_form->get_masters_sub_names($exam_id);

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

    protected function insert_new_applicant($applicant)
    {
        $this->load->model('Applicant_insert');
        $this->Applicant_insert->insert_user($applicant);
    }

}