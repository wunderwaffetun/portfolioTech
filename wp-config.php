<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'WPCACHEHOME', '/var/www/Et-k.ru/wp-content/plugins/wp-super-cache/' );
define('WP_CACHE', true);
define( 'DB_NAME', 'portfoliodbase' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', 'QAlex@root' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'EZk9QV0C}HQG$AV+)eXKP*t-gniG++piws%3}kq)^4Zk,y<05}]N##HP@p(5corj' );
define( 'SECURE_AUTH_KEY',  'aX3q4cclM7?lY>s&Ex#1EiR]ejfNYEQ/7%fPUbn@lpqX)cSNKB|CKkAnY1<~dDA@' );
define( 'LOGGED_IN_KEY',    '8F[7UH )24^[DrU9X60w={m/q8D_%1v_MUiS,!7sANkxmiTF`|PY?]#`%{G$U67f' );
define( 'NONCE_KEY',        '.dGD{!s4j0BVXM:>&!s3a5pR$t`$)FjNe|zvw3zW]&eEe3myek=>hi>`p_pCl^8u' );
define( 'AUTH_SALT',        'j#;S#Rg0JLA{p)<-iO$-_*,TM(W@#&SEM#!8|eqa7L-_TWj<`JlSB.END`B(x>K=' );
define( 'SECURE_AUTH_SALT', 'owZ[!Xts@$0[%Bb$!`m2_u+B6Axn&W98(+(cvXe.vu=cGSt_T2pmw>.s91pSz-A@' );
define( 'LOGGED_IN_SALT',   'dvPx% (WA/Ig%vgMx05P~20qcI:h[kv0d@g7W6A9*6<oAts04,@?(Y3>ZJT^+zBV' );
define( 'NONCE_SALT',       'FQLV<?Thc5{X&6E{CRLvs}s/UXd?AFa1y0((bZyyLmnhHt;2xHdwW83jCuS&pi@S' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'eltech_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
