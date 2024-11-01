<?php
/**
 * Plugin Name: Web Design Calculator
 * Plugin URI:  https://profiles.wordpress.org/walexconcepts/
 * Description: This plugin is a tool to show Web Design Price or how much client would pay for web projects and so on.. 
 * Version:     2.0
 * Author:      Awodeyi Adewale Emmanuel 
 * Author URI:  https://walexconcepts.com/
 * License:     GPLv2+
 */
if ( ! defined( 'ABSPATH' ) ) exit;
wp_enqueue_script('jquery');

function webestimator_guide_myplugin_ajaxurl() {
   echo '<script type="text/javascript">
           var webestimator_guide_ajaxurl = "' . admin_url('admin-ajax.php') . '";
         </script>';
}
add_action('wp_head', 'webestimator_guide_myplugin_ajaxurl');


function webestimator_guide_call_after_install(){
define('WEBESTIMATOR_GUIDE_PATH', __FILE__ . '/'); 
$installpath = explode('plugins', WEBESTIMATOR_GUIDE_PATH);
define('WEBESTIMATOR_GUIDE_INSTALLATION_PATH', dirname($installpath[0]) . '/'); 
$path = plugin_dir_path( __FILE__ ) . 'system/wc_webestimator_guide.sql';
$sql = file_get_contents($path);
require_once( WEBESTIMATOR_GUIDE_INSTALLATION_PATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );
}
register_activation_hook( __FILE__, 'webestimator_guide_call_after_install' );

function webestimator_guide_call_after_uninstall() {
global $wpdb;
$wpdb->query( 'DROP TABLE IF EXISTS inputs' );
$wpdb->query( 'DROP TABLE IF EXISTS main_choices' );
$wpdb->query( 'DROP TABLE IF EXISTS currency' );
}
register_uninstall_hook( __FILE__, 'webestimator_guide_call_after_uninstall' );



function home_webestimator_guide(){
	wp_enqueue_style( 'preloader', plugins_url( 'css/preloader.css', __FILE__ ));
	require plugin_dir_path( __FILE__ ) . 'include/webestimator_guide_myform.php';
 
}
add_shortcode('webestimator-guide', 'home_webestimator_guide');




function webestimator_guide_ajax_request() {
require plugin_dir_path( __FILE__ ) . 'include/webestimator_guide_ajax_request.php';

}
add_action( 'wp_ajax_webestimator_guide_ajax_request', 'webestimator_guide_ajax_request' );
add_action( 'wp_ajax_nopriv_webestimator_guide_ajax_request', 'webestimator_guide_ajax_request' );





function webestimator_guide_scripts(){	
	wp_enqueue_script('jquery-custom', plugins_url('js/jquery-custom.js', __FILE__ ));
}
add_action( 'wp_enqueue_scripts', 'webestimator_guide_scripts' );



function webestimator_guide_admin_menu() {
    add_menu_page( 'Webestimator Guide', 'Webestimator Guide', null, 'administrator_webestimator_guide', '', plugin_dir_url( __FILE__ ) . 'adminicon.png');
    add_submenu_page( 'administrator_webestimator_guide', __( 'Help', 'administrator_webestimator_guide' ), __( 'Help', 'administrator_webestimator_guide' ), 'manage_options', 'help_webestimator_guide', 'webestimator_guide_help');
    wp_enqueue_style( 'formstylesheet', plugins_url( 'css/formstylesheet.css', __FILE__ ));
		
}
function webestimator_guide_help(){
	require plugin_dir_path( __FILE__ ) . 'admin/webestimator_guide_help.php';
}
add_action('admin_menu', 'webestimator_guide_admin_menu');




function webestimator_guide_settings_link( $links){
	$links[] = '<a href="admin.php?page=help_webestimator_guide">Help</a>' ;	
    $links[] = '<a target="_blank" href="https://walexconcepts.com/index.php?page=item&id=14">Go Premium!</a>' ;	
	return $links;
}
add_filter( 'plugin_action_links_'.plugin_basename(__FILE__), 'webestimator_guide_settings_link');

