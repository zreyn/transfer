# assume nodeos is running on localhost with
# nodeos -d eos.data/producer_node --config-dir eos.data/producer_node logging.json -p eosio -e --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin --plugin eosio::http_plugin

cleos wallet create -n xfer-wallet -f wallet.txt
cleos wallet unlock -n xfer-wallet --password "$(< wallet.txt)"
cleos wallet import -n xfer-wallet --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos set contract eosio contracts/eosio.bios -p eosio

cleos create key --file key.txt
PK=$(cat key.txt | grep 'Public' | awk '{print $3}')
cleos wallet import -n xfer-wallet --private-key $(cat key.txt | grep 'Private' | awk '{print $3}')


cleos create account eosio user1 $PK $PK
cleos create account eosio user2 $PK $PK

cleos create account eosio eosio.token $PK
cleos set contract eosio.token contracts/eosio.token -p eosio.token@active
cleos push action eosio.token create '{"issuer":"eosio", "maximum_supply":"10.0000 EOS", "can_freeze":0, "can_recall":0, "can_whitelist":0}' -p eosio.token@active
cleos push action eosio.token issue '[ "user1", "10.0000 EOS", "issue" ]' -p eosio@active

cleos get currency balance eosio.token user1
cleos get currency balance eosio.token user2

I=0
while [ $I -lt 10 ]; do
  cleos push action eosio.token transfer '[ "user1", "user2", "1.0000 EOS", "'$I'" ]' -p user1@active
  let I=I+1
done

cleos get currency balance eosio.token user1
cleos get currency balance eosio.token user2

# you can remove the temp wallet
# rm ~/eosio-wallet/xfer-wallet.wallet

# remove the tmp nodeos files
# rm -rf eos.data/producer_node/*