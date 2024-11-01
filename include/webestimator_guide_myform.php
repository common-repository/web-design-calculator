<?php

	
?>


<div style="float:none;display: none" class="success_msg1">	
<div style="float:none;" class="center-block col-md-8">
<form name="conceptform" id="conceptform" action="" method="post" enctype="multipart/form-data">
<div class="field">
<h3>Choose the type of new website you want us to build or new feature for current website			</h3>
<div class="form-group">                                                                   
<select style="width:100%;max-width:100%" required id="varsubject" name="varsubject" >
<option value="" disabled selected>New Website</option>
<option value="ecommerce"<?php if(isset($_POST['varsubject']) == "ecommerce") echo "selected";?>>E-Commerce</option>
<option value="news"<?php if(isset($_POST['varsubject']) == "news") echo "selected";?>>News</option>
<option value="blog"<?php if(isset($_POST['varsubject']) == "blog") echo "selected";?>>Personal Blog</option>
<option value="portfolio"<?php if(isset($_POST['varsubject']) == "portfolio") echo "selected";?>>Portfolio</option>
<option value="promotion"<?php if(isset($_POST['varsubject']) == "promotion") echo "selected";?>>Promotion</option>
<option value="" disabled >New Feature For Current Website</option>
<option value="seo" <?php if(isset($_POST['varsubject']) == "seo") echo "selected";?>>Search Engine Optimization (SEO)</option>
<option value="socialmedia" <?php if(isset($_POST['varsubject']) == "socialmedia") echo "selected";?>>Social Media Management</option>
<option value="logo" <?php if(isset($_POST['varsubject']) == "logo") echo "selected";?>>Logo Design</option>
<option value="marketing" <?php if(isset($_POST['varsubject']) == "marketing") echo "selected";?>>Marketing & Advertisement</option>
<option value="backup" <?php if(isset($_POST['varsubject']) == "backup") echo "selected";?>>Auto/Cloud Backup</option>
<option value="security" <?php if(isset($_POST['varsubject']) == "security") echo "selected";?>>Extra Security</option>
<option value="speed" <?php if(isset($_POST['varsubject']) == "speed") echo "selected";?>>Speed Optimization</option>
<option value="newsletter" <?php if(isset($_POST['varsubject']) == "newsletter") echo "selected";?>>Newsletter</option>
<option value="chat" <?php if(isset($_POST['varsubject']) == "chat") echo "selected";?>>Live Support Chat Feature</option>
<option value="maintenance" <?php if(isset($_POST['varsubject']) == "maintenance") echo "selected";?>>Periodic Maintenance & Updates</option>
<option value="content" <?php if(isset($_POST['varsubject']) == "content") echo "selected";?>>Content Writing</option>
<option value="custom" <?php if(isset($_POST['varsubject']) == "custom") echo "selected";?>>Custom Requests</option>		
</select>																															 
</div>                                                        
</div>                                                                                                                            
<div style="width:100%;max-width:100% clear:both"><br></div> 
<button class="#btn-primary text-right" type='button' id='concept' name='concept' value=''>Start</button>	 	                                                                                                         
</form>
</div>
</div>


<div style="float:none;display: none" class="success_msg2">	
<div style="float:none;" class="center-block col-md-8">
<form name="domainform" id="domainform" action="" method="post" enctype="multipart/form-data">    
<input class='concept_input' type='text' name='concept_input' value='' hidden="true">
<h1 id="big-title">Current Domain Information</h1>
<div class="field">
<h3>Will you provide us a domain to use on your project?			</h3>
<div class="form-group">
<label class="radio primary">
<input type="radio" data-toggle="radio" name="t_domain" value="yes" id="1" required >
<strong style="margin-left:50px">Yes, I already have my website's domain</strong>	
</label>
<label class="radio primary">
<input type="radio" data-toggle="radio" name="t_domain" value="no" id="2" required >
<strong style="margin-left:50px">No, we will buy a new domain</strong>
</label>
</div>
</div>
<button class="#btn-primary text-right" type='button' id='domain' name='domain' value=''>Continue</button> 	
</form>
</div>
</div>
<div style="float:none;display: none" class="success_msg3">	
<div style="float:none;" class="center-block col-md-8">
<form name="serverform" id="serverform" action="" method="post" enctype="multipart/form-data">
<input class='concept_input' type='text' name='concept_input' value='' hidden="true">
<input class='domain_input' type='text' name='domain_input' value='' hidden="true">
<h1 id="big-title">Current Server Information</h1>
<div class="field">
<h3>Do you have a hosting package to use on your project?</h3>
<div class="form-group">
<label class="radio #primary">
<input type="radio" data-toggle="radio" name="t_server" value="linux" id="5" required >
<strong style="margin-left:50px">Yes, It is a Linux Hosting</strong>	
</label>
<label class="radio #primary">
<input type="radio" data-toggle="radio" name="t_server" value="windows" id="6" required >
<strong style="margin-left:50px">Yes, It is a <b>Windows Hosting</b></strong>					
</label>
<label class="radio #primary">
<input type="radio" data-toggle="radio" name="t_server" value="other" id="7" required >
<strong style="margin-left:50px">Other or not sure</strong>																	
</label>				
<label class="radio primary">
<input type="radio" data-toggle="radio" name="t_server" value="no" id="8" required >
<strong style="margin-left:50px">No, we will buy a new hosting</strong>															
</label>						
</div>
</div> 
<button class="#btn-primary text-right" type='button' id='server' name='server' value=''>Save and Finish</button> 	 		 
</form>
</div>
</div>

<div style="float:none;display: none" id="success_msg10" class=" success_msg10">	
<div id="preloader"></div>

<div style="float:none;" class="modal-body center-block col-md-8">


</div>
</div>

<script type="text/javascript">
jQuery(document).ready(function($) {
if (("onhashchange" in window) && !($.browser.msie)) {                   
 $(window).bind( 'hashchange',function() {  
var currentUrl = $(location).attr('href');
var myhash0 = $(location).attr('hash');
myhash1 = myhash0.substr(1);
var myArray = myhash1.split("&");
var countmyArray=myArray.length;
if( myhash1 == false ) {		
				$(".success_msg1").css("display","block");
				$(".success_msg2").css("display","none");
				$(".success_msg3").css("display","none");
				$(".success_msg4").css("display","none");
				$(".success_msg10").css("display","none");				
}
if (countmyArray == 1 ){
	var sParameterName = myArray[0].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);
		
				$(".success_msg1").css("display","none");
				$(".success_msg2").css("display","block");
				$(".success_msg3").css("display","none");
				$(".success_msg4").css("display","none");
				$(".success_msg10").css("display","none");
       }
}
if (countmyArray == 2 ){
for (var i = 0; i < countmyArray; i++) 
   {
      var sParameterName = myArray[i].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);		
       }
	   if (sParameterName[0] == "domain") {
        $('.domain_input').val(sParameterName[1]);
		
				$(".success_msg1").css("display","none");
				$(".success_msg2").css("display","none");
				$(".success_msg3").css("display","block");
				$(".success_msg4").css("display","none");
				$(".success_msg10").css("display","none");
       }
   }
}
if (countmyArray == 3 ){
for (var i = 0; i < countmyArray; i++) 
   {
      var sParameterName = myArray[i].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);
		
       }
	   if (sParameterName[0] == "domain") {
        $('.domain_input').val(sParameterName[1]);	
       }
	   if (sParameterName[0] == "server") {
        $('.server_input').val(sParameterName[1]);
		
				$(".success_msg1").css("display","none");
				$(".success_msg2").css("display","none");
				$(".success_msg3").css("display","none");
				$(".success_msg4").css("display","block");
				
				
       }
   }
} 

}); 
}

});
</script>


<script type="text/javascript">
jQuery(document).ready(function($) {	
var currentUrl = $(location).attr('href');
var myhash0 = $(location).attr('hash');
myhash1 = myhash0.substr(1);

var myArray = myhash1.split("&");
var countmyArray=myArray.length;

if( myhash1 == false ) {
$(".success_msg1").css("display","block");	
}
if (countmyArray == 1 ){
	var sParameterName = myArray[0].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);
		$(".success_msg2").css("display","block");	
       }
}
if (countmyArray == 2 ){
for (var i = 0; i < countmyArray; i++) 
   {
      var sParameterName = myArray[i].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);
		
       }
	   if (sParameterName[0] == "domain") {
        $('.domain_input').val(sParameterName[1]);
		$(".success_msg3").css("display","block");	
       }
   }
}
if (countmyArray == 3 ){
for (var i = 0; i < countmyArray; i++) 
   {
      var sParameterName = myArray[i].split('=');
      if (sParameterName[0] == "concept") {
        $('.concept_input').val(sParameterName[1]);
		
       }
	   if (sParameterName[0] == "domain") {
        $('.domain_input').val(sParameterName[1]);	
       }
	   if (sParameterName[0] == "server") {
        $('.server_input').val(sParameterName[1]);
		$(".success_msg10").css("display","block");	
       }
   }  
   $.ajax({
          url: webestimator_guide_ajaxurl, 
          data: {
              'action':'webestimator_guide_ajax_request',
			   cache:false,			  			  
			  'urlfullpath':currentUrl,
			  'urlhashpath':myhash1
          },
         beforeSend: function(){
        $('#preloader').show(); 
    },
    complete: function(){
        $('#preloader').hide();
    },
		  success:function(data) {	
                            $('.modal-body').html(data); 
 
                        },
			
          error: function(errorThrown){
              window.alert(errorThrown);
          }
		  	  
      });
}

});
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {	
$("#concept").click(function(){	
if(document.getElementById("conceptform").varsubject.value .length==0){
alert("Please choose the type of new website you want us to build or new feature for current website.");
}else{
var varsubjectvalue=document.getElementById("conceptform").varsubject.value 
$('.concept_input').val(varsubjectvalue);
var array = [];
array.push("concept");
array.push(varsubjectvalue);
var text = array.join("=");
window.location.hash=text;
$(".success_msg1").css("display","none");
$(".success_msg2").css("display","block");
}
});
$("#domain").click(function(){	
var concept=document.getElementById("domainform").concept_input.value 	
if(document.getElementById("domainform").t_domain.value .length==0){
alert("Please select current domain information.");
}else{
var domain=document.getElementById("domainform").t_domain.value 
$('.concept_input').val(concept);
$('.domain_input').val(domain);
var arrayconcept = [];
arrayconcept.push("concept");
arrayconcept.push(concept);
var conceptstring = arrayconcept.join("=");
var arraydomain = [];
arraydomain.push("domain");
arraydomain.push(domain);
var domainstring = arraydomain.join("=");
var array = [];
array.push(conceptstring);
array.push(domainstring);
var text = array.join("&");
window.location.hash=text;
$(".success_msg2").css("display","none");
$(".success_msg3").css("display","block");
}
});
$("#server").click(function(){
var concept=document.getElementById("serverform").concept_input.value 	
var domain=document.getElementById("serverform").domain_input.value	
if(document.getElementById("serverform").t_server.value .length==0){
alert("Please select current server information.");
}else{
var server=document.getElementById("serverform").t_server.value 
$('.concept_input').val(concept);
$('.domain_input').val(domain);
$('.server_input').val(server);
var arrayconcept = [];
arrayconcept.push("concept");
arrayconcept.push(concept);
var conceptstring = arrayconcept.join("=");
var arraydomain = [];
arraydomain.push("domain");
arraydomain.push(domain);
var domainstring = arraydomain.join("=");
var arrayserver = [];
arrayserver.push("server");
arrayserver.push(server);
var serverstring = arrayserver.join("=");
var array = [];
array.push(conceptstring);
array.push(domainstring);
array.push(serverstring);
var text = array.join("&");
window.location.hash=text;
$(".success_msg3").css("display","none");
$(".success_msg10").css("display","block");
}
});


if (("onhashchange" in window) && !($.browser.msie)) {            
 $(window).bind( 'hashchange',function() {    
var currentUrl = $(location).attr('href');
var myhash0 = $(location).attr('hash');
myhash1 = myhash0.substr(1);
var myArray = myhash1.split("&");
var countmyArray=myArray.length;		
       if (countmyArray == 3 ){                    
	   $.ajax({
          url: webestimator_guide_ajaxurl, 
          data: {
              'action':'webestimator_guide_ajax_request',
			   cache:false,			  
			  'urlfullpath':currentUrl,
			  'urlhashpath':myhash1
          },
         beforeSend: function(){
        $('#preloader').show(); 
    },
    complete: function(){
        $('#preloader').hide();
    },
		  success:function(data) {
										
                            $('.modal-body').html(data); 
	 
                        },
          error: function(errorThrown){
              window.alert(errorThrown);
          }
		  	  
      });
 }
 
  }); 
  
}  	
   
});
</script>

<?php
