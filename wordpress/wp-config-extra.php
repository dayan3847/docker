<?php
/**
 * WordPress Config Extra Development
 * @author Dayan Bravo <dayan3847@gmail.com>
 */

/** URLs */
if (!defined('WP_HOME')) define('WP_HOME', getenv_docker('WORDPRESS_WP_HOME', 'http://localhost/'));
if (!defined('WP_SITEURL')) define('WP_SITEURL', getenv_docker('WORDPRESS_WP_SITEURL', 'http://localhost/'));

/** Debugging */
if (!defined('WP_DEBUG_LOG')) define('WP_DEBUG_LOG', filter_var(getenv_docker('WORDPRESS_WP_DEBUG_LOG', 'true'), FILTER_VALIDATE_BOOLEAN));
if (!defined('WP_DEBUG_DISPLAY')) define('WP_DEBUG_DISPLAY', filter_var(getenv_docker('WORDPRESS_WP_DEBUG_DISPLAY', 'true'), FILTER_VALIDATE_BOOLEAN));
@ini_set('display_errors', WP_DEBUG_DISPLAY ? 1 : 0);
