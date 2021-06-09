Rails.application.config.session_store :active_record_store, key: (Rails.env.production? ? '_team12_project_session_id' : (Rails.env.demo? ? '_team12_project_demo_session_id' : '_team12_project_dev_session_id')),
                                                             secure: (Rails.env.demo? || Rails.env.production?),
                                                             httponly: true
