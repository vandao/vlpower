/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	console.log(config);
 
	config.extraPlugins = 'codemirror,wenzgmap,youtube,googledocs';
	config.codemirror_theme = 'rubyblue';  // Go here for theme names: http://codemirror.net/demo/theme.html
	config.codemirror = {
		lineNumbers: true,
		highlightActiveLine: true,
		enableSearchTools: true,
		showSearchButton: true,
		showFormatButton: true,
		showCommentButton: true,
		showUncommentButton: true,
		showAutoCompleteButton: true
	};

	config.toolbar = [
		['Source'],
		['Maximize'],
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['NumberedList','BulletedList','-','Outdent','Indent'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
		'/',
		['Undo','Redo'],
		['Font','FontSize'],
		['TextColor','BGColor'],
		['Link','Unlink','Anchor'],
		['Image','Table','HorizontalRule','SpecialChar','oembed']
	];
	
	// Comment out or remove the 2 lines below if you want to enable the Advanced Content Filter	
	config.allowedContent = true;
	config.extraAllowedContent = '*{*}';	
};