<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Port</title>
    <?php wp_head(); ?>
</head>
<body>
    <header>
        <nav>
            <a href="http://et-k.ru/" class="logo">
                <div class="logo-text">Проекты</div>
            </a>
            <?php
                wp_nav_menu( [
                    'menu'            => 'menu-desktop',
                    'container'       => false,
                    'menu_class'      => 'main-menu-desktop',
                    'echo'            => true,
                    'items_wrap'      => '<ul class="main-menu-desktop">%3$s</ul>',
                    'depth'           => 1
                ] );
            ?>
            <div class="main-menu-mobile">
                <div class="menu-burger">
                    <div class="burger-line"></div>
                </div>
                <div class="right-drop-down-menu">
                    <div class="logo"><a href="http://et-k.ru/">Проекты</a></div>
                    <?php
                        wp_nav_menu( [
                            'menu'            => 'menu-mobile',
                            'container'       => false,
                            'menu_class'      => '',
                            'echo'            => true,
                            'items_wrap'      => '<ul>%3$s</ul>',
                            'depth'           => 1
                        ] );
                    ?>
                </div>
            </div>
        </nav>
        <div class="nav-slider">
            <?php
                $flag = true; 
                $images = get_field('headder-gallery', 'options');
                $size = 'full'; 
                if($images){
                    foreach($images as $image){
                        if ($flag){
                            echo "<img class='nav-slider-img nav-slider-img-visible' data-visible='true' src='",  $image['url'] ,"'>";
                            $flag = false;
                        } else {
                            echo "<img class='nav-slider-img' data-visible='false' src='",  $image['url'] ,"'>";
                        }
                    }
                }
            ?>
        <div class="blackRect"></div>
        <div class="main-header-content">
            <h1><?php the_field('Big-text-header', 'options'); ?></h1>
            <h2 style="color: #fbfbfb"><?php the_field('normal-text-header', 'options'); ?></h2>
        </div>
        <i class="check-mark">
            <img src="<?php bloginfo('template_url')?>/assets/img/icons/arrowdown.png" alt="">
        </i>
    </header>
