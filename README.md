# bitcoind-container
Docker container for running bitcoind.

## Usage
### Create image: 
```
sudo docker build -t infinityg/bitcoind:v1 .
```

### Run container (persistent; interactive; port mapping 18332): 

```
sudo docker run -p 18332:18332 -it infinityg/bitcoind:v1
```

### Once started, run the bitcoin daemon: 

```
bitcoind -daemon
```

### bitcoin-cli commands:

https://bitcoin.org/en/developer-reference#rpcs

### RPC example (run via REST client or curl)

```
URL: http://127.0.0.1:18332
Auth: bitcoinrpc | qwe123rty
Payload: {"jsonrpc":"1.0", "method":"getblockcount", "params":[]}

Response: {"result":"786822", "error":null, "id":null}
```
