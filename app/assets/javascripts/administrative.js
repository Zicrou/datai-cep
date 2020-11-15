function getIDRegion() {
    var regionid = document.getElementById("administrative_region_id").value
    var regionID = regionid
    if (regionID == "") {
        $("#administrative_etablissement_id").children().remove();
        var etablissements = $('.etablissements').data('etablissements')
        var listetablissement = [];
        $.each(etablissements,function(key, value) {
            listetablissement += '<option value="' + value.id+ '">' + value.nom + '</option>';
        });
        $("#administrative_etablissement_id").append(listetablissement).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/administratives/filtered",
            type: "GET",
            data: {regionId: regionID},
            success: function(data) {
                $("#administrative_etablissement_id").children().remove();
                var listetablissement = [];
                $.each(data,function(key, value) {
                    listetablissement += '<option value="' + value.id+ '">' + value.nom + '</option>';
                });
                $("#administrative_etablissement_id").append(listetablissement).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}