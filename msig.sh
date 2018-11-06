# assume nodeos is running on localhost with
# nodeos -d eos.data/producer_node --config-dir eos.data/producer_node logging.json -p eosio -e --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin --plugin eosio::http_plugin

cleos wallet create -n msig-wallet -f msig-wallet.txt
cleos wallet unlock -n msig-wallet --password "$(< msig-wallet.txt)"
cleos wallet import -n msig-wallet --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos set contract eosio contracts/eosio.bios -p eosio

cleos create key --file key.txt
PK=$(cat key.txt | grep 'Public' | awk '{print $3}')
cleos wallet import -n msig-wallet --private-key $(cat key.txt | grep 'Private' | awk '{print $3}')

# https://forums.eosgo.io/discussion/1004/eosio-multisig-tutorial

# you can remove the temp wallet
# rm ~/eosio-wallet/msig-wallet.wallet

# remove the tmp nodeos files
# rm -rf eos.data/producer_node/*