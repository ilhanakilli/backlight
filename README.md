# parlaklık
Raspberry pi ve 7" resmi touchscreen kullanımında kullanışlı özelliklerden bir tanesi ekran parlaklık ayarı.
Ekran ışığı bir dosyada yazan değere göre değişiyor. Ben de bu dosyaya değer yazımını kolaylaştırmak için bir bash scripti hazırlayıp
bunu terminale ekledim. Bu işlemleri otomatik yapmak için de yine bir script ekledim. aşağıdaki kod ile otomatik kurulum yapabilirsiniz. 

Kurulum:
wget https://raw.githubusercontent.com/ilhanakilli/parlaklik/master/parlaklik.sh --no-check-certificate
chmod +x parlaklik.sh
bash parlaklik.sh

Kullanım:
parlaklık 'değer'
örneğin 
parlaklık 50 // parlaklık değeri 0 ile 255 arasında olabilir

edit:
/sys/class/backlight/rpi_backlight/brightness dosyasına erişimde yetki sorunu olmaması için ekleme yaptım.

