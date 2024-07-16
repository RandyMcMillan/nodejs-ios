import * as http from 'http';
var versions_server = http.createServer( (request, response) => {
  response.end('Versions: ' + JSON.stringify(process.versions));
});
versions_server.listen(3001);

import { generateSecretKey, getPublicKey } from 'nostr-tools/pure'

let sk = generateSecretKey() // `sk` is a Uint8Array
let pk = getPublicKey(sk) // `pk` is a hex string
var sk_server = http.createServer( (request, response) => {
  response.end('sk: ' + JSON.stringify(sk));
});
sk_server.listen(3002);

var pk_server = http.createServer( (request, response) => {
  response.end('pk: ' + JSON.stringify(pk));
});
pk_server.listen(3003);
