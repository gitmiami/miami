window.onload = function(){
	new Control.Slider("pointer", "sliderBG", {
		sliderValue : 0,
		onChange:function(value){
			$("result").innerHTML = Math.floor(value * 100)+"%";
		},
		onSlide:function(value){
			$("result").innerHTML = Math.floor(value * 100)+"%";
		}
	});
}
