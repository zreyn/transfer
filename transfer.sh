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
cleos push action eosio.token create '{"issuer":"eosio", "maximum_supply":"100.0000 EOS", "can_freeze":0, "can_recall":0, "can_whitelist":0}' -p eosio.token@active
cleos push action eosio.token issue '[ "user1", "1.0000 EOS", "issue" ]' -p eosio@active

NC=$'\0'
ARRAY=("Hello world", "Hello\u0000world", "Hello$(NC)world")
for m in $ARRAY; do
  cleos push action eosio.token transfer '[ "user1", "user2", "0.5000 EOS", '$m' ]' -p user1@active
  cleos get currency balance eosio.token user1
  cleos get currency balance eosio.token user2
done


for m in $ARRAY; do
  DATA_HASH=$(curl -d '{"code":"eosio.token","action":"transfer","args":{"from":"user1","to":"user2","quantity":"0.100 EOS","memo":'$m'}}' http://127.0.0.1:8888/v1/chain/abi_json_to_bin | jq .binargs)
  BLK=$(cleos get info | jq .head_block_num)
  BLK_PRE=$(cleos get block $BLK | jq .ref_block_prefix)
  EXP=$(date -u -v +5M +"%Y-%m-%dT%T")
  TXN='{"expiration":"'"$EXP"'","ref_block_num":'"$BLK"',"ref_block_prefix":'"$BLK_PRE"',"max_net_usage_words":0,"max_cpu_usage_ms":0,"delay_sec":0,"context_free_actions":[],"actions":[{"account":"eosio.token","name":"transfer","authorization":[{"actor":"user1","permission":"active"}],"data":'"$DATA_HASH"'}],"transaction_extensions":[],"signatures":[]}'
  cleos sign $TXN --private-key $PK > txfr.txt
  cleos push transaction --skip-sign "$(< txfr.txt)"
  cleos get currency balance eosio.token user1
  cleos get currency balance eosio.token user2
done

# you can remove the temp wallet
# rm ~/eosio-wallet/xfer-wallet.wallet
