<?php

namespace Yoast\WP\SEO\Premium\Integrations;

/**
 * Class OpenGraph_Term_Archive.
 */
class OpenGraph_Term_Archive extends Abstract_OpenGraph_Integration {

	/**
	 * The prefix for the social title option.
	 *
	 * @var string
	 */
	const OPTION_TITLES_KEY_TITLE = 'social-title-tax-';

	/**
	 * The prefix for the social description option.
	 *
	 * @var string
	 */
	const OPTION_TITLES_KEY_DESCRIPTION = 'social-description-tax-';

	/**
	 * The prefix for the social image ID option.
	 *
	 * @var string
	 */
	const OPTION_TITLES_KEY_IMAGE_ID = 'social-image-id-tax-';

	/**
	 * The prefix for the social image URL option.
	 *
	 * @var string
	 */
	const OPTION_TITLES_KEY_IMAGE = 'social-image-url-tax-';

	/**
	 * Initializes the integration.
	 *
	 * This is the place to register hooks and filters.
	 *
	 * @return void
	 */
	public function register_hooks() {
		\add_filter( 'Yoast\WP\SEO\open_graph_title_term', [ $this, 'filter_title_for_subtype' ], 10, 2 );
		\add_filter( 'Yoast\WP\SEO\open_graph_description_term', [ $this, 'filter_description_for_subtype' ], 10, 2 );
		\add_filter( 'Yoast\WP\SEO\open_graph_image_id_term', [ $this, 'filter_image_id_for_subtype' ], 10, 2 );
		\add_filter( 'Yoast\WP\SEO\open_graph_image_term', [ $this, 'filter_image_for_subtype' ], 10, 2 );
	}
}
