#!/bin/bash
echo "Çift ID kontrolü yapılıyor..."
DUPLICATES=$(grep -oE 'id="[0-9]+"' custom_rules/sshd_rules.xml | sort | uniq -d)
if [ ! -z "$DUPLICATES" ]; then
    echo "HATA: Çift kullanan ID tespit edildi: $DUPLICATES" && exit 1
else
    echo "Tebrikler! Çift ID bulunmadı." && exit 0
fi