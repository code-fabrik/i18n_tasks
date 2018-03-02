namespace :i18n_tasks do
  desc "Creates AR i18n locales"
  task create_activerecord_locales: :environment do
    Rails.application.eager_load!

    models = {}
    attributes = {}

    ApplicationRecord.descendants.each do |model|
      model_name = model.name.underscore
      models.merge!({ model_name => model_name.capitalize })
      attr = {}
      model.column_names.each do |column_name|
        attr.merge!({ column_name => column_name.capitalize })
      end
      attributes.merge!({ model_name => attr})
    end

    full = {
      'template' => {
        'activerecord' => {
          'models' => models,
          'attributes' => attributes
        }
      }
    }

    File.write(File.join(Rails.root, 'config', 'locales', 'template.yml'), full.to_yaml)
  end
end
