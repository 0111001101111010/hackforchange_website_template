jQuery(document).ready(function($) {

	if( $('.hackforathens-datatable').length > 0 ){
		$.each( $('.hackforathens-datatable'), function(){
			$(this).dataTable({
				"bJQueryUI": true,
				"sPaginationType": "full_numbers",
				"iDisplayLength": 25
			});
		});
	}
});