<?php 
/*
Template Name: Главная
*/
?>

<?php get_header(); ?>

    <section>
        <div class="container">

            <div class="posts-section">
                <?php
                    if (have_posts()){
                        $my_posts = get_posts( array(
                            'numberposts' => -1,
                            'category_name'    => 'Projects',
                            'orderby'     => 'date',
                            'order'       => 'DESC',
                            'post_type'   => 'post',
                            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                        ) );
                        
                        global $post;
                        
                        foreach( $my_posts as $post ){
                            setup_postdata( $post );
                        ?>
                        <div class="posts-block">
                            <div class="post-main-page">
                                <div class="row">
                                    <a href="<?php the_permalink(); ?>" class="row-image-wrapper">
                                        <div class="row-image-wrapper-img"><?php 
                                        if(has_post_thumbnail()){
                                            the_post_thumbnail(); 
                                        } else {
                                            echo '<img src="' . get_bloginfo('template_directory') . '/assets/img/default/no_image.jpg' . '"alt="Нет изображения" />';
                                        }
                                        ?></div>
                                    </a>
                                    <div class="row-description">
                                        <a href=" <?php the_permalink(); ?>" class="row-description-title Item"><?php the_title(); ?></a>
                                        <div class="author">
                                            <div class="author-info">by <?php the_author(); ?> в <?php the_category(); ?> включено <?php the_date(); ?></div>
                                            <div class="author-comments">
                                                <img src="<?php bloginfo('template_url'); ?>/assets/img/default/speech-bubble.png" alt="">
                                                <span class="comments-volume"><?php 
                                                    comments_number('0', '1', '%')
                                                ?></span>
                                            </div>
                                            
                                        </div>
                                        <div class="description">
                                            <?php the_excerpt(); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php
                    }
                        wp_reset_postdata();
                }  else {
                    ?>
                    <div class="posts-block">
                        <?php 
                            echo "<div class='notice'>Записей пока нет</div>";
                        ?>
                    </div>
                    <?php
                }

                ?>
            </div>
        
            
            <div class="nav-block">
                
                <div class="main_search_element">
                    <div class="advice_searcher_element"></div>
                    <div class="Default_item">Совпадений не найдено</div>
                    <input id="input_of_searcher_id" type="text" class="input_of_searcher">
                    <label class="label_input_of_searcher" for="input_of_searcher_id">Поиск</label>
                    <button class="button_of_searcher">
                        <img src="<?php bloginfo('template_url'); ?>/assets/img/default/glass.png" alt="" class="search-glass">
                    </button>
                </div>

                <div class="widget-block widget-block-posts">
                    <div class="widget-block-title">
                        Свежие записи
                    </div>
                    
                    <ul class="posts-new-ul">
                    <?php
                        $my_posts = get_posts( array(
                            'numberposts' => 3,
                            'category'    => 0,
                            'orderby'     => 'date',
                            'order'       => 'DESC',
                            'post_type'   => 'post',
                            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                        ) );
                        
                        global $post;
                        if($my_posts){
                            foreach( $my_posts as $post ){
                                setup_postdata( $post );
                                
                                    handlingStr(get_the_title($post), get_permalink(), 'posts-new-li');
                                
                            }
                            wp_reset_postdata();
                        } else{
                            echo "<div class='notice'>Записей пока нет</div>";
                        }
                    ?>
                    </ul>
                </div>
                
                <div class="widget-block widget-block-comments">
                    <div class="widget-block-title">
                        Свежие комментарии
                    </div>
                    <ul class="posts-new-ul">
                        <?php 
                            $args = ([
                                'number' => 3,
                                'orderby' => 'comment_date',
                                'order' => 'DESC',
                                'status' => 'approve',
                                'type' => 'comment'
                            ]);
                            if($comments = get_comments($args)){
                                foreach($comments as $comment){
                                    $comment_link = get_comment_link($comment -> comment_ID);
                                    handlingStr($comment -> comment_content, get_comment_link($comment -> comment_ID), 'posts-new-li');
                                }
                            } else{
                                echo "<div class='notice'>Комментариев пока нет</div>";
                            }
                        ?>
                    </ul>
                </div>
                
                <div class="widget-block widget-block-categories">
                    <div class="widget-block-title">
                        Рубрики
                    </div>
                    <ul class="posts-new-ul">
                        <?php
                            $categories = get_categories([
                                'taxonomy'     => 'category',
                                'type'         => 'post',
                                'orderby'      => 'name',
                                'order'        => 'ASC',
                                'hide_empty'   => 1,
                                'hierarchical' => 1,
                                'pad_counts'   => false
                            ]);
                        ?>
                        <?php 
                            if( $categories ){
                                foreach( $categories as $cat ){
                                ?>
                                    <li class="posts-new-li"><a href="<?php the_permalink(); ?>"><?php echo $cat->name ?></a></li>
                                <?php
                                }
                            } else{
                                echo "<div class='notice'>Записей пока нет</div>";
                            }
                            wp_reset_postdata();
                        ?>
                    </ul>
                </div>  
            </div>

        </div>   
    </section>
<?php get_footer(); ?>