# A sample Guardfile
# More info at https://github.com/guard/guard#readme
#
# on vagrant guard has to be started with `bundle exec guard -p` to use
# polling according to http://stackoverflow.com/a/12122612/1357024

guard 'bundler' do
  watch('Gemfile')
end

group :local do

  guard 'rspec' do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  end

end
