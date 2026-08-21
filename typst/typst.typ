#set page("a4")
#show link: set text(fill: rgb("#24599c"))
#let name = sys.inputs.name
#let school_id = sys.inputs.school_id

#block(
  width: 100%,
  height: 25%,
  align(center)[
    = Tópicos Especiais em Ciência da Computação II
    == Atividade prática
  ]
)
#block(
  width: 100%,
  align(center)[
    *Nome:* #name \
    *RGM:* #school_id \
    *Ciência da Computação - Universidade Cruzeiro do Sul*
  ]
)

#pagebreak()

== Objetivo da atividade

A atividade consiste em utilizar uma base de notícias da
#link("https://www.reuters.com/")[reuters] para criar um sistema de arquivos _Hadoop_, vetorizar o
conteúdo para `TF/IDF`, oferecer os vetores como _input_ para um algorítmo de clusterização
(#link("https://www.ibm.com/br-pt/think/topics/k-means-clustering")[kmeans], especificamente),
obter um conteúdo _output_ resultante da análise dos _clusters_ gerados e, por fim, analisar o
_output_ final.

== _Top Terms_ gerados

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Id do _cluster_*], [*_Top Terms_ do cluster*], [*Assunto tratado*],
  ),

  [*CL-1245*],
  [electricity, pence, electric, midlands, bid, utilities],
  [*eletricidade e utilidades*],

  [*VL-360*],
  [gm, uaw, workers, plants, strike, auto],
  [*GM e setor automotivo*],

  [*CL-10*],
  [internet, online, software, web, computer, microsoft],
  [*internet e software*],

  [*VL-886*],
  [million, percent, year, company, billion],
  [*economia e negócios*],

  [*VL-1412*],
  [tonnes, cocoa, output, export, oil, crop],
  [*exportação e comércio*],

  [*CL-485*],
  [computer, software, microsoft, pc, apple, windows],
  [*indústria computacional e tecnologia*],

  [*VL-1789*],
  [mci, bt, telecoms, wireless, cable],
  [*telecomunicação*],

  [*VL-2030*],
  [china, chinese, beijing, hong kong, party],
  [*China e política*],

  [*VL-1997*],
  [mcdonnell, boeing, fighter, lockheed, pentagon],
  [*defesa aérea*],

  [*CL-582*],
  [gold, index, toronto, stock, bank, barrick],
  [*ouro e finanças*],
)

== Análise do _output_

Foram criados um total de *10* _clusters_ (por meio da flag `-k 10` passada ao comando
`mahout kmeans`). A palavra com maior grau de importância para cada _cluster_ é a primeira na
coluna `Top Terms do cluster` da tabela mostrada anteriormente.

Pode-se perceber também como os _top terms_ de cada _cluster_ são diferentes quando comparados aos
_top terms_ de outro _cluster_. Excede-se os _clusters_ identificados por `CL-10` e `CL-485` que
tratam não necessáriamente da mesma coisa, mas coincidem com o assunto.

== Extra

Para fins de versionamento e suporte multiplataforma, o desenvolvimento da atividade está
disponível em um #link("https://github.com/nasccped/TECCII-hadoop")[repositório git]. Lá consta o
progresso da resolução assim como o script utilizado para para a construção do `PDF` de entrega e
também o _output_ gerado pelo `mahout`.
