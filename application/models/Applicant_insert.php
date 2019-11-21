<?php

/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/20/2019
 * Time: 7:16 PM
 */
class Applicant_Insert extends CI_Model
{
    protected $form_define = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->get_db_fields();
    }

    // insert data

    public function insert_user($applicant = NULL)
    {
        $integerArray = array();
        $floatArray = array();
        $varcharArray = array();
        $dateArray = array();
        $textArray = array();

        foreach ($applicant as $index => $value) {
            $temp = $this->get_id_by_field($index);

            switch ($temp['table']) {
                case 'people_varchar' : {
                    $tmp_data = array(
                        'people_id' => 1, // test user
                        'people_infotype_id' => $temp['id'], //field
                        'people_varchar' => $value
                    );
                    array_push($varcharArray, $tmp_data);
                    break;
                }

                case 'people_date' : {
                    $tmp_data = array(
                        'people_id' => 1, // test user
                        'people_infotype_id' => $temp['id'], //field
                        'people_date' => $value
                    );
                    array_push($dateArray, $tmp_data);
                    break;
                }

                case 'people_float' : {
                    $tmp_data = array(
                        'people_id' => 1, // test user
                        'people_infotype_id' => $temp['id'], //field
                        'people_float' => $value
                    );
                    array_push($floatArray, $tmp_data);
                    break;
                }

                case 'people_text' : {
                    $tmp_data = array(
                        'people_id' => 1, // test user
                        'people_infotype_id' => $temp['id'], //field
                        'people_text' => $value
                    );
                    array_push($textArray, $tmp_data);
                    break;
                }

                case 'people_integer' : {
                    $tmp_data = array(
                        'people_id' => 1, // test user
                        'people_infotype_id' => $temp['id'], //field
                        'people_integer' => $value
                    );
                    array_push($integerArray, $tmp_data);
                    break;
                }
            }
        }

        if(!$this->insert_people_integer($integerArray)) {
            echo ('there is a error integer');
        }

        if(!$this->insert_people_float($floatArray)) {
            echo ('there is a error float');
        }
        if(!$this->insert_people_date($dateArray)) {
            echo ('there is a error date');
        }
        if(!$this->insert_people_varchar($varcharArray)) {
            echo ('there is a error varchar');
        }
        if(!$this->insert_people_text($textArray)) {
            echo ('there is a error text');
        }
    }

    protected function get_db_fields()
    {
        $this->db->select('people_infotype.id AS id, people_infotype.infotype AS field, people_infotype_type.table AS table');
        $this->db->from('people_infotype');
        $this->db->join('people_infotype_type', 'people_infotype.infotype_type_id = people_infotype_type.id', 'left');
        $query = $this->db->get();
        if ($query->num_rows() != 0) {
            $this->form_define = $query->result_array();
        } else {
            $this->form_define = null;
        }
    }

    protected function get_id_by_field($field_name)
    {
        foreach ($this->form_define as $rows) {
            if (in_array($field_name, $rows)) {
                return $rows;
            }
        }
    }

    protected function insert_people_integer($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_integer', $data);
        else
            return FALSE;
    }

    protected function insert_people_date($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_date', $data);
        else
            return FALSE;
    }

    protected function insert_people_float($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_float', $data);
        else
            return FALSE;
    }

    protected function insert_people_text($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_text', $data);
        else
            return FALSE;
    }

    protected function insert_people_time($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_time', $data);
        else
            return FALSE;
    }

    protected function insert_people_varchar($data = [])
    {
        if (count($data) > 0)
            return $this->db->insert_batch('people_varchar', $data);
        else
            return FALSE;
    }
}
