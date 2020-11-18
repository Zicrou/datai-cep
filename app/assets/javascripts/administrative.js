//Function Region on change

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
//Function Etablissement on change

function getIDEtablissement() {
    var etablissementid = document.getElementById("administrative_etablissement_id").value
    var etablissementID = etablissementid
    if (etablissementID == "") {
        $("#administrative_direction_id").children().remove();
        var directions = $('.directions').data('directions')
        var listedirection = [];
        $.each(directions,function(key, value) {
            listedirection += '<option value="' + value.id+ '">' + value.name + '</option>';
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

//Function Direction on change

function getIDDirection() {
    var directionid = document.getElementById("administrative_direction_id").value
    var directionID = directionid
    if (directionID == "") {
        $("#administrative_service_id").children().remove();
        var services = $('.services').data('services')
        var listeservice = [];
        $.each(services,function(key, value) {
            listeservice += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#administrative_service_id").append(listeservice).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/administratives/filtered",
            type: "GET",
            data: {directionId: directionID},
            success: function(data) {
                $("#administrative_service_id").children().remove();
                var listeservice = [];
                $.each(data,function(key, value) {
                    listeservice += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#administrative_service_id").append(listeservice).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}
//Function Service on change
function getIDService() {
    var serviceid = document.getElementById("administrative_service_id").value
    var serviceID = serviceid
    if (serviceID == "") {
        $("#administrative_emploi_id").children().remove();
        var emplois = $('.emplois').data('emplois')
        var listeemploi = [];
        $.each(emplois,function(key, value) {
            listeemploi += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#administrative_emploi_id").append(listeemploi).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/administratives/filtered",
            type: "GET",
            data: {serviceId: serviceID},
            success: function(data) {
                $("#administrative_emploi_id").children().remove();
                var listeemploi = [];
                $.each(data,function(key, value) {
                    listeemploi += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#administrative_emploi_id").append(listeemploi).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}

//Function Indice on change
function getIDIndice() {
    var indiceid = document.getElementById("administrative_indice_id").value
    var indiceID = indiceid
    if (indiceID == "") {
        $("#administrative_grade_id").children().remove();
        var grades = $('.grades').data('grades')
        var listegrade = [];
        $.each(grades,function(key, value) {
            listegrade += '<option value="' + value.id+ '">' + value.code + '</option>';
        });
        $("#administrative_grade_id").append(listegrade).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/administratives/filtered",
            type: "GET",
            data: {indiceId: indiceID},
            success: function(data) {
                $("#administrative_grade_id").children().remove();
                var listegrade = [];
                $.each(data,function(key, value) {
                    listegrade += '<option value="' + value.id+ '">' + value.code + '</option>';
                });
                $("#administrative_grade_id").append(listegrade).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}