<?php 
/*
Template Name: Интересное 
*/
?>

<?php
    get_header();
    //Top Gun Том Круз 
 ?>

    <section>
        <div class="posts-interesting">
            <?php

            $query = new WP_Query('category_name=Interesting');
            if( $query-> have_posts()){
                while($query->have_posts()){
                    $query->the_post();
                    ?>
                    <a href="<?php the_permalink($post)?>" class="post-interesting" loading = "lazy">
                    <div class="post-interesting-img">
                        <?php 
                            if(has_post_thumbnail()){
                                the_post_thumbnail(); 
                            } else {
                                echo '<img src="' . get_bloginfo('template_directory') . '/assets/img/default/no_image.jpg' . '"alt="Нет изображения" />';
                            }
                        ?>
                        <div class="hover-block"></div>
                    </div>
                    <div class="post-interesting-bottom">
                        <div class="bottom-title" style='font-family: "Montserrat"; font-weight: 900;'><?php the_title(); ?></div>
                        <div class="bottom-line"></div>
                    </div>
            </a>
                    <?php
                }
            } else {
                echo "<div class='notice' style = 'position: absolute;'>Записей пока нет</div>";
            }
            wp_reset_postdata();
            ?>

        </div>
    </section>

<?php get_footer(); ?>