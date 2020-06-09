# SISAWS

Projeto desenvolvido para agendamento de ligar máquinas na AMAZON, utilizando grupos de máquinas para ligar em ordem e desligar em ordem.

Para execução do projeto é necessário a execução dos seguintes passos:

> Subir uma instância de banco de dados [MYSQL]
> docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -tid -p 3308:3306 mysql:latest


- Serviço para iniciar instância na AWS: [Documentação]
-> URL da Documentação: https://docs.aws.amazon.com/pt_br/sdk-for-java/v1/developer-guide/setup-credentials.html


> Para o funcionamento deverá criar 2 arquivos com as seguintes informações:

- Diretório: 
> ~/.aws/config

- Conteúdo:
> [default]
> region = sa-east-1


- Diretório: 
> ~/aws/credentials

- Conteúdo:
>[default]
>aws_access_key_id= {KEY ID}
>aws_secret_access_key= {SECRET KEY}
