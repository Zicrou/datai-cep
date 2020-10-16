//**************************************************
// Fonction d'affichage du formulaire de paiement de fonction du mode
//*********************************************** */
function getmodepaiement() {
    var modePaieId = document.getElementById("agent_mode_paiement_id").value
    if (modePaieId == 1 ) {
        document.getElementById("mode_banque").style.display="none"
        document.getElementById("mode_billeteur").style.display="block"
    }else if(modePaieId == 2 ){
        document.getElementById("mode_billeteur").style.display="none"
        document.getElementById("mode_banque").style.display="block"
    }else{
        document.getElementById("mode_billeteur").style.display="none"
        document.getElementById("mode_banque").style.display="none"
    }
}
//**************************************************
// FIN Fonction d'affichage du formulaire de paiement de fonction du mode
//*********************************************** */

//**************************************************
// DEBUT Fonction de tri agence/banque
//*********************************************** */
function getIdBanque() {
    var banqueId = document.getElementById("agent_banque_id").value
    if (banqueId == "") {
        $("#agent_agence_id").children().remove();
        var agences = $('.agences').data('agences')
        var listagence = [];
        $.each(agences,function(key, value) {
            listagence += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#agent_agence_id").append(listagence).prepend("<option value='' selected='selected'></option>");
    }else{
        $.ajax({
            url: "/agents/agencebybanque",
            type: "GET",
            data: {banqueID: banqueId},
            success: function(data) {
                $("#agent_agence_id").children().remove();
                var listagence = [];
                $.each(data,function(key, value) {
                    listagence += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#agent_agence_id").append(listagence).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}
//**************************************************
// FIN Fonction de tri agence/banque
//*********************************************** */