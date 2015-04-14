
Method 1: Build into android rootfs image.

Step 1: Install codec library.

	tar xzvf fsl_aacp_dec.tar.gz
	cp -r fsl_aacp_dec/ ~/myandroid/external
	cd ~/myandroid
	source build/envsetup.sh
	lunch // and select build name from menu
	make


Method 2: Install into existed android rootfs.

Step 1: Install codec library.

For NFS rootfs:

	tar xzvf fsl_aacp_dec.tar.gz   
	cd fsl_aacp_dec/
	cp *.so <your_nfs_rootfs>/system/lib
	 
For SD rootfs:
	  
	tar xzvf fsl_aacp_dec.tar.gz
	cd  fsl_aacp_dec/
	mount -t ext3 -o loop system.img /mnt
	cp *.so /mnt/lib

