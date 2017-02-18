def trans(pre)
  filename = pre ? "pokemon-prefix.yaml" : "pokemon.yaml"
  id = 0

  File.open(filename) do |source|
  File.open("translations/id/#{filename}", "w") do |dest|
    source.each_line do |line|
      dest.puts line =~ /\s{2}-\sname:\s/ ? "#{$&}#{pre ? "pokemon-" : ""}#{"%04d" % id += 1}" : line
      # if m = (line.match /\s{2}-\sname:\s/)
      # if line =~ /\s{2}-\sname:\s/
      #   puts $&
      #   # puts "#{$1}#{pre ? "prefix-" : ""}#{++id}"
      # else
      #   puts line
      # end
    end
  end
  end
end

trans(false)
trans(true)