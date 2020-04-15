<?php
header('Content-Type: "text/csv"');
header('Content-Disposition: attachment; filename="'.lang('patients').'.csv"');
header('Expires: 0');
header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
header("Content-Transfer-Encoding: binary");
header('Pragma: public');
?>
<?php echo lang('serial_number')?>,<?php echo lang('name')?>,<?php echo lang('gender')?>,<?php echo lang('date_of_birth')?>,<?php echo lang('email')?>,<?php echo lang('phone')?>,<?php echo lang('address')?>,<?php echo lang('creation_date')?>,<?php 
						if($fields){
							foreach($fields as $doc){
								if($doc->field_type==1){?><?php echo $doc->name; ?>,<?php }	
								if($doc->field_type==2){?><?php echo $doc->name; ?>,<?php }	
								if($doc->field_type==3){?><?php echo $doc->name; ?>,<?php }
								if($doc->field_type==4){?><?php echo $doc->name; ?>,<?php }	
								if($doc->field_type==5){?><?php echo $doc->name; ?>,<?php }	
							}
						}
					?><?php echo ",\n";?>
							<?php $i=1;
							foreach ($patients as $new)
							{?><?php echo $i .","?>
									<?php echo $new->name .","?>
									<?php echo $new->gender .","?>
									<?php echo date_convert($new->birthday_date) .","?>
									<?php echo $new->email .","?>
									<?php echo $new->contact .","?>
									<?php echo $new->address .","?>
									<?php echo date_convert($new->add_date) .","?>
									<?php if($fields){
										foreach($fields as $doc){
											if($doc->field_type==1){?><?php echo get($doc->id,$new->id,$doc->form,1,$doc->values); ?>,<?php }	
											if($doc->field_type==2){?><?php echo get($doc->id,$new->id,$doc->form,2,$doc->values); ?>,<?php }	
											if($doc->field_type==3){?><?php echo get($doc->id,$new->id,$doc->form,3,$doc->values); ?>,<?php }
											if($doc->field_type==4){?><?php echo get($doc->id,$new->id,$doc->form,4,$doc->values); ?>,<?php }	
											if($doc->field_type==5){?><?php echo get($doc->id,$new->id,$doc->form,5,$doc->values); ?>,<?php }	
										}
									}?>
									<?php echo ",\n";?>
                                <?php $i++;}?>
								
<?php 
function get($doc_id,$patient_id,$form,$type,$doc_values){
	$CI = get_instance();
	if($type==1){
	 $result = $CI->db->query("select * from rel_form_custom_fields where custom_field_id = '".$doc_id."' AND table_id = '".$patient_id."' AND form = '".$form."' ")->row();				     return  @$result->reply; ;
	}
	if($type==2){
		$values = explode(",", $doc_values);
		$result = $CI->db->query("select * from rel_form_custom_fields where custom_field_id = '".$doc_id."' AND table_id = '".$patient_id."'  ")->row();	
			 return  @$result->reply; ;
	}	
	if($type==3){
		 $result = $CI->db->query("select * from rel_form_custom_fields where custom_field_id = '".$doc_id."' AND table_id = '".$patient_id."' AND form = '".$form."' ")->row();				     return  @$result->reply; ;	
	}
	if($type==4){
		 $result = $CI->db->query("select * from rel_form_custom_fields where custom_field_id = '".$doc_id."' AND table_id = '".$patient_id."' AND form = '".$form."' ")->row();				     return  @$result->reply; ;
	}
	if($type==5){
	 $result = $CI->db->query("select * from rel_form_custom_fields where custom_field_id = '".$doc_id."' AND table_id = '".$patient_id."' AND form = '".$form."' ")->row();				    	
	 
	  	if(!empty($result->reply)){
			return str_replace(',', ' ', $result->reply);
		}else{
		 return false;
		}
	}
}							
?>								
								