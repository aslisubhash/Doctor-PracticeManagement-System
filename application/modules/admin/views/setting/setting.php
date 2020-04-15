<link href="<?php echo base_url('assets/css/datatables/dataTables.bootstrap.css')?>" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url('assets/css/chosen.css')?>" rel="stylesheet" type="text/css" />
<!-- Content Header (Page header) -->
<style>
.row{
	margin-bottom:10px;
}
.chosen-container{width:100% !important}
</style>
 <!-- Content Header (Page header) -->
<section class="content-header">
    <h1><?php echo lang('general_settings')?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url('admin')?>"><i class="fa fa-dashboard"></i> <?php echo lang('dashboard')?></a></li>
      
        <li class="active"><?php echo lang('general_settings')?></li>
    </ol>
</section>

<section class="content">
    <div class="row">
<?php 
	if(validation_errors()){
?>
<div class="alert alert-danger alert-dismissable">
                                        <i class="fa fa-ban"></i>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa fa-close"></i></button>
                                        <b><?php echo lang('alert')?>!</b><?php echo validation_errors(); ?>
                                    </div>

<?php  } ?>  
	   	
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                   
                </div><!-- /.box-header -->
                <!-- form start -->
				
			
				<form method="post" enctype="multipart/form-data" action="<?php echo site_url('admin/settings/')?>"
                    <div class="box-body">
						<div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#tab_1" data-toggle="tab"><?php echo lang('general_settings')?></a></li>
                  <?php if($admin['user_role']=='Admin'){?>
				  <li><a href="#tab_2" data-toggle="tab" ><?php echo lang('db_backup')?></a></li>
				  <li><a href="#tab_3" data-toggle="tab" ><?php echo lang('menu_settings')?></a></li>
               	 <?php  } ?>
			    </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="tab_1">
                  		
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('company_name')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="text" name="name" value="<?php echo @$settings->name;?>" class="form-control">
                                </div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('logo')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="file" name="img" value="" class="form-control">
                                </div>
								<div class="col-md-4">
								<?php 
								if(@$settings->image != 0 || !empty($settings->image)){
								?>
								<img src="<?php echo base_url('assets/uploads/images/'.@$settings->image); ?>" width="140" height="100" />
								<?php
								}
								?>
								</div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('header_setting')?></b>
								</div>
								<div class="col-md-6">
                               		<input type="radio" name="header_setting" value="1" <?php echo (@$settings->header_setting==1)?'checked':''?> /> <b><?php echo lang('company_name')?></b>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="header_setting" value="2" <?php echo (@$settings->header_setting==2)?'checked':''?> /> <b><?php echo lang('logo')?></b>
							    </div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('address')?></b>
								</div>
								<div class="col-md-4">
                                    
									<textarea name="address" class="form-control"><?php echo @$settings->address;?></textarea>
                                </div>
                            </div>
                        </div>
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('phone')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="text" name="contact" value="<?php echo @$settings->contact;?>" class="form-control">
                                </div>
                            </div>
                        </div>
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('email')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="text" name="email" value="<?php echo @$settings->email;?>" class="form-control">
                                </div>
                            </div>
                        </div>
						
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('invoice_number')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="text" name="invoice" value="<?php echo @$settings->invoice;?>" class="form-control">
                                </div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b>Session Time (Hours)</b>
								</div>
								<div class="col-md-4">
                                    
									<input type="number" name="session_hours" value="<?php echo @$settings->session_hours;?>" min="1" class="form-control">
                                </div>
                            </div>
                        </div>
						<?php if($admin['user_role']=='Admin'){?>
						<div class="form-group">
                              <div class="row">
                                <div class="col-md-3">
                                    <label for="contact" style="clear:both;"><?php echo lang('default_date_format')?></label>
								</div>
								<div class="col-md-4">
									<select name="date_format" class="form-control chzn" >
										<option value=""><?php echo lang('select')?> <?php echo lang('default_date_format')?></option>
										<option value="Y-m-d" <?php echo (@$settings->date_format=="Y-m-d")?'selected="selected"':'';?>>YYYY-mm-dd</option>
										<option value="d/m/y" <?php echo (@$settings->date_format=="d/m/y")?'selected="selected"':'';?>>dd/mm/yy</option>
										<option value="m/d/yy" <?php echo (@$settings->date_format=="m/d/y")?'selected="selected"':'';?>>mm/dd/yy</option>
										<option value="m/d/y" <?php echo (@$settings->date_format=="m/d/y")?'selected="selected"':'';?>>dd/mm/YYYY</option>
										<option value="m/d/Y" <?php echo (@$settings->date_format=="m/d/Y")?'selected="selected"':'';?>>mm/dd/YYYY</option>
									</select>
                                </div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('all_patient_visible')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="checkbox" name="all_patient_visible" value="1" <?php echo (@$settings->all_patient_visible==1)?'checked':'';?>>
                                </div>
                            </div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('all_patient_visible_assistant')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="checkbox" name="all_patient_visible_assistant" value="1" <?php echo (@$settings->all_patient_visible_assistant==1)?'checked':'';?>>
                                </div>
                            </div>
                        </div>
						<?php } ?>	
				  </div><!-- /.tab-pane -->
                  <div class="tab-pane" id="tab_2">
                		
						
						
					<?php if($admin['user_role']=='Admin'){?>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('backup_schedule')?></b>
								</div>
								<div class="col-md-4">
                                	<select name="backup_type" class="form-control" id="backup_type">
											<option value="1" <?php echo (@$settings->backup_type==1)?'selected="selected"':'';?>><?php echo lang('daily');?></option>
											<option value="2" <?php echo (@$settings->backup_type==2)?'selected="selected"':'';;?>><?php echo lang('weekly');?></option>
											<option value="3" <?php echo (@$settings->backup_type==3)?'selected="selected"':'';;?>><?php echo lang('monthly');?></option>
									</select>
								</div>
								<div class="col-md-4" id="days">
										<select name="days[]" class="form-control chzn" multiple="multiple" data-placeholder="Select Days" >
												<?php 
												if($settings->backup_type==2){
													$week_days	=	json_decode($settings->backup_day);
												}
												foreach($days as $day){
												$sel	=	'';
												if(!empty($week_days)){
													$sel	=	(in_array($day->id,$week_days))?'selected="selected"':'';
												}
												?>
												<option value="<?php echo $day->id?>" <?php echo $sel; ?> ><?php echo $day->name?></option>
												<?php } ?>
										</select>
								</div>
								<div class="col-md-4" id="day">
									<select name="day" class="form-control"  >
												<option value="">--Select Day Of Month--</option>
												<?php for($i=1; $i<=30;$i++){?>
												<option value="<?php echo $i?>" <?php echo (@$settings->backup_day==$i)?'selected="selected"':'';;?> ><?php echo $i?></option>
												<?php } ?>
										</select>
								
								</div>
							</div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('db_restore')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="file" name="db" value="" class="form-control">
                                </div>
								<div class="col-md-2"><input type="button" name="upload" value="Upload" class=" btn btn-success upload" />
							</div>
                        </div>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('cron_url_for_db_backup')?></b>
								</div>
								<div class="col-md-9">
                                    <?php echo site_url('admin/cron/database')?>
                                </div>
							</div>
                        </div>
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('db_backup')?></b>
								</div>
								<div class="col-md-11">
                                 <?php $files = get_filenames('dbbackup');
								 	//echo '<pre>'; print_r($files);
								 ?>
								 <?php if(!empty($files)):?>
								 <table id="example1" class="table table-bordered table-striped">
                        
										<thead>
											<tr>
												<th><?php echo lang('db_backup')?></th>
												<th><?php echo lang('action')?></th>
											</tr>
										</thead>
										<tbody >
											<?php $i=1;foreach ($files as $new){?>
												<tr class="gc_row">
													<td><?php echo $new?></td>
													<td>
													<a href="<?php echo base_url('dbbackup/'.$new) ?>" class="btn btn-primary"><?php echo lang('download')?></a>
													<a href="<?php echo site_url('admin/settings/deletebackup/'.$new) ?>" class="btn btn-danger" onclick="return confirm('Are You Sure');"><?php echo lang('delete')?></a>
													</td>
												</tr>
												<?php $i++;}?>
										</tbody>
								</table>
								<?php endif;?>
								 
                                </div>
                            </div>
                        </div>
						
						<?php } ?>

   
                  </div><!-- /.tab-pane -->
				 </div><!-- /.tab-content -->
				 <div class="tab-pane" id="tab_3">
				  	<?php if($admin['user_role']=='Admin'){?>
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('menu_for')?></b>
								</div>
								<div class="col-md-4">
                               			<select name="menu_for" class="form-control" id="menu_for">
											<option  value="1"><?php echo lang('doctor') ?></option>
											<option  value="2"><?php echo lang('assistant') ?></option>
										</select>     
							     </div>
								 <div class="col-md-4" id="d_div">
								 	<h6>Hide Menu For <?php echo lang('doctor') ?></h6>
								 	<?php
										$dmenus	= json_decode(@$settings->doctor_menus);
									 foreach($menus as $menu){
									 	$check	=	'';
										if(!empty($dmenus)){
											$check	=	(in_array($menu,$dmenus))?'checked':'';
										}
									?>	
										<input type="checkbox" name="doctor_menus[]" value="<?php echo $menu?>" <?php echo $check;?> /> <label><?php echo $menu?></label> <br />
									<?php } ?>
								 
								 </div>
								 <div class="col-md-4" id="a_div">
								 	<h6>Hide Menu For <?php echo lang('assistant') ?></h6>
								 <?php 	
									$amenus	=	json_decode($settings->assistant_menus);
									 foreach($menus as $menu){
									 	$check	=	'';
										if(!empty($amenus)){
											$check	=	(in_array($menu,$amenus))?'checked':'';
										}
									?>	
										<input type="checkbox" name="assistant_menus[]" value="<?php echo $menu?>" <?php echo $check;?> /> <label><?php echo $menu?></label> <br />
									<?php } ?>
								 
								 </div>
							</div>
                        </div>
						
					<?php } ?>
				  </div>
              
			  </div>
                        
						
						
						
								
                       <div class="box-footer" style="padding-left:25%">
							<button  type="submit" class="btn btn-primary"><?php echo lang('save')?></button>
						</div>
						
                    </div><!-- /.box-body -->
    
                   
             </form>
            </div><!-- /.box -->
        </div>
     </div>
</section>  



<script src="<?php echo base_url('assets/js/chosen.jquery.min.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/bootstrap-datepicker.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/plugins/datatables/jquery.dataTables.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/plugins/datatables/dataTables.bootstrap.js')?>" type="text/javascript"></script>

<script src="<?php echo base_url('assets/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')?>" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$("#a_div").hide();
	
	$('#example1').dataTable({});
	$('.chzn').chosen();
	call_loader_ajax();
	setTimeout(function(){ 
		  $("#overlay").remove();
		 var val = $('#backup_type').val();
    
		if(val==1){//daily
			$('#days').hide();
			$('#day').hide();
		}
		if(val==2){//weekly	
			$('#days').show();
			$('#day').hide();
		}   
		if(val==3){//monthly
			$('#days').hide();
			$('#day').show();
		}
	}, 3000);	
});

$(function() {
	//bootstrap WYSIHTML5 - text editor
	$(".txtarea").wysihtml5();
});

 $(function() {
    $( ".datepicker" ).pickmeup({
    format  : 'Y-m-d'
});
  });
  
  
  
 $("#backup_type").on('change',function() {   
    var val = $(this).val();
    
	if(val==1){//daily
		$('#days').hide();
		$('#day').hide();
	}
	if(val==2){//weekly	
		$('#days').show();
		$('#day').hide();
	}   
	if(val==3){//monthly
		$('#days').hide();
		$('#day').show();
	}
});  


$('body').on('click', '.upload', function(e){
       e.preventDefault();
       var formData = new FormData($(this).parents('form')[0]);
		call_loader_ajax();
       $.ajax({
           url: '<?php echo site_url('admin/settings/upload_db');?>',
           type: 'POST',
           xhr: function() {
               var myXhr = $.ajaxSettings.xhr();
               return myXhr;
           },
           success: function (data) {
              // alert("Data Uploaded: "+data);
  			if(data==1){
				setTimeout(function(){ location.reload();$("#overlay").remove(); }, 90000);
				
			}else{
				alert(data);
				$("#overlay").remove();	
			}
			
		   },
           data: formData,
           cache: false,
           contentType: false,
           processData: false
       });
       return false;
});  

 $("#menu_for").on('change',function() {   
    var val = $(this).val();
    
	if(val==1){//daily
		$('#d_div').show();
		$('#a_div').hide();
	}
	if(val==2){//weekly	
		$('#d_div').hide();
		$('#a_div').show();
	}   
});  
</script>