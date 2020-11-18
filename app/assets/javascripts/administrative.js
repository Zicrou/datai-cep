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

function getIDEtablissement() {
    var etablissementid = document.getElementById("administrative_etablissement_id").value
    var etablissementID = etablissementid
    if (etablissementID == "") {
        $("#administrative_direction_id").children().remove();
        var directions = $('.directions').data('directions')
        var listedirection = [];
        $.each(directions,function(key, value) {
            listedirection += '<option value="' + value.id+ '">' + value.nom + '</option>';
        });
        $("#administrative_direction_id").append(listedirection).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/administratives/filtered",
            type: "GET",
            data: {etablissementId: etablissementID},
            success: function(data) {
                $("#administrative_direction_id").children().remove();
                var listedirection = [];
                $.each(data,function(key, value) {
                    listedirection += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#administrative_direction_id").append(listedirection).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}