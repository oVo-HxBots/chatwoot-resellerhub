# This rake task was added by annotate_rb gem.

# Can set `ANNOTATERB_SKIP_ON_DB_TASKS` to be anything to skip this
if Rails.env.development? && ENV['ANNOTATERB_SKIP_ON_DB_TASKS'].nil? && Gem.loaded_specs['annotaterb']
  begin
    require 'annotaterb'
  rescue LoadError
    require 'annotate_rb'
  end

  AnnotateRb::Core.load_rake_tasks
end
