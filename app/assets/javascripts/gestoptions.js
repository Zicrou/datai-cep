function getmodepaiement() {
    var modePaieId = document.getElementById("agent_mode_paiement_id").value
    if (modePaieId == 1 ) {
        alert("Hi!")
        $("#agent_mode_billeteur").display().none()
        //$("#agent_mode_billeteur").children().remove();
        //var departements = $('.departements').data('departements')
        //var listdeparetement = [];
        //$.each(departements,function(key, value) {
        //    listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
        //});
        //$("#ouvrier_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
        
    }//else{
     //   $.ajax({
     //       url: "/ouvriers/filtered",
     //       type: "GET",
     //       data: {regionId: regionID},
     //       success: function(data) {
     //           $("#ouvrier_departement_id").children().remove();
     //           var listdeparetement = [];
     //           $.each(data,function(key, value) {
     //               listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
     //           });
     //           $("#ouvrier_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
     //       }
     //   });
    //}
}