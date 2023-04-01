$(function(){
    $(".Container").hide()
    window.onload = (e) => {
		window.addEventListener('message', (event) => {
            
			var item = event.data;
			if (item.type === "ui") {
                
				if (item.display === true) {
                    $(".Container").fadeIn(200);
                    
				} else{
                    $(".Container").fadeOut(200);

                }
			}
		});
	};
});

var audioPlayer = null
function playSound(sound){
    let soundFile = `./shared/Sounds/${sound}.ogg`
    if (audioPlayer != null){ audioPlayer.pause(); }
    audioPlayer = new Audio(soundFile);
    audioPlayer.volume = 0.3;
    audioPlayer.play();
}