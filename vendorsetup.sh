# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/tamanegi-mogumogu/hardware_samsung -b thirteen hardware/samsung
mv nfc hardware/samsung
