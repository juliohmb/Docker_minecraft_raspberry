Docker file minecraft forge server 1.12.2 for Raspberry Pi 4 B ARM32 OS

Volume: minecraft/

Build command: docker build -t *image_name*
Run command: docker run -it -p 25565:25565 -v minecraft/:minecraft/ --name *container_name* *image_name*
Start command: docker start *container_name*
