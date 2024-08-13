require 'formula'

class SpringBoot < Formula
  homepage 'https://spring.io/projects/spring-boot'
  url 'https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-cli/2.7.5/spring-boot-cli-2.7.5-bin.tar.gz'
  version '2.7.5'
  sha256 'a34052b0da3946671a1805a1ce8a747d16e812a90cd19f1a59b4d1e812d4035b'
  url 'https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-cli/2.7.6/spring-boot-cli-2.7.6-bin.tar.gz'
  version '2.7.6'
  sha256 '39f9edb89ad3c694cb1b6e7b111591101ba0c7cdc2901a8365289746b105bd52'
  head 'https://github.com/spring-projects/spring-boot.git'

  if build.head?
    depends_on 'maven' => :build
  end
  def install
    if build.head?
      Dir.chdir('spring-boot-cli') { system 'mvn -U -DskipTests=true package' }
      root = 'spring-boot-cli/target/spring-boot-cli-*-bin/spring-*'
    else
      root = '.'
    end
    bin.install Dir["#{root}/bin/spring"]
    lib.install Dir["#{root}/lib/spring-boot-cli-*.jar"]
    bash_completion.install Dir["#{root}/shell-completion/bash/spring"]
    zsh_completion.install Dir["#{root}/shell-completion/zsh/_spring"]
  end
end
