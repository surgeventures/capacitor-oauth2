require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'ByteowlsCapacitorOauth2'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/ByteowlsCapacitorOauth2/Source/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '12.0'
  s.dependency 'Capacitor'
  # Podspecs does not support private git repos, we are using
  # our private Cocoapods repo with fork.
  s.dependency 'FreshaOAuthSwift', '2.2.1'
  s.swift_version = '5.1'
end
