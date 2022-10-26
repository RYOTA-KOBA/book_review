# frozen_string_literal: true

namespace :ridgepole do
  desc 'ridgepole --apply'
  task apply: :environment do
    ridgepole! '--apply'
    Rake::Task['db:schema:dump'].invoke
    Rake::Task['annotate_models'].invoke if Rails.env.development?
  end

  private

  def schemafile
    Rails.root.join('Schemafile')
  end

  def configfile
    Rails.root.join('config/database.yml')
  end

  def ridgepole!(*args)
    system "bundle exec ridgepole #{[options + args].join(' ')}"
  end

  def options
    [
      "-E #{Rails.env}",
      "-c #{configfile}",
      "-f #{schemafile}",
      '--bulk-change',
      '--drop-table'
    ]
  end
end
