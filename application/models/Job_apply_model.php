<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/7/2019
 * Time: 1:41 PM
 */
class Job_apply_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();

    }

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
        $query = $this->db->get('people_religion');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;

    }

    public function get_gender_list()
    {
        //Available Genders List
        $query = $this->db->get('people_gender');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_martial_status()
    {
        //Available Martial Status List
        $query = $this->db->get('people_marriage');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_quota_list()
    {
        //Available Martial Status List
        $query = $this->db->get('people_qouta');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_board_list()
    {
        //Available Education Board List
        $query = $this->db->get('people_board');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

    public function get_district_list()
    {
        //Available Education Board List
        $query = $this->db->get('districts');
        if ($query->num_rows() > 0)
            return $query->result_array();
        else
            return NULL;
    }

}