<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class query extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
	}
	
	function index(){
		$this->db->query('ALTER TABLE `users` CHANGE `add_date` `add_date` DATETIME NULL DEFAULT NULL;');
		//$this->db->query('ALTER TABLE rel_form_custom_fields DROP PRIMARY KEY;');
		//$this->db->query('ALTER TABLE `prescription` ADD `doctor_id` INT UNSIGNED NOT NULL ;');
		//$this->db->query('ALTER TABLE `fees` ADD `doctor_id` INT UNSIGNED NOT NULL ;');
		//$this->db->query('ALTER TABLE `settings` ADD `doctor_menus` TEXT NULL DEFAULT NULL , ADD `assistant_menus` TEXT NULL DEFAULT NULL ;');
		//$this->db->query('ALTER TABLE `settings` ADD `date_format` VARCHAR(255) NULL DEFAULT NULL ;');
	}
	
	
}
