<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/7/2019
 * Time: 1:41 PM
 */
class Applicant_form extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();

    }
    // form meta data
    public function selected_post_title($id)
    {
        //Get Post Title from Id
        $query = $this->db->get_where('postdesignation', array('id' => $id), 1);
        $temp = $query->result();
        return $temp[0]->postdesignation;

    }

    public function get_post_list()
    {
        //Available Job List
        $query = $this->db->get('postdesignation');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_religion_list()
    {
        //Available Regilion List
        $query = $this->db->get('sys_religion');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;

    }

    public function get_gender_list()
    {
        //Available Genders List
        $query = $this->db->get('sys_gender');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_martial_status()
    {
        //Available Martial Status List
        $query = $this->db->get('sys_marriage');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_quota_list()
    {
        //Available Martial Status List
        $query = $this->db->get('sys_qouta');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_board_list()
    {
        //Available Education Board List
        $query = $this->db->get('sys_edu_board');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_district_list()
    {
        //Available Education Board List
        $query = $this->db->get('sys_districts');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_upzila_names($district_id = NULL) {

        //Available Education Board List
        $query = $this->db->get_where('sys_upazilas', array('district_id' => $district_id));
        if ($query->num_rows() > 0){
            return $query->result_array();
        }
        else {
                        echo $this->db->last_query();
            return NULL;
        }
    }

    public function get_graduate_sub_names($exam_id = NULL) {

        //Available Education Board List
        $query = $this->db->get_where('sys_edu_subject', array('exam_name_id' => $exam_id));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_masters_sub_names($exam_id = NULL) {

        //Available Education Board List
        $query = $this->db->get_where('sys_edu_subject', array('exam_name_id' => $exam_id));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_ssc_exam_names() {
        //Available Education Board List
        $query = $this->db->get_where('sys_edu_examinations', array('exam_level_id' => 1));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_hsc_exam_names() {
        //Available Education Board List
        $query = $this->db->get_where('sys_edu_examinations', array('exam_level_id' => 2));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_graduate_names() {
        //Available Education Board List
        $query = $this->db->get_where('sys_edu_examinations', array('exam_level_id' => 3));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_masters_names() {
        //Available Education Board List
        $query = $this->db->get_where('sys_edu_examinations', array('exam_level_id' => 4));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_ssc_hsc_subject() {
        //Available Education Board List
        $query = $this->db->get_where('sys_edu_subject', array('exam_level_id' => 1));
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_university_list()
    {
        //Available Education Board List
        $query = $this->db->get('sys_edu_univiersities');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

}