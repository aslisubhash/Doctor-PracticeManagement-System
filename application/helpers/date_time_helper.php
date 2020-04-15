<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

function date_time_convert($str){
	$CI = get_instance();
	$CI->load->model('setting_model');
	$settings = $CI->setting_model->get_admin_setting();

	return $str = date("".$settings->date_format." h:i a",strtotime($str));
}

function date_convert($str){
	$CI = get_instance();
	$CI->load->model('setting_model');
	$settings = $CI->setting_model->get_admin_setting();
	$date_format = isset($settings->date_format) ? $settings->date_format : "Y-m-d";
	return $str = date("".$date_format."",strtotime($str));
}

?>