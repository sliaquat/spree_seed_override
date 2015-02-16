module SpreeSeedOverride
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../../db", __FILE__)

      def copy_files
        puts 'COPYING FILES'
        copy_file "default/spree/countries.rb", "db/default/spree/countries.rb"
        copy_file "default/spree/roles.rb", "db/default/spree/roles.rb"
        copy_file "default/spree/stores.rb", "db/default/spree/stores.rb"
        copy_file "default/spree/zones.rb", "db/default/spree/zones.rb"
        copy_file "default/spree/states.rb", "db/default/spree/states.rb"
      end

      def replace_code
        puts 'APPENDING SEEDS.rb'
        gsub_file 'db/seeds.rb', 'Spree::Core::Engine.load_seed if defined?(Spree::Core)', '#Spree::Core::Engine.load_seed if defined?(Spree::Core)'
        append_file 'db/seeds.rb', "default_path = File.join(File.dirname(__FILE__), 'default')\n Rake::Task['db:load_dir'].reenable \n Rake::Task['db:load_dir'].invoke(default_path)"
      end

    end
  end
end
