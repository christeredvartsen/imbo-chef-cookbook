# This file is part of the Imbo cookbook
#
# (c) Christer Edvartsen <cogo@starzinger.net>
#
# For the full copyright and license information, please view the LICENSE file
# that was distributed with this source code.

["apache2", "php5", "php5-imagick", "php5-mongo", "mongodb"].each do |p|
  package p
end

execute "download-imbo" do
  Cwd File.dirname(node["imbo"]["dir"])
  command "git clone git://github.com/imbo/imbo.git -o 0.1.0 #{File.basename(node["imbo"]["dir"])}"
end

execute "install-dependencies" do
  Cwd node["imbo"]["dir"]
  command "curl https://getcomposer.org/installer | php"
  command "php composer.phar install"
end
