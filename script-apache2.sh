#!/bin/bash

# Atualiza os pacotes do sistema
sudo apt update && sudo apt upgrade -y

# Instala o Apache2
sudo apt install apache2 -y

# Habilita o Apache para iniciar com o sistema
sudo systemctl enable apache2

# Inicia o serviço Apache
sudo systemctl start apache2

# Verifica status do Apache
sudo systemctl status apache2

# Cria uma página HTML simples
echo "<!DOCTYPE html>
<html>
<head>
<title>Meu Servidor Apache</title>
</head>
<body>
<h1>Apache funcionando no Ubuntu!</h1>
<p>Servidor configurado com sucesso.</p>
</body>
</html>" | sudo tee /var/www/html/index.html

# Libera HTTP no firewall (caso UFW esteja ativo)
sudo ufw allow 'Apache'

# Reinicia o Apache
sudo systemctl restart apache2

# Mostra IP local do servidor
echo "Servidor disponível em:"
hostname -I
