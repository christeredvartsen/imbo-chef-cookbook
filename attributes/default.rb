# This file is part of the Imbo cookbook
#
# (c) Christer Edvartsen <cogo@starzinger.net>
#
# For the full copyright and license information, please view the LICENSE file
# that was distributed with this source code.

default["imbo"]["version"] = "0.1.0"
default["imbo"]["dir"] = "/var/www/imbo"

default["imbo"]["database"]["driver"] = "mongodb"
default["imbo"]["database"]["server"] = "mongodb://localhost:27017"
default["imbo"]["database"]["databaseName"] = "imbo"
default["imbo"]["database"]["collectionName"] = "images"

default["imbo"]["database"]["driver"] = "gridfs"
default["imbo"]["database"]["server"] = "mongodb://localhost:27017"
default["imbo"]["database"]["databaseName"] = "imbo_storage"

default["imbo"]["apache"]["port"] = 80
default["imbo"]["apache"]["servername"] = "imbo.yourdomain.com"
default["imbo"]["apache"]["documentroot"] = "/var/www/imbo"
default["imbo"]["apache"]["serveralias"] = []

default["imbo"]["apache"]["logs"]["access"] = "/var/www/apache2/imbo-access_log"
default["imbo"]["apache"]["logs"]["error"] = "/var/www/apache2/imbo-error_log"
