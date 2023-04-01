$(function(){
    $(".Container").hide()
    window.onload = (e) => {
		window.addEventListener('message', (event) => {
			var item = event.data;
			if (item.type == "ui") {
                
				if (item.display === true) {
                    $(".Container").fadeIn(200);
                    
				} else {
                    $(".Container").fadeOut(200);

                }

			} else if (item.type == 'pos') {

                if (item.position == 'left') {


                } else if (item.position == 'right') {


                } else if (item.position == 'center') {


                } else if (item.position == 'off') {
                
                } else if (item.position == 'on') {

 
                }
            }

		});

	};

});