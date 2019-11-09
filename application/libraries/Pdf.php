<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/4/2019
 * Time: 10:50 AM
 */

use Dompdf\Dompdf;

class Pdf extends Dompdf
{
    function __construct()
    {
        parent::__construct();
    }

    public function download_pdf($file_name, $file_content)
    {
        $this->loadHtml($file_content);
        $this->render();
        $this->stream($file_name, array('Attachment' => 1));

    }

    public function stream_pdf($file_name, $file_content)
    {
        $this->loadHtml($file_content);
        $this->render();
        $this->stream($file_name, array('Attachment' => 0));

    }



}