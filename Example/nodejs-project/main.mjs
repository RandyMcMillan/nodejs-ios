import * as http from 'http';

//import { generateSecretKey, getPublicKey } from 'nostr-tools/pure'

//let sk = generateSecretKey() // `sk` is a Uint8Array
//let pk = getPublicKey(sk) // `pk` is a hex string
//var sk_server = http.createServer( (request, response) => {
  //response.end('sk: ' + JSON.stringify(sk));
//});
//sk_server.listen(3002);

//var pk_server = http.createServer( (request, response) => {
  //response.end('pk: ' + JSON.stringify(pk));
//});
//pk_server.listen(3003);


var versions_server_3000 = http.createServer( (request, response) => {
  response.end('Versions: ' + JSON.stringify(process.versions));
});
versions_server_3000.listen(3000);


var versions_server_3001 = http.createServer( (request, response) => {
  response.end('Versions: ' + JSON.stringify(process.versions));
});
versions_server_3001.listen(3001);
