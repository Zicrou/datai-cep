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
      url: "#",
      title: "Ajouter un agent"
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
            title: "Region"
          },
          {
            url: departements_path,
            title: "Departement"
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

      def active? path
        "active" if current_page? path
      end

      ###END###
#####################################################



      
      
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
