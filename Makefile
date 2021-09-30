.PHONY: kong_bash
kong_bash:
	docker exec -it kong /bin/bash

.PHONY: kong_update_config
kong_update_config:
	docker cp kong.conf kong:/etc/kong/
