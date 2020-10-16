json.extract! agent, :id, :matricule, :nom, :prenom, :date_naissance, :date_pec, :date_recrutement, :lieu_naissance, :nationalite, :email, :telephone, :adresse, :created_at, :updated_at
json.url agent_url(agent, format: :json)
