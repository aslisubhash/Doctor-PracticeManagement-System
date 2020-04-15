<link href="<?php echo base_url('assets/css/jquery.datetimepicker.css')?>" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url('assets/css/chosen.css')?>" rel="stylesheet" type="text/css" />
<!-- Content Header (Page header) -->
<style>
.row{
	margin-bottom:10px;
}
#month-chart > svg {width: 100% !important;}
</style>
 <!-- Content Header (Page header) -->
<section class="content-header">
    <h1><?php echo lang('reports');?></h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url('admin/dashboard')?>"><i class="fa fa-dashboard"></i> <?php echo lang('dashboard');?></a></li>
        <li class="active"><?php echo lang('financial_reports');?></li>
    </ol>
</section>


<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                   
                </div><!-- /.box-header -->
                <!-- form start -->
			       <div class="box-body">
				   	<form method="post">
					
                       <div class="form-group">
                        	<div class="row">
                                <div class="col-md-3">
                                	<select name="doctor_id" class="form-control" required>
											<option value="">--<?php echo lang('select')?> <?php echo lang('doctor')?></option>
											<?php foreach($doctors as $new){?>
												<option value="<?php echo $new->id?>" <?php echo ($new->id==@$_POST['doctor_id'])?'selected="selected"':''?>><?php echo $new->name?></option>
											<?php }?>
									</select>
								</div>
								<div class="col-md-3">
                                	<input type="text" name="date1" value="<?php echo @$_POST['date1']?>" class="form-control datepicker" placeholder="Date From" required />
								</div>
								<div class="col-md-3">
                                	<input type="text" name="date2" value="<?php echo @$_POST['date2']?>" class="form-control datepicker" placeholder="Date Till" required />
								</div>
								<div class="col-md-2">
									<input type="submit" name="get" value="Get" class=" btn btn-primary" />
								</div>
							</div>
                        </div>
					 </form>
					 <?php if(!empty($date)){?>
					  <div class="row">
                        <div class="col-md-12">
                            <!-- Custom Tabs -->
                            <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true"><?php echo lang('financial_reports');?></a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1">
                                    	<!--graph code start  -->
										
                            <!-- solid sales graph -->
                            <div class="box box-solid bg-teal-gradient">
                                <div class="box-header">
                                    <i class="fa fa-th"></i>
                                    <h3 class="box-title"><?php echo lang('financial_reports')?></h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn bg-teal btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn bg-teal btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body border-radius-none">
                                    <div class="chart" id="line-chart" style="height: 250px;"></div>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
								
								 <div class="form-group">
									<div class="row">
										<div class="col-md-3">
											<?php 
											$total	=	0;
											foreach($date as $data){
												$total	+= @$data->amount;
											}?>
											Total For Period	=	<b><?php echo $total;?></b>	
										</div>
									</div>
								</div>

										<!--graph code end -->
									</div><!-- /.tab-pane -->
                                	
							
							    </div><!-- /.tab-content -->
                            </div><!-- nav-tabs-custom -->
                        </div><!-- /.col -->

                  </div>
					  
					  <?php } ?>
						
                    </div><!-- /.box-body -->
    
             </form>
            </div><!-- /.box -->
        </div>
     </div>
</section>  


<script src="<?php echo base_url('assets/js/jquery.datetimepicker.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/chosen.jquery.min.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/raphael-min.js')?>" type="text/javascript"></script>
<script src="<?php echo base_url('assets/js/morris.min.js')?>" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	jQuery('.datepicker').datetimepicker({
	 lang:'en',
	 i18n:{
	  de:{
	   months:[
		'Januar','Februar','März','April',
		'Mai','Juni','Juli','August',
		'September','Oktober','November','Dezember',
	   ],
	   dayOfWeek:[
		"So.", "Mo", "Di", "Mi", 
		"Do", "Fr", "Sa.",
	   ]
	  }
	 },
	 timepicker:false,
	 format:'Y-m-d'
	});
	/* Morris.js Charts */
    // Sales chart
   
    var line = new Morris.Line({
        element: 'line-chart',
        resize: true,
        data: [	
		<?php $i = 30;foreach($date as $key => $val){?>
		 {amount: '<?php echo (empty($val->amount)|| $val->amount==0)?0:$val->amount?>', date: '<?php echo date_convert($key);?>'},
		<?php $i--;}?>],
        xkey: 'date',
        ykeys: ['amount'],
        labels: ['Amount'],
        lineColors: ['#efefef'],
        lineWidth: 2,
		parseTime:false,
        hideHover: 'auto',
        gridTextColor: "#fff",
        gridStrokeWidth: 0.4,
        pointSize: 4,
        pointStrokeColors: ["#efefef"],
        gridLineColor: "#efefef",
        gridTextFamily: "Open Sans",
        gridTextSize: 10
    });
	
	
	
	
});



</script>