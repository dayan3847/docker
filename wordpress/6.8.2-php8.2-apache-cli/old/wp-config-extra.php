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
	case 'local':
		/** URLs */
		if ('localhost' === strval($_SERVER["HTTP_HOST"] ?? '')) {
			define('WP_HOME', 'http://localhost/');
			define('WP_SITEURL', 'http://localhost/');
		} elseif ('localhost:8080' === strval($_SERVER["HTTP_HOST"] ?? '')) {
			define('WP_HOME', 'http://localhost:8080/');
			define('WP_SITEURL', 'http://localhost:8080/');
		} else {
			define('WP_HOME', 'https://wp.local.yomiclick.com/');
			define('WP_SITEURL', 'https://wp.local.yomiclick.com/');
		}
		/** Debugging */
		define('WP_DEBUG_LOG', true);
		define('WP_DEBUG_DISPLAY', true);
		@ini_set('display_errors', 1);
		/** Multisite */
		define('DOMAIN_CURRENT_SITE', 'wp.local.yomiclick.com');
		/** JWT Auth */
		define('WPGRAPHQL_LOGIN_JWT_SECRET_KEY', 'Y2eE+P#DH/a<w<2u]n$Hrl,Ban[##,.Xd |QN6a$x4|g>9A>R7LQ-h|,<(B;]A-]');
		/** @see \WPGraphQL\Login\Auth\TokenManager::get_secret_key */
		define('GRAPHQL_LOGIN_JWT_SECRET_KEY', 'Y2eE+P#DH/a<w<2u]n$Hrl,Ban[##,.Xd |QN6a$x4|g>9A>R7LQ-h|,<(B;]A-]');
		/** https://wordpress.org/plugins/headless-mode/ */
		define('HEADLESS_MODE_CLIENT_URL', 'https://shop.local.yomiclick.com');
		/** https://wordpress.org/plugins/wp-graphql/ */
		define('GRAPHQL_DEBUG', true);
		break;
	default:
		// TODO: Add error message
		exit;
}

if (file_exists(__DIR__ . '/wp-content/wp-config-extra-content.php')) {
	require_once __DIR__ . '/wp-content/wp-config-extra-content.php';
}

/** Multisite */
define('WP_ALLOW_MULTISITE', true);
# BEGIN Comment to install fist time
//define('MULTISITE', true);
//define('SUBDOMAIN_INSTALL', false);
//$base = '/';
//define('PATH_CURRENT_SITE', '/');
//define('SITE_ID_CURRENT_SITE', 1);
//define('BLOG_ID_CURRENT_SITE', 1);
# END Comment to install fist time
