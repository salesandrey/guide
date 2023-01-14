# guide
Guide Teste - Guide Investimentos

Olá, vamos falar um pouco sobre o teste de desenvolvimento. Foi desafiador e empolgante. Então vamos lá.

Inicialmente vamos começar com as regras:

1 - Este desafio consiste em consultar a variação do preço de um ativo a sua escolha nos últimos 30 pregões. Você deverá apresentar o percentual de variação de preço de um dia para o outro e o percentual desde o primeiro pregão apresentado.

Resp: Aqui no momento em que eu estava consumindo a API, analisei inicialmente que eram quantidades grandes de vetores. Então, eu consultei a documentação para filtrar os valores desejados aqui. a Query neste caso ficou: 

finance/chart/$symbol?period1=$period1&period2=$period2&interval=$interval

Inicialmente o periodo 1 e periodo 2 estão estáticos. Utilizando um timestamp do mês referente a dezembro de 2022. Entre os dias 1 e 31.

Depois disso, os dados eles foram filtrados para popular as listas:

1- Lista de Datas
2- Lista de Aberturas

Por fim, adicionamos mais um pouco de complexidade e incluimos dois Maps(Objetos) que servirão mais tarde.

1 - Objetos de Grafico 1
2 - Objetos de Grafico 2

-------------------------------------------------------------------

# Mobile - Guide

1 - Implementar uma tela de abertura em linguagem nativa onde o usuário possa escolher entre visualizar a variação do preço ou o gráfico de da variação.

Resp: Inicialmente, eu comecei primeiro com as telas de flutter e depois eu vim para essa. Primeiro, tentei montar XML com io.FlutterView e depois um XML normal para colocar os 2 botoes na tela e redirecionar. Com o tempo acabando, eu acabei não conseguindo realizar a integração entre uma MainActivit Android Nativa com o Flutter Activite. Assim que fiz a entrega eu dei uma olhada e olhei os passos para realizar a integração. Tentaremos um pouco depois ;D

2 - Consultar o preço do ativo na API do Yahoo Finance (este é um exemplo da consulta do ativo PETR4 https://query2.finance.yahoo.com/v8/finance/chart/PETR4.SA)

Resp: consuletei a documentação da API em : https://cryptocointracker.com/yahoo-finance/yahoo-finance-api

3 - Implementar uma tela em linguagem nativa ou flutter que apresente a variação do preço do ativo nos últimos 30 pregões e mostre a rentabilidade no período. Você deverá considerar o valor de abertura (chart.result.indicators.quote.open)

Resp: Mantive essa diretriz, utilizei a open com o valor de 1d.

4- Inclua um gráfico em linguagem nativa ou flutter apresentando o resultado da variação.

Resp: Deu um pouco de trabalho inicialmente, mas os gráficos conseguiram refletir os pontos (dias,variacao)

5 - Disponibilizar seu app junto com seu código aqui no Github

Resp: Aqui está \o/

![alt text]https://user-images.githubusercontent.com/49326591/212445721-4e48fa65-ea55-4a51-b3ad-95cb3f712a2a.png

----------------------------------------------------------------------

# Mobile - Guide - Testes

Realizamos algumas cargas de teste para iniciar a tarefa. Inicialmente, estava avaliando valores negativos e arrendamento de valores.

----------------------------------------------------------------------

Obrigado
