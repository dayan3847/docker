<?php
/**
 * WordPress Config Extra by Environments
 * @see    https://api.wordpress.org/secret-key/1.1/salt/
 * @author Dayan Bravo <dayan3847@gmail.com>
 */

switch (getenv('ENV')) {
	case 'master':
		/** URLs */
		define('WP_HOME', 'https://wp.yomiclick.com/');
		define('WP_SITEURL', 'https://wp.yomiclick.com/');
		/** Debugging */
		define('WP_DEBUG_LOG', true);
		define('WP_DEBUG_DISPLAY', false);
		@ini_set('display_errors', 0);
		/** Multisite */
		define('DOMAIN_CURRENT_SITE', 'wp.yomiclick.com');
		/** JWT Auth */
		define('WPGRAPHQL_LOGIN_JWT_SECRET_KEY', 'dRD#b>d|_7#t%0#]U[YLqo4IJp:G{/c|Cg8A0-3kaH4=pJJEITB~]a|mmSx&Bk_e');
		/** @see \WPGraphQL\Login\Auth\TokenManager::get_secret_key */
		define('GRAPHQL_LOGIN_JWT_SECRET_KEY', 'Y2eE+P#DH/a<w<2u]n$Hrl,Ban[##,.Xd |QN6a$x4|g>9A>R7LQ-h|,<(B;]A-]');
		/** https://wordpress.org/plugins/headless-mode/ */
		define('HEADLESS_MODE_CLIENT_URL', 'https://shop.yomiclick.com');
		break;
	case 'staging':
		/** URLs */
		define('WP_HOME', 'https://wp.staging.yomiclick.com/');
		define('WP_SITEURL', 'https://wp.staging.yomiclick.com/');
		/** Debugging */
		define('WP_DEBUG_LOG', true);
		define('WP_DEBUG_DISPLAY', false);
		@ini_set('display_errors', 0);
		/** Multisite */
		define('DOMAIN_CURRENT_SITE', 'wp.staging.yomiclick.com');
		/** JWT Auth */
		define('WPGRAPHQL_LOGIN_JWT_SECRET_KEY', 'a$InNt+MIm#?d3.i(i^l]|Yf]%o&V@l*2c 2#XK=02T1^HRW=AAh+| JTL|}WytU');
		/** @see \WPGraphQL\Login\Auth\TokenManager::get_secret_key */
		define('GRAPHQL_LOGIN_JWT_SECRET_KEY', 'Y2eE+P#DH/a<w<2u]n$Hrl,Ban[##,.Xd |QN6a$x4|g>9A>R7LQ-h|,<(B;]A-]');
		/** https://wordpress.org/plugins/headless-mode/ */
		define('HEADLESS_MODE_CLIENT_URL', 'https://shop.staging.yomiclick.com');
		break;
	default:
		exit;
}

/** Multisite */
if (!defined('WP_ALLOW_MULTISITE')) define('WP_ALLOW_MULTISITE', true);
if (WP_ALLOW_MULTISITE && !defined('MULTISITE')) {
	define('MULTISITE', true);
	if (MULTISITE) {
		define('SUBDOMAIN_INSTALL', false);
		define('PATH_CURRENT_SITE', '/');
		define('SITE_ID_CURRENT_SITE', 1);
		define('BLOG_ID_CURRENT_SITE', 1);
	}
}
