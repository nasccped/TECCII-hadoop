<div align="center">

# TECCII-hadoop

**Atividade prática com Apache Hadoop (Tópicos Especiais em Ciência da Computação II)**

</div>

Este repositório tem como objetivo _trackear_ o progresso na atividade prática com `Apache Hadoop`
e permitir o desenvolvimento da mesma em diferentes plataformas (`Windows` e `Linux`) usando um
único _workspace_.

> [!NOTE]
>
> 1. Boa parte do conteúdo aqui presente não é de minha autoria, mas sim informações/instruções
>    dispostas pelas próprias fontes orientadoras ([_Apache Software Foundation_](https://www.apache.org/)
>    e/ou páginas de conteúdo no _Blackboard_).
> 2. Referente ao tópico anterior, excede-se o _output_ de dados e documento final
>    (`saida_clusters.txt` e `relatorio.pdf`, respectivamente) que dizem respeito à realização da
>    atividade em si.
> 3. Por fim, além de _tracking_, o presente repositório também serve como um _"check-list"_ das
>    etapas para a resolução da atividade (funcionando de maneira similar a um _todo list_). Use a
>    seção [sumário](#sumário) para navegar pela página inicial.

## Sumário

Use a tabela de conteúdo abaixo para navegar pelo _README_:

- [proposta da atividade](#proposta-da-atividade)
  - [o que deve ser entregue?](#o-que-deve-ser-entregue)
  - [o que deve ser analisado?](#o-que-deve-ser-analisado)
- [requisitos da atividade](#requisitos-da-atividade)

## Proposta da atividade

A atividade se baseia na seguinte tarefa:

> "Utilizar uma base de notícias da agência Reuters para executar um algoritmo de agrupamento de
> documentos."

Que é seguida pela orientação:

> "`[...]` Utilizando duas ferramentas que já estão disponíveis no ambiente (`Apache Hadoop` e
> `Apache Mahout`), você executará o algoritmo `K-Means`, que analisará o conteúdo dos textos e os
> organizará automaticamente em grupos (_clusters_) de documentos semelhantes."

E encerra-se com o objetivo final:

> "`[...]` sua tarefa será observar os grupos criados e analisar se os documentos reunidos em
> cada _cluster_ realmente tratam de assuntos parecidos."

### O que deve ser entregue?

O recurso final a ser entregue refere-se a um relatório compreendendo:

1. análise dos _clusters_ gerados;
2. interpretação dos assuntos predominantes em cada grupo _(com base nas palavras mais
   representativas)_;
3. breve conclusão sobre os resultados obtidos.

> [!TIP]
>
> Há também a menção de evidências que comprovem a execução da atividade (referindo-se ao arquivo
> `saida_clusters.txt` ou outras saídas geradas).

### O que deve ser analisado?

As informações que devem ser analisadas (referentes aos _clusters_) são as seguintes:

- quantos clusters foram gerados;
- quais palavras aparecem como mais importantes em cada cluster _(Top Terms)_;
- qual parece ser o assunto de cada grupo;
- se os agrupamentos fazem sentido, ou seja, se os documentos de um mesmo cluster parecem tratar de
  temas semelhantes.

## Requisitos da atividade

Para realizar a tarefa, o enunciado informa os seguintes requisitos:
1. `Apache Hadoop` _(obtido por meio [deste link](https://hadoop.apache.org/))_
2. `Apache Mahout` _(obtido por meio [deste link](http://linorg.usp.br/apache/mahout/0.13.0))_
3. base de textos disponível _(por exemplo, a base Reuters, obtido por meio
   [deste link](https://mldta.com/dataset/reuter_50_50/))_.

> [!CAUTION]
>
> Note que as ferramentas mencionadas acima são apenas os requisitos em termos de _software_. Para
> a execução da tarefa, será necessária também uma plataforma com capacidades mínimas (computador,
> preferívelmente _UNIX compatible_, como uma máquina virtual ou _WSL_) assim como orientado no
> corpo da tarefa.
