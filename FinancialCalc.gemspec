Gem::Specification.new do |s|
  s.name               = "hola"
  s.version            = "0.0.1"
  s.default_executable = "hola"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jacob Bunker", "Will Bunker"]
  s.date = %q{2012-03-17}
  s.description = %q{A gem for financial calculations}
  s.email = %q{jacob@thebunkers.com}
  s.files = ["Rakefile", "lib/FinancialCalc.rb", "lib/FinancialCalc", "lib/FinancialCalc/Translator.rb" , "bin/FinancialCalc"]
  s.test_files = ["test/test_FinancialCalc.rb"]
  s.homepage = %q{https://github.com/jacob1010/FinancialMath}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.8.18}
  s.summary = %q{Financial Calculator}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

