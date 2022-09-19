<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>et-k.ru</title>
        <link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/css/mainStyle.css">
        <link rel="stylesheet" href="<?php bloginfo('template_url')?>/assets/css/css/Search.css">
    </head>
<body>
    <div class="img-popup">
        <div class="img-popup-block">
            <div class="cross-block"></div>
            <img src="<?php bloginfo('template_url') ?>/assets/img/default/macbook-keyboard-picjumbo-com.jpg" alt="" class="img-popup-block-img">
            <div class="moderation" style="display: none">
                Ваш комментарий находится на обработке
            </div>
        </div>
    </div>
    <main>
        <a href="http://et-k.ru/" class="close-post-btn" onclick="localStorage.setItem('clickIndex', -1)" >
            <div class="escape">На главную</div>
        </a>
        <div class="post-main-content">
            <h1 class="post-title"><?php the_title(); ?></h1>
            <?php
                the_content();
            ?>
            <div class="post-form">

                <?php
                    $req = true; 
                    $commenter = $aria_req  = $html_req =  $html5 = $consent = null;


                    $args = [
                        'fields'  => [
                            'author' => '<div class="comment-form-author data-user">
                                <label for="author">' . __( 'Name' ) . ( $req ? ' <span class="required">*</span>' : '' ) . '</label>
                                <input class = "form-post-input" id="author" name="author" type="text" value=" ' . esc_attr( $commenter['comment_author'] ) . '" size="30"' . $aria_req . $html_req . ' />
                            </div>',
                            'email'  => '<p class="comment-form-email">
                                <label for="email">' . __( 'Email' ) . ( $req ? ' <span class="required">*</span>' : '' ) . '</label>
                                <input id="email" name="email" class = "form-post-input"' . ( $html5 ? 'type="email"' : 'type="text"' ) . ' value="' . esc_attr(  $commenter['comment_author_email'] ) . '" size="30" aria-describedby="email-notes"' . $aria_req . $html_req  . ' />
                            </p>',
                            'cookies' => '<p class="comment-form-cookies-consent warning">'.
                                sprintf( '<input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes"%s />', $consent ) .'
                                <label class="comment-notes" for="wp-comment-cookies-consent">'. __( 'Сохранить моё имя и email в этом браузере для следующих комментариев.' ) .'</label>
                            </p>',
                        ]
                    ];

                    comment_form($args);

                ?>

            </div>

            <div class="comments-block">
                <h2>Комментарии</h2>

                <?php 
                    $args = array('class' => 'avatar-img');
                    if( $comments = get_comments([
                        'post_id' => $post->ID,
                        'status' => 'approve'
                    ]) ){
                        foreach( $comments as $comment ){
                            ?>
                            
                            <div class="comment-element">
                                <div class="comment-avatar"><?php echo get_avatar( $comment -> comment_author_email, $size = 64, $default = '', $alt = '', array('class' => 'avatarka-img') ) ?></div>
                                <div class="comment-info">
                                    <div class="author-name">Автор: <?php echo $comment -> comment_author; ?><div class="comment-date"> Время публикации: <?php echo $comment -> comment_date; ?></div></div>
                                    <div class="the-comment"><?php echo $comment -> comment_content; ?></div>
                                </div>
                            </div>

                            <?php
                        }
                    }else {
                        if(comments_open($post->ID)){
                            echo "<div class='notice'>Комментариев пока нет</div>";
                        } else {
                            echo "<div class='notice'>Комментарии закрыты</div>";
                        }
                        
                    }
                ?>

            </div>
            
        </div>
        
        <div class="right-menu-projects">
            <?php
                $cat = get_the_category();
                $currentCat = $cat[0]->term_id;
                query_posts( "cat=$currentCat" );

                // Цикл WordPress
                if( have_posts() ){
                    while( have_posts() ){
                        the_post();
                        handlingStr(get_the_title(), get_permalink(), 'post-from-postPage');
                        ?>
                            <!-- <a href="<?php the_permalink(); ?>" class="post-from-postPage"><?php
                                the_title(); 
                            ?></a> -->
                        <?php
                    }
                    wp_reset_query();
                } 
            ?>
        </div>
        
    </main>
    <script src="<?php bloginfo('template_url')?>/assets/js/post.js"></script>
    </body>
</html>