# SISAWS

Projeto com o objetivo de realizar agendamentos via web para ligar/desligar um grupo de máquinas na amazon.

 - Tecnologias:
> Spring MVC,  Hibernate,  API AWS,   JSP

Para execução do projeto é necessário a execução dos seguintes passos:

    docker run --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -tid -p 3308:3306 mysql:latest

Para o funcionamento deverá ser criado 2 arquivos com as seguintes informações:

 1. Criar no diretório: ~/.aws/config com o seguinte conteúdo:

    > [default]<br/>
     region = sa-east-1

 2. Criar no diretório: ~/aws/credentials com o seguinte conteúdo:

    >[default]<br/>
aws_access_key_id= {KEY ID} <br/>
aws_secret_access_key= {SECRET KEY}<br/>

>  Serviço para iniciar instância na AWS: [Documentação] <br/>
> https://docs.aws.amazon.com/pt_br/sdk-for-java/v1/developer-guide/setup-credentials.html
