basedir = File.expand_path(File.dirname(__FILE__))
libdir = "#{basedir}/lib"
$LOAD_PATH.unshift(basedir) unless $LOAD_PATH.include?(basedir)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

# Set the environment so we run under the 'spec' settings
RSpec.configure do |c|
  c.add_setting :whereami
  c.whereami = ENV['whereami'] || 'spec'
  ENV['whereami'] = c.whereami
end
