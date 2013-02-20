# This file is part of the Imbo cookbook
#
# (c) Christer Edvartsen <cogo@starzinger.net>
#
# For the full copyright and license information, please view the LICENSE file
# that was distributed with this source code.

name             "imbo"
maintainer       "Christer Edvartsen"
maintainer_email "cogo@starzinger.net"
license          "MIT"
description      "Installs and configures Imbo"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"
recipe           "imbo", "Installs and configures Imbo"

["debian", "ubuntu"].each do |os|
  supports os
end
