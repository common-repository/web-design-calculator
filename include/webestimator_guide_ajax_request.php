<?php
	
$currenturl=sanitize_text_field($_REQUEST['urlfullpath']);
$url=sanitize_text_field($_REQUEST['urlhashpath']);
if(isset($_REQUEST["urlhashpath"])) {
$myArray = explode("&",$url);
$countarray=count($myArray);
if ($countarray == 3 ){
for ($i=0; $i < $countarray; $i++) {
	  global $wpdb;
      $sParameterName1 = explode("=",$myArray[$i]);
      if ($sParameterName1[0] == "concept") {
		$conceptvalue = $sParameterName1[1];
		$sql = $wpdb->get_results("Select * from main_choices where main_choice_slug='$conceptvalue'");
		foreach ( $sql as $row ) {
				$main_choice = $row->main_choice_name;	 
				}
       }
 }
}
if ($countarray == 3){
for ($i=0; $i < $countarray; $i++) {
	  global $wpdb;
      $sParameterName2 = explode("=",$myArray[$i]);
	   if ($sParameterName2[0] == "domain") {
		$domainvalue = $sParameterName2[1];
		$sql = $wpdb->get_results("Select * from inputs where input_slug='domain' and input_value='$domainvalue'");
		foreach ( $sql as $row ) {
				$domain_input = $row->input_short_name;
				$domain_result = $row->input_time;	
				}
       }
}
}
if ($countarray == 3 ){
for ($i=0; $i < $countarray; $i++) {
	  global $wpdb;
      $sParameterName3 = explode("=",$myArray[$i]);
	   if ($sParameterName3[0] == "server") {
		$servervalue = $sParameterName3[1];
		$sql = $wpdb->get_results("Select * from inputs where input_slug='server' and input_value='$servervalue'");
		foreach ( $sql as $row ) {
				$server_input = $row->input_short_name;	
				$server_result = $row->input_time;			
				}
       }
}
}
	 


$sql=$wpdb->get_results("Select * from main_choices where main_choice_slug='symbol'");
		
		foreach ( $sql as $row ) {
				$symbol = $row->main_choice_name;
				}

	   
$current =array();
if (!empty($domain_result)){
$current[]=$domain_result;
}
if (!empty($server_result)){
$current[]=$server_result;
}

?>


<h2>Review Your Choices & Total</h2>

<h3 class="result-steps">
<a href="#">1. Website Concept <span class="fui-new"></span>

</a>
</h3>
Website Concept: <b><?php echo esc_html($main_choice); ?></b><br/>

<h3 class="result-steps">
<a href="#">2. Current Domain Information <span class="fui-new"></span>

</a>
</h3>
Domain: <b><?php echo esc_html($domain_input.$domain_result); ?></b><br>

<h3 class="result-steps">
<a href="#">3. Current Server Information <span class="fui-new"></span>

</a>
</h3>
Server: <b><?php echo esc_html($server_input.$server_result);?></b><br/>


<h1 style='text-align: center;'>TOTAL</h1>
<h2 class='results'>

Your project rate is 
<b>
<?php 
$formatted = "$symbol" . number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "", array_sum($current))),2 );
echo esc_html($formatted);
?>
</b>
<br/>
</h2>
<br/>

<?php
die();
}

	
?>


 


	
