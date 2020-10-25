---
title: "ME111 - Atividade 05"
author: "Profa. Tatiana Benaglia"
date: "04/05/2020 - 1S2020"
output:
  pdf_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE, message = FALSE)
options(scipen=999)  ## desabilita escrever números em notação científica
```

## Introdução

Nessa atividade vocês irão criar/editar  um relatório dinâmico em R Markdown. 

Vocês estão recebendo esse documento num arquivo .Rmd e o objetivo é que vocês o completem com códigos necessários, tanto nos *chunks* quanto ao longo do texto, para que todas as perguntas sejam respondidas.


## Sinestesia

Na semana passada eu pedi para que vocês realizassem uma atividade para testar um fenômeno chamado **sinestesia**. 

Cada aluno realizou um teste de percepção de cores e textos online e repetiu o teste três vezes, reportando o resultado (tempo total em segundos e idade mental) de 3 tentativas consecutivas.

As respostas de todos os alunos estão nessa planilha [(CLIQUE AQUI PARA BAIXAR)](https://drive.google.com/file/d/1Zd9sq_6SPVQULu4_JStknpcKKnpJKjrl/view?usp=sharing). Faça download do arquivo e coloque na mesma pasta em que está este seu arquivo .Rmd. 

O comando a seguir importa os dados da planilha para o R:

```{r}
library(readxl)
sinestesia = read_xlsx("dadosSinestesia.xlsx")
```


## Questões

1. Encontre os seus dados na planilha acima e preencha com seus resultados obtidos. Não é para digitar os números no texto, mas sim usar comandos do `R` para que o texto seja atualizado automaticamente.

    ```{r, eval=FALSE}
    meuTeste = sinestesia[sinestesia$RA == XXXXXX, ] ## Substitua pelo seu RA
    ```
    
  * Tentativa 1: Idade mental XX anos e tempo XXX segundos
  * Tentativa 2: Idade mental XX anos e tempo XXX segundos
  * Tentativa 3: Idade mental XX anos e tempo XXX segundos


2. Calcule a média, a mediana, o mínimo, o máximo do tempo para completar os testes usando os dados das suas 3 tentativas.

    ```{r}
    meusTempos = ## selecionar apenas os tempos
    minhasIdades = ## selecionar apenas as idades
    
    media = NA ## trocar NA pelo comando para calcular a media
    mediana = NA ## trocar NA pelo comando para calcular a mediana
    minimo = NA ## trocar NA pelo comando para calcular o mínimo
    maximo = NA ## trocar NA pelo comando para calcular o máximo
    ```

    Dentre as minhas 3 tentativas, o tempo médio para completar o teste é XXX segundos; a mediana é XXXX. O menor e o maior tempo foram XXX e XXX segundos, respectivamente. Minha idade mental média é XX anos.

3. Faça um gráfico usando os dados das suas 3 tentativas. No eixo x, coloque a tentativa, no eixo y, sua idade mental.  A idade mental vai diminuindo com o número de tentativas?

4. Cada aluno realizou 3 tentativas. Para definir qual o aluno mais rápido, primeiro podemos resumir as medidas das 3 tentativas de cada aluno usando: a mediana, a média, o mínimo ou o máximo. Preencha as frases a seguir. Qual medida para resumir os dados você acha que é a melhor nesse caso e por que?

    ```{r}
    ## Por exemplo, vamos calcular o máximo dos tempos 
    ## para todos os alunos usando a função 'apply'
    
    tempos = sinestesia[, c("Tempo1", "Tempo2", "Tempo3")]
    max_tempos = apply(tempos, MARGIN = 1, FUN = max)
    ```

    Se usarmos o tempo máximo de cada um, o menor tempo foi `r min(max_tempos)` do aluno RA `r sinestesia$RA[which.min(max_tempos)]`.

    Se usarmos o mínimo, o menor tempo foi XXXX do aluno com RA XXXXXX.

    Se usarmos o média, o menor tempo foi XXXX do aluno com RA XXXXXX.

    Se usarmos o mediana, o menor tempo foi XXXX do aluno com RA XXXXXX.

    Coloque aqui sua discussão.

\vspace{24pt}

5. Escolha uma estatística para resumir os dados de cada aluno (média, mediana, mínimo ou máximo). Usando a estatística escolhida, qual o maior tempo entre todos os alunos? E qual a menor idade mental?

\vspace{12pt}

Nas questões a seguir, considere apenas a **mediana** dos tempos e das idades das 3 tentativas de cada aluno.

6. Construa dois gráficos: uma para descrever a distribuição das medianas dos tempos e outro para a distribuição das medianas das idades.

7. Indique a mediana dos tempos e das idades das **suas** 3 tentativas nos respectivos gráficos usando uma cor diferente.

8. Quantos alunos têm tempo de teste maior do que o seu? E quantos têm tempo de teste maior do que o seu?

9. Quantos alunos têm idade mental maior do que a sua? E quantos têm idade mental menor que a sua?

10. Se todos os alunos praticarem e melhorarem o tempo em 5 segundos, como isso afetaria a distribuição das medianas dos tempos?