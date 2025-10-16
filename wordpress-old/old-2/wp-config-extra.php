<?php
/**
 * WordPress Config Extra Development
 * @author Dayan Bravo <dayan3847@gmail.com>
 */

/** URLs */
if (!defined('WP_HOME')) define('WP_HOME', getenv_docker('WORDPRESS_WP_HOME', 'http://localhost/'));
if (!defined('WP_SITEURL')) define('WP_SITEURL', getenv_docker('WORDPRESS_WP_SITEURL', 'http://localhost/'));
