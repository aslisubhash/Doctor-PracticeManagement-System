<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Memento admin_model model
 *
 * This class handles admin_model management related functionality
 *
 * @package		Admin
 * @subpackage	admin_model
 * @author		propertyjar
 * @link		#
 */

class reports_model extends CI_Model 
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
		
	}
	
	
	function financial_reports_date($date){
		  		   $this->db->where('doctor_id',$_POST['doctor_id']);
				   $this->db->where('date',$date);
				   $this->db->select('date, SUM(amount) amount');
		return     $this->db->get('fees')->row();
	}
	
	function get_earning_by_dates($date)
	{
		$admin = $this->session->userdata('admin');
	
				   $this->db->like('F.date',$date);
				   $this->db->where('U.doctor_id',$admin['id']);
				   $this->db->select('date, SUM(amount) amount');
				  $this->db->join('users U', 'U.id = F.patient_id', 'LEFT');
		return $x= $this->db->get('fees F')->row();
		
		if(empty($x->date)){
			return $date;
				
		}else{
		return $x;
		}
	}
	

	
	function get_earning_by_month()
	{
	$y= date("Y");
	$m= date("m");
	$d=@cal_days_in_month(CAL_GREGORIAN,$m,$y);
	$admin = $this->session->userdata('admin');
	
				   $this->db->where('date >=',date("Y-m-d", strtotime("-".$d." days")));
				   $this->db->where('U.doctor_id',$admin['id']);
				   $this->db->group_by('date', 'ASC');
				   $this->db->select('date');
				   $this->db->select_sum('amount');
				   $this->db->join('users U', 'U.id = F.patient_id', 'LEFT');
			return $this->db->get('fees F')->result();
	}
	
	function get_earning_by_week()
	{
		$admin = $this->session->userdata('admin');
				   $this->db->where('date >=',date("Y-m-d", strtotime("- 7 days")));
				   $this->db->where('U.doctor_id',$admin['id']);
				   $this->db->group_by('date', 'ASC');
				   $this->db->select('date');
				   $this->db->select_sum('amount');
				  $this->db->join('users U', 'U.id = F.patient_id', 'LEFT');
			return $this->db->get('fees F')->result();
	}
	
	function get_earning_by_year()
	{
		$admin = $this->session->userdata('admin');
				   $this->db->group_by('YEAR(date)');
				   $this->db->where('U.doctor_id',$admin['id']);
				   $this->db->select('date');
				   $this->db->select_sum('amount');
				  $this->db->join('users U', 'U.id = F.patient_id', 'LEFT');
			return $this->db->get('fees F')->result();
	}
	
	function get_earning_by_patient()
	{
		$admin = $this->session->userdata('admin');
	
				   $this->db->where('U.doctor_id',$admin['id']);
				 
			$this->db->select('date,U.name, SUM(amount) as amount');
			 $this->db->group_by('U.name'); 
			 $this->db->join('users U', 'U.id = F.patient_id', 'LEFT');
		return $this->db->get('fees F')->result();
	}
	
	function get_client_acquisition($value){
				//$admin = $this->session->userdata('admin');
				//$this->db->where('U.doctor_id',$admin['id']);
		     	if(!empty($_POST['date2'])){
					$led	= explode('/',$_POST['date2']);
					$led	= $led[2].'-'.$led[1].'-'.$led[0];
					$led	= date('Y-m-d', strtotime($led));
					$date2 			= @$led;
					 $this->db->where('U.add_date <=',$date2);
				}
				if(!empty($_POST['date2'])){
					$bd	= explode('/',$_POST['date1']);
					$bd	= $bd[2].'-'.$bd[1].'-'.$bd[0];
					$bd	= date('Y-m-d', strtotime($bd));
					$date1 			= @$bd;
					 $this->db->where('U.add_date >=',$date1); 
				}
			  
			  	
				
			   $this->db->where('R.reply',$value);
			   $this->db->where('R.form',2);
			   $this->db->select('U.*,');
			   $this->db->join('users U', 'U.id = R.table_id', 'LEFT');
		return $this->db->get('rel_form_custom_fields R')->num_rows();
	}

}
