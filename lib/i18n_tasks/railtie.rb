class I18nTasks::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/i18n.rake'
  end
end