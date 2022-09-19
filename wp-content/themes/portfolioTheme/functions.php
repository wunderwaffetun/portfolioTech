<?php
    add_theme_support('menus');
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo');
    add_filter('nav_menu_link_attributes', 'desktop_menu_links_change', 10, 3);
    add_action('wp_enqueue_scripts', 'turn_scripts');
    function turn_scripts(){
        wp_enqueue_script( 'mainJS', get_template_directory_uri() . '/assets/js/mainScript.js', $in_footer = true);
        wp_enqueue_script( 'SearcherJS', get_template_directory_uri() . '/assets/js/Search.js', $in_footer = true);
        wp_enqueue_style( 'Style', get_template_directory_uri() . '/assets/css/css/mainStyle.css');
        wp_enqueue_style( 'Searcher', get_template_directory_uri() . '/assets/css/css/Search.css');
    }

    function handlingStr($string, $element_link, $class){
        $string = trim($string);
        if(mb_strlen($string, 'utf-8') > 24){
            $string = mb_substr(strip_tags($string), 0, 24);
            echo "<li class='", $class, "'><a href='", $element_link, "'>", $string, "...</a></li>";
        } else{
            echo "<li class='", $class, "'><a href='", $element_link, "'>", $string, "</a></li>";
        }

        return $string; 
    }

    if( function_exists('acf_add_options_page') ) {
	
        acf_add_options_page(array(
            'page_title' 	=> 'Theme General Settings',
            'menu_title'	=> 'Главное',
            'post_id'       => 'options',
            'menu_slug' 	=> 'theme-general-settings',
            'capability'	=> 'edit_posts',
            'redirect'		=> false
        ));
    }


    function desktop_menu_links_change($atts, $item, $args){
        if ( $args -> menu ==='menu-desktop' ){
            $atts['class'] = 'li-page li-page-desktop li-page-a';
        }
        if ( $args -> menu === 'menu-mobile' ){
            $atts['class'] = 'li-page';
        }
        return $atts;
    }


?>