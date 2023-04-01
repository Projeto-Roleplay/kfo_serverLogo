$(function(){
    $('.Content').append(`<img src="https://cdn.discordapp.com/emojis/1044396061998973028.gif?size=96&quality=lossless" />`);
    window.addEventListener('message', (event) => {
        var item = event.data;

        if (item.type === 'ui') {
            if (item.display) {
                $('.Content').fadeIn(300);    
                
            } else {
                $('.Content').fadeOut(300);   

            }

        } else if (item.type == 'pos') {
            if (item.position == 'left') {
                changePosition('justify-content', 'flex-start')
                
            } else if (item.position == 'right') {
                changePosition('justify-content', 'flex-end')                
                
            } else if (item.position == 'center') {
                changePosition('justify-content', 'center')                

            } else if (item.position == 'off') {
                $('.Content').fadeOut(300);   

            } else if (item.position == 'on') {
                $('.Content').fadeIn(300);  

            }
        }

    });

});

function changePosition(key, value) {
    $('.Content').fadeOut(200);
    setTimeout(() => {
        $('.Content').css(key, value)
        
    }, 200);
    $('.Content').fadeIn(200); 
}