Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'azimuth_spree_easy_contact'
  s.version     = '1.0.9'
  s.summary     = 'So people can, um, contact you.'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'
  s.license     = 'BSD'

  s.authors           = ['Mathias Standaert', 'Day Waterbury', 'Rebekah Waterbury' 'Christopher Maujean']
  s.date              = %q(2011-02-08)
  s.email             = 'day@azimuthonline.com'
  s.homepage          = %q{https://github.com/azimuth/spree-easy-contact}

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'public/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.extra_rdoc_files = ['README.md']
  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.40.0')
  s.add_dependency('recaptcha')
end
