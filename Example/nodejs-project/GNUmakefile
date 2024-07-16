all:versions_server_3001 #versions_server_3001 #sk_server_3002 pk_server_3003
versions_server_3000:
	@node . 2>/dev/null & curl http://localhost:3000 && echo
versions_server_3001:
	@node main.mjs 2>/dev/null & curl http://localhost:3001 && echo
## sk_server_3002:
## 	@node main.mjs 2>/dev/null & curl http://localhost:3002 && echo
## pk_server_3003:
## 	@node main.mjs 2>/dev/null & curl http://localhost:3003 && echo
