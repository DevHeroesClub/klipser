require 'webrick'

desc "Compile to build/"
task :compile do
  system('rm -rf ./build/')
  system('mkdir -p ./build/')

  template = File.read('main.html')

  Dir["pages/**/*.html"].each do |f|
    file_parts = f.split('/')
    path = file_parts[1..-2].join('/')
    name = file_parts[-1]

    build_path = "./build/#{path}/#{name}"

    system("mkdir -p ./build/#{path}/")

    File.open(build_path, 'w+') do |f|
      puts "Compiling #{path}/#{name}..."
      content = File.read(file_parts.join("/"))
      f.write(template.gsub('{{content}}', content))
    end
  end
  puts "DONE."
end

desc 'Run doc webserver'
task :serve do
  root = File.expand_path './build/'
  server = WEBrick::HTTPServer.new Port: 3000, DocumentRoot: root
  trap 'INT' do server.shutdown end
  server.start
end

task :default => :serve
