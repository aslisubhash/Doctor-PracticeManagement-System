<link href="<?php echo base_url('assets/css/chosen.css')?>" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url('assets/css/datatables/dataTables.bootstrap.css')?>" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('are_you_sure');?>');
}
</script>

<!-- Content Header (Page header) -->
<style>
.row{
	margin-bottom:10px;
}
</style>
 <!-- Content Header (Page header) -->
<section class="content-header">
    <h1><?php echo lang('custom_fields')?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url('admin')?>"><i class="fa fa-dashboard"></i> <?php echo lang('dashboard')?></a></li>
      
        <li class="active"><?php echo lang('custom_fields')?></li>
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
				
				<form method="post" enctype="multipart/form-data"  >
                    <div class="box-body">
                        <div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('select_form')?></b>
								</div>
								<div class="col-md-4">
                                	<select name="form" class="form-control">
										<option value="0">--<?php echo lang('select_form')?>--</option>
										<option value="1" <?php echo ($field->form==1)?'selected="selected"':''?>><?php echo lang('doctors')?></option>
										<option value="2" <?php echo ($field->form==2)?'selected="selected"':''?>><?php echo lang('patients')?></option>
										<option value="3" <?php echo ($field->form==3)?'selected="selected"':''?>><?php echo lang('to_do')?></option>
										<option value="4" <?php echo ($field->form==4)?'selected="selected"':''?>><?php echo lang('contacts')?></option>
										<option value="5" <?php echo ($field->form==5)?'selected="selected"':''?>><?php echo lang('prescription')?></option>
									</select>    
								</div>
							 </div>
                        </div>
						
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('field_type')?></b>
								</div>
								<div class="col-md-4">
                                	<select name="type" class="form-control" id="field">
										<option value="0">--<?php echo lang('select_field_type')?>--</option>
										<option value="1" <?php echo ($field->field_type==1)?'selected="selected"':''?>>Text Box</option>
										<option value="2" <?php echo ($field->field_type==2)?'selected="selected"':''?>>Dropdown List</option>
										<option value="3" <?php echo ($field->field_type==3)?'selected="selected"':''?>>Radio Button</option>
										<option value="4" <?php echo ($field->field_type==4)?'selected="selected"':''?>>Checkbox</option>
										<option value="5" <?php echo ($field->field_type==5)?'selected="selected"':''?>>Textarea</option>
									</select>    
								</div>
								<div class="col-md-4">
								
								</div>
                            </div>
                        </div>
						
						
						<div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('field_name')?></b>
								</div>
								<div class="col-md-4">
                                    
									<input type="text" name="name" value="<?php echo @$field->name?>" class="form-control">
                                </div>
                            </div>
                        </div>
						
						
						<div class="form-group" id="value-div">
                        	<div class="row">
                                <div class="col-md-3">
                                	<b><?php echo lang('enter_field_values')?></b>
								</div>
								<div class="col-md-4">
                                	  <textarea name="values" class="form-control"><?php echo @$field->values?></textarea>
								</div>
								<div class="col-md-4">
										<?php echo lang('custom_field_instruction')?>
								</div>
							 </div>
                        </div>
								
                      
					  
					 <div class="box-footer">
                        <button  type="submit" class="btn btn-primary"><?php echo lang('save')?></button>
                    </div>  
					  
				</div>	  
					
                   
             </form>
            </div><!-- /.box -->
        </div>
     </div>
</section>  
<script src="<?php echo base_url('assets/js/plugins/datatables/jquery.dataTables.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/plugins/datatables/dataTables.bootstrap.js')?>" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('#example1').dataTable({
	});
});

</script>

<script type="text/javascript">
$(document).on('ready', function(){
 		$('#value-div').hide();
		setTimeout(function(){ 
			var field = $('#field').val();
		   // alert(field);
			if(field==3 || field==2 || field==4){
				$('#value-div').show();
			}else{
				$('#value-div').hide();
			}
		 }, 3000);

});

$(document).on('change', '#field', function(){
 	var field = $('#field').val();
   // alert(field);
	if(field==3 || field==2 || field==4){
		$('#value-div').show();
	}else{
		$('#value-div').hide();
	}
 
});
</script>