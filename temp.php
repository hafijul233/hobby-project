<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 11/20/2019
 * Time: 4:07 PM
 */

$str  = strtoupper(substr(md5(microtime()),0,6));
echo $str;