
function FB_show_brag_btn(reactor, lvl, score, stars){
    if(window.asm && window.asm.fb) asm.fb.showbrag(reactor, lvl, score, stars);
}

function FB_hide_brag_btn(){
	if(window.asm && window.asm.fb) asm.fb.hidebrag();
}

function Scroll_to_bottom(){
	 if(window.jQuery) $('html, body').animate({scrollTop: document.body.scrollHeight}, 'slow');
}