$(document).ready(function() {
	
	$(document).on('change', '#stanzaDaPrenotare', function(event){
		var prezzoNotte = $(this).find(':selected').data('prezzo-notte');
		console.log('PREZZO NOTTE '+prezzoNotte);
		var dateStart = $('#dataInizioPrenotazione').val();
		var dateEnd = $('#dataFinePrenotazione').val();
		if(dateStart != null && dateStart != undefined && dateEnd != null && dateEnd != undefined){
			var days = moment.duration(dateEnd.diff(dateStart)).asDays();
			var prezzoTotale = parseFloat(prezzoNotte)*parseInt(days);
		}
		
	});
	
	$(document).on('change', '#dataInizioPrenotazione', function(event){
		var prezzoNotte = $('#stanzaDaPrenotare').find(':selected').data('prezzo-notte');
		var dateStart = new moment($(this).val());
		var dateEnd = new moment($('#dataFinePrenotazione').val());
		if(dateStart != null && dateStart != undefined && !isNaN(dateStart) && dateEnd != null && dateEnd != undefined && !isNaN(dateEnd)){
			var days = moment.duration(dateEnd.diff(dateStart)).asDays();
			var prezzoTotale = parseFloat(prezzoNotte)*parseInt(days);
		}
		
	});
	
	$(document).on('change', '#dataFinePrenotazione', function(event){
		var prezzoNotte = $('#stanzaDaPrenotare').find(':selected').data('prezzo-notte');
		console.log('PREZZO NOTTE '+prezzoNotte);
		var dateStart = new moment($('#dataInizioPrenotazione').val());
		var dateEnd = new moment($(this).val());
		if(dateStart != null && dateStart != undefined && !isNaN(dateStart) && dateEnd != null && dateEnd != undefined && !isNaN(dateEnd)){
			var days = moment.duration(dateEnd.diff(dateStart)).asDays();
			var prezzoTotale = parseFloat(prezzoNotte)*parseInt(days);
			$('#prezzoTotale').text(prezzoTotale+' €');
			$('#prezzoTotaleValue').val(prezzoTotale);
		}
	});
	
});	

function validaPrenotazione(formName, azione) {
    var dataInizio;
    var dataFine;
    var numeroAdulti;
	var numeroBambini;
	var note;
	var tipoPernottamento;
	var stanza;
	var tipoStanza;
	var prezzoNotte;
	var totale;
	
    var hasErrors = false;

    // Recupero il valore del field con id="dataInizioPrenotazione"
    dataInizio = document.getElementById("dataInizioPrenotazione").value;
    
    // Recupero il valore del field con id="dataFinePrenotazione"
    dataFine = document.getElementById("dataFinePrenotazione").value;
    
    // Recupero il valore del field con id="numeroAdulti"
    numeroAdulti = document.getElementById("numeroAdulti").value;
	
	// Recupero il valore del field con id="numeroBambini"
    numeroBambini = document.getElementById("numeroBambini").value;
    
	// Recupero il valore del field con id="note"
    note = document.getElementById("note").value;
	
	// Recupero il valore del field con id="tipoPernottamento"
    tipoPernottamento = $('#tipoPernottamento option:selected').val();
	
	// Recupero il valore del field con id="tipoPernottamento"
    stanza = $('#stanzaDaPrenotare option:selected').val();
	
	// Recupero il tipo di stanza e il prezzo notte
	tipoStanza = $('#stanzaDaPrenotare option:selected').attr("data-tipo-stanza");
	prezzoNotte = $('#stanzaDaPrenotare option:selected').attr("data-prezzo-notte");
	
	// Recupero il totale della prenotazione
	totale = $('#prezzoTotaleValue').val();
	
	// Valorizzo i campi nascosti
	if(tipoStanza == 'stanza'){
		$('#prezzoCamera_h').val(prezzoNotte);
	} else{
		$('#prezzoSuite_h').val(prezzoNotte);
	}
	$('#stanza_h').val(stanza);
	$('#dataInizio_h').val(dataInizio);
	$('#dataFine_h').val(dataFine);
	$('#trattamento_h').val(tipoPernottamento);
	$('#numeroAdulti_h').val(numeroAdulti);
	$('#numeroBambini_h').val(numeroBambini);
	$('#prezzoTotale_h').val(totale);
	$('#note_h').val(note);
	
    
    if(hasErrors){
        return false;
    } else{
		document.forms[formName].action = azione;
        document.forms[formName].submit();
        return true;
    }
}