#!/bin/bash

DOMAIN1='eth-poa-tokyo.aigram.jp'
DOMAIN2='eth-poa-osaka.aigram.jp'
DOMAIN3='eth-poa-ishikari.aigram.jp'

ENODE1='3022018ee9e92388ffd5197a049abc41ab1d9ee5fb929aa47f1cd4e373f440ef3aa6cc13502c11c7d0bacb74c40ce7f6e46b7f74b8b4b15ef747e1297e27734d'
ENODE2='0be0a6d869eb0e3c4cbb6178a821ce22db05446183107231f58e7672e4f1d45a9516da2e2f01758b2a493d314c01fcc279788f3ef10057b3991ec6bb0aa25c90'
ENODE3='3cf3f23b7cf98875f59119da9487fe15993154c1370284f26a941a2f0b9328f0f0333d2deedf34ec3fc3d95e649b8bbcbaa316e64654c8f33c5122a97bccfb42'

CMD1="admin.addPeer(\"enode://${ENODE1}@${DOMAIN1}:30311\")"
CMD2="admin.addPeer(\"enode://${ENODE2}@${DOMAIN2}:30311\")"
CMD3="admin.addPeer(\"enode://${ENODE3}@${DOMAIN3}:30311\")"

echo $CMD1
docker exec -it node /bin/sh -c "geth attach geth.ipc --exec '${CMD1}'"

echo $CMD2
docker exec -it node /bin/sh -c "geth attach geth.ipc --exec '${CMD2}'"

echo $CMD3
docker exec -it node /bin/sh -c "geth attach geth.ipc --exec '${CMD3}'"

docker exec -it node /bin/sh -c "geth attach geth.ipc --exec 'admin.peers'"
