
# Warbler web application assembly configuration file
Warbler::Config.new do |config|
  # ...

  # Additional Java .jar files to include.  Note that if .jar files are placed
  # in lib (and not otherwise excluded) then they need not be mentioned here.
  # JRuby and JRuby-Rack are pre-loaded in this list.  Be sure to include your
  # own versions if you directly set the value
  # config.java_libs += FileList["lib/java/*.jar"]

  # If set to true, moves jar files into WEB-INF/lib.
  # Prior to version 1.4.2 of Warbler this was done by default.
  # But since 1.4.2 this config defaults to false.
  # Alternatively, this option can be set to a regular expression, which will
  # act as a jar selector -- only jar files that match the pattern will be
  # included in the archive.
  config.move_jars_to_webinf_lib = /jruby\-(core|stdlib|rack)/

  # Value of RAILS_ENV for the webapp -- default as shown below
  # config.webxml.rails.env = ENV['RAILS_ENV'] || 'production'

  #config.webxml.jruby.runtime.env = "DATABASE_URL=mysql://11.1.1.11/mydb\n" <<
  #      'PATH=/home/tomcat/bin:/usr/local/bin:/opt/bin,HOME="/home/tomcat"'

  config.features = %w(executable compiled)

  # When using the 'compiled' feature and specified, only these Ruby
  # files will be compiled. Default is to compile all \.rb files in
  # the application.
  config.compiled_ruby_files = FileList['app/**/*.rb']

  # When set it specify the bytecode version for compiled class files
  # config.bytecode_version = "1.7"
end
