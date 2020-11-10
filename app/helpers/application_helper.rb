module ApplicationHelper
    def login_helper style=''
        if current_user.is_a?(GuestUser) 
          link_to "", "#"
          (link_to "Se Connecter", new_user_session_path, class: style) +
          " ".html_safe +
          (link_to "S'inscrire", new_user_registration_path, class: style)
      else
          link_to "Déconnexion", destroy_user_session_path,method: :delete, class: style, style:"margin-left:10%;"
        end 
      end
      def copyright_generator
        @copyright = ZicrouViewTool::Renderer.copyright 'SK8Z-¯-CLBK', 'All rights reserved'
        #DevcampViewTool::Renderer.copyright 'Zicrou SECK', 'All rights reserved'
      end
      

#####################################################
### Nav Out Of Referentiels                       ###

def nav_H_item
  [
    {
      url: root_path,
      title: "Home"
    },
    {
      url: agents_path,
      title: "Les Agents"
    },
  ]
end

def nav_H style, tag_type
  nav_links = ''

  nav_H_item.each do |item|
    nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
  end
  nav_links.html_safe
end

###END###
#####################################################

###

#####################################################
### Nav In Referentiels                       ###
      def nav_item
        [
          {
            url: root_path,
            title: "Refs"
          },
          {
            url: regions_path,
            title: "Regions"
          },
          {
            url: departements_path,
            title: "Departements"
          },
          {
            url: mariers_path,
            title: "Marier"
          },
          {
            url: sexes_path,
            title: "Sexe"
          },
          {
            url: titres_path,
            title: "Titre"
          },
          {
            url: banques_path,
            title: "Banques"
          },
          {
            url: agences_path,
            title: "Agences"
          },
          {
            url: billeteurs_path,
            title: "Billeteurs"
          },
          {
            url: mode_paiements_path,
            title: "Modes de Paiement"
          },
          {
            url: typedetablissements_path,
            title: "Types d'etablissement"
          },
          {
            url: etablissements_path,
            title: "Etablissements"
          },
          {
            url: directions_path,
            title: "Directions"
          },
          {
            url: services_path,
            title: "Services"
          },
          {
            url: emplois_path,
            title: "Emplois"
          },
          {
            url: postedepaies_path,
            title: "Postes de paie"
          },
          {
            url: echellons_path,
            title: "Echellons"
          },
          {
            url: corps_path,
            title: "Corps"
          },
        ]
      end

      def nav_helper style, tag_type
        nav_links = ''

        nav_item.each do |item|
          nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
        end
        nav_links.html_safe
      end


      ###END###
#####################################################



      def active? path
        "active" if current_page? path
      end
      
      def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])
        
        if alert
          alert_generator alert
        end
      end
    
      def alert_generator msg
        js add_gritter(msg, title: "DTAI-CEP...", sticky: false, time: 4000)
      end
end
