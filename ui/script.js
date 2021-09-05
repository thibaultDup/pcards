$(function(){
	window.onload = function(e){
		window.addEventListener('message', function(event){

			var item = event.data;
			/* Create a Jquery selector by concataneting a # with the name of the card wich is sent by our display event */
			var selector = '#'+item.type
			
			if (item != undefined)
			{
				
				if(item.display == true)
				{
					$(selector).delay(100).fadeIn( 0 ); 
				}
				else if (item.display == false) 
				{
					$(selector).fadeOut("slow"); 
				}
				
			}
		
		});
	};
});