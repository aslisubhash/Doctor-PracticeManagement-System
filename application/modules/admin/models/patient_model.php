<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class patient_model extends CI_Model 
{
	var $table = 'users';
	var $column_order = array(null, 'name','address','gender','birthday_date','contact','email','add_date'); //set column field database for datatable orderable
	var $column_search = array('name','address','gender','birthday_date','contact','email','add_date'); //set column field database for datatable searchable 
	var $order = array('id' => 'asc'); // default order 
	
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	
	private function _get_datatables_query()
	{
		
		$this->db->from($this->table);

		$i = 0;
		$vsearch = @$_POST['search'];
		$vorder = @$_POST['order'];
	
		foreach ($this->column_search as $item) // loop column 
		{
			if($vsearch['value']) // if datatable send POST for search
			{
				
				if($i===0) // first loop
				{
					//$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $vsearch['value']);
				}
				else
				{
					$this->db->or_like($item, $vsearch['value']);
				}

				//if(count($this->column_search) - 1 == $i) //last loop
					//$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($vorder)) // here order processing
		{
			$this->db->order_by($this->column_order[$vorder['0']['column']], $vorder['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->where('user_role',2);
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}
	
	
	function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}
	
	
	function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}
	
	
	
	function get_blood_group()
	{
	  
		return $this->db->get('blood_group_type')->result();
	}

	function get_username()
	{
		$admin = $this->session->userdata('admin');
		$this->db->where('doctor_id',$admin['id']);
		$this->db->where('user_role',2);
		$this->db->select_max('id');
		$patient = $this->db->get('users')->row();

 		$this->db->where('id',$patient->id);
		return $this->db->get('users')->row();
	}
	
	function get_username_by_assistant()
	{
		$admin = $this->session->userdata('admin');
		$this->db->where('doctor_id',$admin['doctor_id']);
		$this->db->where('user_role',2);
		$this->db->select_max('id');
		$patient = $this->db->get('users')->row();
		
 		$this->db->where('id',$patient->id);
		return $this->db->get('users')->row();
	}
	
	
	
	function save($save)
	{
		$this->db->insert('users',$save);
		return $this->db->insert_id(); 
	}
	
	function get_all()
	{
		$this->db->where('user_role',2);
		return $this->db->get('users')->result();
	}
	
	function get_patients_by_doctor()
	{
		$this->db->where('doctor_id',0);
		$setting	=	 $this->db->get('settings')->row();
	
		$admin = $this->session->userdata('admin');
		if($admin['user_role']==1){
			if(@$setting->all_patient_visible==1){
			
			}else{
				$this->db->where('doctor_id',$admin['id']);
			}
				
	    }else{
			if($admin['user_role']==3){
				if(@$setting->all_patient_visible_assistant==1){
			
				}else{
					$this->db->where('doctor_id',$admin['id']);
				}
			}else{
				$this->db->where('doctor_id',$admin['doctor_id']);	
	    	}
		}	
		$this->db->where('user_role',2);
		return $this->db->get('users')->result();
	}
	function get_patients_doctor()
	{
		$admin = $this->session->userdata('admin');
		if($admin['user_role']==1){
			$this->db->where('id',$admin['id']);	
		}else{
			$this->db->where('id',$admin['doctor_id']);	
		}
		$this->db->where('user_role',1);
		return $this->db->get('users')->row();
	}
	
	function get_patients_by_doctor_filter($search,$filter_id)
	{
		$this->db->where('doctor_id',0);
		$setting	=	 $this->db->get('settings')->row();
		
		$admin = $this->session->userdata('admin');
		if($admin['user_role']==1){
			if(@$setting->all_patient_visible==1){
			
			}else{
				$this->db->where('doctor_id',$admin['id']);
			}
				
	    }else{
			if($admin['user_role']==3){
				if(@$setting->all_patient_visible_assistant==1){
			
				}else{
					$this->db->where('doctor_id',$admin['doctor_id']);
				}
			}else{
				$this->db->where('doctor_id',$admin['doctor_id']);	
	    	}
		}
			
		if(!empty($filter_id)){
			if($filter_id=="dob"){
			$this->db->like($filter_id,date("Y") - $search);
			}else{
				$this->db->like('LOWER('.$filter_id.')',strtolower($search));	
			}
		}

		$this->db->limit(10);
		$this->db->where('user_role',2);
		return $this->db->get('users')->result();


		$data = $this->gudang_model->all();
		$output = array();
		foreach($data as $k => $value) {
		    $output[] = array_values($value);
		}

		echo json_encode(array('data' => $output));

	}
	
	function get_patients_by_assistant(){
						 $this->db->where('doctor_id',0);
		$setting	=	 $this->db->get('settings')->row();
		
		$admin = $this->session->userdata('admin');
		
		if($admin['user_role']==1){
			if(@$setting->all_patient_visible==1){
			
			}else{
				$this->db->where('doctor_id',$admin['id']);
			}
				
	    }else{
			
			if($admin['user_role']==3){
				if(@$setting->all_patient_visible_assistant==1){
				
				}else{
					
					$this->db->where('doctor_id',$admin['doctor_id']);
				}
			}else{
				$this->db->where('doctor_id',$admin['doctor_id']);	
	    	}
		}

		$this->db->where('user_role',2);
		return $this->db->get('users')->result();
	}
	function get_patients_by_doctor_ajax($id)
	{
		if($id==0){
			$admin = $this->session->userdata('admin');
			if($admin['user_role']==1){
					$this->db->where('doctor_id',$admin['id']);	
				   }else{
					$this->db->where('doctor_id',$admin['doctor_id']);	
				   }
			$this->db->where('user_role',2);
			return $this->db->get('users')->result();
		}

		$admin = $this->session->userdata('admin');
		if($admin['user_role']==1){
					$this->db->where('doctor_id',$admin['id']);	
				   }else{
					$this->db->where('doctor_id',$admin['doctor_id']);	
				   }
		$this->db->where('id',$id);
		$this->db->where('user_role',2);
		return $this->db->get('users')->result();
	}
	
	function get_all_patients()
	{
		$this->db->where('user_role',2);
		return $this->db->get('users')->result();
	}
	
	function get_patient_by_id($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('users')->row();
	}
	
	function get_patient_filter($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('users')->result();
	}
	
	function update($save,$id)
	{
		$this->db->where('id',$id);
		$this->db->update('users',$save);
	}
	
	
	function get_patients_by_invoice($id)
	{
		$this->db->where('PT.id',$id);
		$this->db->select('F.*,PM.name mode,D.name doctor');
		$this->db->order_by('F.invoice','DESC');
		$this->db->join('users PT', 'PT.id = F.patient_id', 'LEFT');
		$this->db->join('users D', 'D.id = F.doctor_id', 'LEFT');
		$this->db->join('payment_modes PM', 'PM.id = F.payment_mode_id', 'LEFT');
		return $this->db->get('fees F')->result();		   
		
	}
	
	
	function get_patients_by_medication($id)
	{
		$this->db->where('P.patient_id',$id);
		$this->db->order_by('P.id','DESC'); 
		$this->db->select('P.*,U.name patient,U.dob,U.gender');
		$this->db->join('users U', 'U.id = P.patient_id', 'LEFT');
		return $this->db->get('prescription P')->result();		   
		
	}
	
	
	function delete($id)//delte patient
	{
		$this->db->where('id',$id);
		$this->db->delete('users');

		$this->db->where('patient_id',$id);
		$this->db->delete('appointments');

		$this->db->where('patient_id',$id);
		$this->db->delete('fees');


		$this->db->where('from_id',$id);
		$this->db->delete('message');

		$this->db->where('to_id',$id);
		$this->db->delete('message');

		$this->db->where('patient_id',$id);
		$this->db->delete('notes');

		$this->db->where('user_id',$id);
		$this->db->delete('pimages');


		$this->db->where('patient_id',$id);
		$this->db->delete('prescription');
	}
	function check_username($username,$id){

		if($id){
			$this->db->where('id !=',$id);
		}
		$this->db->where('username',$username);
		return $this->db->get('users')->result();
	}
	function save_image($save){
		$this->db->insert('pimages',$save);
	}
	
	function get_images($id)
	{
	    $this->db->where('user_id',$id);
		return $this->db->get('pimages')->result();
	}
	
	function get_image($id)
	{
		$this->db->where('id',$id);
		return $this->db->get('pimages')->row();
	}
	function delete_image($id)
	{
		$this->db->where('id',$id);
		$this->db->delete('pimages');
	}
	
	function search_blood_group($value){
		$this->db->where('LOWER(name)',strtolower($value));
		return $this->db->get('blood_group_type')->row();
	}
	
	function search_custom_field($value){
		$this->db->where('LOWER(name)',strtolower($value));
		return $this->db->get('custom_fields')->row();
	}
}
