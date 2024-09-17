##make a sub-directory and work therein
mkdir working
cd working

##backup old list
mv blocklst.p2p blocklst.p2p.old

## Get the lists

wget http://list.iblocklist.com/?list=bt_bogon -O bog-z
wget http://list.iblocklist.com/?list=bt_level1 -O l1-z
wget http://list.iblocklist.com/?list=bt_level2 -O l2-z
wget http://list.iblocklist.com/?list=bt_templist -O tmp-z
wget http://list.iblocklist.com/?list=bt_spyware -O spy-z
wget http://list.iblocklist.com/?list=bt_spider -O spi-z
wget http://list.iblocklist.com/?list=bt_ads -O ads-z
wget http://list.iblocklist.com/?list=bt_templist -O bp-z
wget http://list.iblocklist.com/?list=bt_hijacked -O hijack-z
wget http://list.iblocklist.com/?list=bt_dshield -O hack-z
wget http://list.iblocklist.com/?list=ijfqtofzixtwayqovmxn -O threat-z

## Merge the lists

cat bog-z l1-z l2-z tmp-z spi-z spy-z ads-z bp-z hijack-z hack-z threat-z > blocklst.p2p.gz

## Decompress

gunzip blocklst.p2p.gz

## Clean individual list files

rm -f *-z
