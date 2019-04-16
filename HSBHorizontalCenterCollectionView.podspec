#
# Be sure to run `pod lib lint HSBHorizontalCenterCollectionView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HSBHorizontalCenterCollectionView'
  s.version          = '0.0.1'
  s.summary          = 'HSBHorizontalCenterCollectionView.'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UICollectionView extention function and use ScrollViewWillEndDragging function
                       DESC

  s.homepage         = 'https://github.com/hsb9kr/HSBHorizontalCenterCollectionView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Red' => 'hsb9kr@gmail.com' }
  s.source           = { :git => 'https://github.com/hsb9kr/HSBHorizontalCenterCollectionView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'HSBHorizontalCenterCollectionView/Classes/*.swift'
end
