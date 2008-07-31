Gem::Specification.new do |s|
  s.name = %q{PostloadModels}
  s.version = "1.0.0"
  s.date = %q{2008-07-31}
  s.summary = %q{Observers will now register in one of two places}
  s.email = ["christian.weis@imedo.de"]
  s.homepage = %q{Web: http://opensource.imedo.de/pages/show/postload_models}
  s.rubyforge_project = %q{postloadmodels}
  s.description = %q{Observers will now register in one of two places. If the class is already loaded then it will work as usual, telling the class that it wants to observe the object’s changes. The magic now happens if the class is not yet loaded, because then the observer will just register with a hash, whose key is the class name, and the class itself will check this hash when being loaded for the first time. All observers in there will be hooked onto the class at load time – but at the model’s load time, not the observer’s.}
  s.has_rdoc = true
  s.authors = ["Christian M. Weis"]
  s.files = ["History.txt", "init.rb", "Manifest.txt", "MIT-LICENSE", "Rakefile", "README.txt", "lib/postload_models.rb", "lib/postload_models/cacher.rb", "lib/postload_models/loader.rb", "test/postload_models_test.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency(%q<hoe>, [">= 1.5.1"])
end
