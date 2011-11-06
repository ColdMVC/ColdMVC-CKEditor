/**
 * @accessors true
 * @singleton true
 * @extends coldmvc.rendering.HTMLRenderer
 */
component {
	
	/**
	 * @inject coldmvc
	 */
	property requestScope;

	/**
	 * @inject coldmvc
	 */
	property coldmvc;

	/**
	 * @inject coldmvc
	 */
	property fileSystem;

	/**
	 * @events applicationStart
	 */
	public void function copyAssets() {

		var source = expandPath("/plugins/ckeditor/lib/ckeditor/");
		var destination = expandPath("/public/plugins/ckeditor/");

		// copy the assets over to the public directory
		if (!fileSystem.directoryExists(destination)) {
			fileSystem.directoryCopy(source, destination);
		}

	}

	public string function render() {

		// configure the arguments
		configure(arguments);

		// build out a normal textarea
		var html = coldmvc.form.textarea(argumentCollection=arguments);
		
		var cache = requestScope.getNamespace("ckeditor");
		
		// check to see if the js has already been rendered
		var rendered = cache.getValue("rendered", false);
		
		// if the js hasn't been rendered
		if (!rendered) {

			// flag it
			cache.setValue("rendered", true);

			// build out the full url to the editor
			var src = coldmvc.config.assetPath("/plugins/ckeditor/ckeditor.js");

			// include the script
			html = html & '<script type="text/javascript" src="#src#"></script>';

		}

		// replace the textarea with an editor
		html = html & '<script type="text/javascript">CKEDITOR.replace(''#jsStringFormat(arguments.id)#'')</script>';

		return trim(html);

	}

}