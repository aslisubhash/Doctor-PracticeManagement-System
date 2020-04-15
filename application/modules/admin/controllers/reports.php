<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class reports extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->auth->check_access('1', true);
		$this->load->model("reports_model");
		
	}
	
	
	function index(){
			$data['client_acquisition']	=array();
			$data['client_acquisition']['Internet']	=	0;
			$data['client_acquisition']['Word of mouth']	=	0;
			$data['client_acquisition']['Flyer']	=	0;
			$data['client_acquisition']['Advertising']	=	0;
			if(!empty($_POST['get'])){
				$data['client_acquisition']['Internet']	=	$this->reports_model->get_client_acquisition('Internet');
				$data['client_acquisition']['Word of mouth']	=	$this->reports_model->get_client_acquisition('Word of mouth');
				$data['client_acquisition']['Flyer']	=	$this->reports_model->get_client_acquisition('Flyer');
				$data['client_acquisition']['Advertising']	=	$this->reports_model->get_client_acquisition('Advertising');
				//echo '<pre>'; print_r($data['client_acquisition']);die;
			}
			 
		
			for($i = 30; $i > -1; $i--)
			{
				
				$data['date'][$i]	=	$this->reports_model->get_earning_by_dates(date('Y-m-d', strtotime("- ".$i." days")));
			}
			
			for($i = 6; $i > -1; $i--)
			{
				
				$data['week_data'][date('Y-m-d', strtotime("- ".$i." days"))]	=	$this->reports_model->get_earning_by_dates(date('Y-m-d', strtotime("- ".$i." days")));
				//echo date('Y-m-d', strtotime("- ".$i." days"));
			}
			
			
		
		$data['months'] = $this->reports_model->get_earning_by_month();
		$data['weeks'] = $this->reports_model->get_earning_by_week();
		$data['years'] = $this->reports_model->get_earning_by_year();
		$data['clients'] = $this->reports_model->get_earning_by_patient();
		
		$data['page_title'] = lang('reports');
		$data['body'] = 'reports/reports';
		$this->load->view('template/main', $data);	

	}	
	
		
		
	
}
