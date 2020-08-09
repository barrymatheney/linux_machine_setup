https://vander.host/knowledgebase/operating-systems/how-to-resize-an-ubuntu-18-04-lvm-disk/




lvextend --size 512G /dev/mapper/ubuntu--vg-ubuntu--lv
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv