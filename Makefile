.PHONY: kong_bash
kong_bash:
	docker exec -it kong /bin/bash

.PHONY: kong_install_kong_pdk
kong_install_kong_pdk:
	docker exec -it kong /bin/bash -c "pip3 install kong-pdk"


.PHONY: kong_upload_plugins_examples
kong_install_kong_pdk:
	docker exec -it kong /bin/bash -c "cd /opt && git clone https://github.com/Kong/kong-python-pdk"

