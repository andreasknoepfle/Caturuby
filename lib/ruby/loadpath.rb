Dir.glob(File.join("lib", "ruby", "*", "lib")).each do |lib|
  $LOAD_PATH.unshift(File.expand_path(lib))
end