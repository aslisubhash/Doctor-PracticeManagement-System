<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class cron extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->auth->is_logged_in();
		$this->load->model("setting_model");
		
	}
	
	

	function database(){
		$setting = $this->setting_model->get_setting();
		//echo '<pre>'; print_r($setting);		
		
		if($setting->backup_type==1){//daily
			$this->export();
		}
		if($setting->backup_type==2){	//weekly
					$days		=	json_decode($setting->backup_day);
					$curr_day	=	 date('N');
					//echo '<pre>'; print_r($days);die;
					if(!empty($days)){
						if(in_array($curr_day,$days)){
							$this->export();
						}
					}	
			
		}
		if($setting->backup_type==3){	//monthly
			if(date('d')==$setting->backup_day){
				$this->export();
			}
		}
	
	}
	function export(){
		 $this->load->dbutil();
		 $prefs = array(     
					'format'      => 'sql',             
					'filename'    => 'db_backup.sql'
		 );
	  	$backup =& $this->dbutil->backup($prefs); 
	  	$db_name = 'backup-on-'. date("Y-m-d-H-i-s") .'.sql';
		$zip_name = 'backup-on-'. date("Y-m-d-H-i-s") .'.zip';
		file_put_contents('dbbackup/'.$db_name,$backup);
	  	
		$this->load->library('zip');
		$this->zip->read_dir('uploads/'); 
		
		// Write the zip file to a folder on your server. Name it "my_backup.zip"
		$this->zip->archive('dbbackup/'.$zip_name); 

	}
	
}