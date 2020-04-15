<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class financial_reports extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->auth->check_access('Admin', true);
		$this->load->model("reports_model");
		$this->load->model("doctor_model");
		
	}
	
	
	function index(){
		
			
			$data['date']	=	array();
			if(!empty($_POST['get'])){
				$begin = new DateTime($_POST['date1']);
				$end = new DateTime(date('Y-m-d',strtotime($_POST['date2'].'+1 day')));
				
				$interval = DateInterval::createFromDateString('1 day');
				$period = new DatePeriod($begin, $interval, $end);
				
				foreach ( $period as $dt ){
				 	$date	=	$dt->format( "Y-m-d" );
				 	$data['date'][$date]	=	$this->reports_model->financial_reports_date($date); 
				} 
				
			}
			
			
			//echo '<pre>'; print_r($data['date']);die;
		$data['doctors'] = $this->doctor_model->get_all();
		$data['page_title'] = lang('financial_reports');
		$data['body'] = 'reports/financial_reports';
		$this->load->view('template/main', $data);	

	}	
	
		
		
	
}
