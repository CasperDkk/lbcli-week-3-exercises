# Create a native segwit address and get the public key from the address.
address=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
bitcoin-cli -regtest -rpcwallet=btrustwallet -named getaddressinfo address=$address | jq -r '.pubkey'