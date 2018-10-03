## Usage 

	docker run -d --restart=always \
		-p 8002:3000 \
		-v /opt/hma/var/grafana/grafana.db:/var/lib/grafana/grafana.db \
		-e "GF_SERVER_ROOT_URL=http://10.1.1.50:8002" \
		-e "GF_USERS_ALLOW_SIGN_UP=false" \
		-e "GF_USERS_DEFAULT_THEME=light" \
		-e "GF_AUTH_ANONYMOUS_ENABLED=true" \
		-e "GF_AUTH_BASIC_ENABLED=false" \
		-e "GF_AUTH_ANONYMOUS_ORG_ROLE=Admin" \
		dersimn/grafana:armhf
