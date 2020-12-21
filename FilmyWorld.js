function movietypeaudio(obj){
      var id=obj;
	var typeaudio="";
	switch(id){
	case "hollywood":
	typeaudio="Hollywood";
	break;
	case "bollywood":
	typeaudio="Bollywood";
	break;
        case "hindi":
	typeaudio="Hindi";
	break;
        case "english":
	typeaudio="English";
	break;
	case "dual":
	typeaudio="Dual Audio [Hindi - English]";
	break;
        case "480p":
	typeaudio="480p";
	break;
        case "720p":
	typeaudio="720p";
	break;
        case "1080p":
	typeaudio="1080p";
	break;
	default:
	typeaudio="nothing is selected";
	break;
	}
	
document.getElementById("typeaudio").value=typeaudio;
}

function alertMessage(){
    alert("LogIn or Register to get full access.");
}
