### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ eae781b5-86ff-4a26-b49e-a37a8b510a8b
begin
using SymPy
using DataFrames
using PlutoUI
using RDatasets
end

# ╔═╡ a22c94a0-70af-41f5-a64f-989a116d19cf
begin
	
using Plots
n=100
g1 = [randn() for i = 1:n] 
p = plot(sort(g1), (1:n)./n, 
    xlabel = "classificação em 5 pontos", ylabel = "Perecentil", 
    title = "Empirical Cumulative Distribution", label = "")
	
end

# ╔═╡ e32f7fde-b87d-4687-b944-c1c7d6b91ac1
PlutoUI.TableOfContents(title= "Conteúdo", indent= true)

# ╔═╡ f6dfb126-8367-11ec-290e-8b3a346eae2c
md"""
# _Medidas de Tendência Central_
"""

# ╔═╡ f602cbeb-7fbf-4d29-9cd7-4492a4734a3b
md"""
Quando queremos um único número que resuma uma variável quantitativa de um banco de dados pensamos logo na média. 
- Qual é a nota média dos alunos de uma turma?
- Por que homens têm uma renda meedia superior a das mulheres?
- Qual é a média de gols que um atacante faz por jogo?
"""

# ╔═╡ d345ee2b-9d49-4af1-926b-94c99f25a4dd
md"""
## _Média_

A média é a mais simples medida estatística. Basta somar os valores de uma distribuição numérica e dividir pelo número de casos (observações).

média = soma de valores/ número de casos
"""

# ╔═╡ 456f635d-69b2-491f-bbf6-3ec2439ccf8c
md"""
Na distribuição composta por nove números:

- 78, 91, 94, 98, 99, 101, 103, 105, 114 

A média  é  (883/ 9) = 98
"""

# ╔═╡ f9fb0ff9-cbae-4c6a-9c51-d97274b3c312
md"""
## _Mediana_

A mediana é menos conhecida, mas é uma medida de tendência central importante, quando existem valores extremos na distribuição.

Quando ordenamos uma distribuição de casos do menor para o maior número (ou vice-versa), a mediana é o número que divide a distribuição ao meio; ou seja, metade dos números estão acima, metade abaixo.

Na distribuição abaixo a mediana é 99

-  78, 91, 94, 98, **99**,101, 103, 105, 114

No caso de a distribuição ter um número par de dados, as duas observações centrais são somadas e dividas por dois

- 78, 91, 94, 98, **99**, **101**, 103, 105, 114, 121.   
A mediana é = 100 (99 + 101)/2  

- 78, 91, 94, 98, **99**, **101**, 103, 105, 114, 121, 1200



"""

# ╔═╡ 7c75e10d-ef51-4bd1-ac02-a1cb70645815
md"""
!!! info "Exercício"
    Use uma calculadora e calcule: é a média e a mediana se acrescentarmos uma observação de valor 1200 na distribuição acima
"""

# ╔═╡ 0b69f896-153c-4d52-904a-1ed87ecbdf13
md"""
!!! hint "Resposta"
    média   = 200

    mediana = 101
"""

# ╔═╡ d4d4fd1c-567e-4e21-9d53-09c9a08213be
md"""
## _Moda_

A moda é valor que aparece com mais frequência na distribuição 

Na distribuição abaixo a moda é 101, já que aparece duas vezes

-  78, 91, 94, 98, 99, **101**, **101**, 103, 105, 114
 


"""

# ╔═╡ 35c09606-f73f-4fe1-8d10-3848708047e5
md"""
!!! danger "⚠️ Cuidado com a média"
    
    A média é  sensível a observações com valores extremos:

    - Uma pessoa com renda extremamente alta pode oferecer um número enviezado da renda de um grupo

    - A presença da cidade São Paulo envieza a média de morados nos municípios da reginao Metropolitana do estado de São Paulo

     Nesses casos, melhor utilizar a mediana

"""

# ╔═╡ 847a26d9-26ab-404e-afe2-f53237099727
md"""
### _A mediana não é a mensagem_

texto do biólogo americano, Stephen Jay Gould (1941-2002)
"""

# ╔═╡ dc4b2aa7-70b7-4fb8-a78b-2f85e6e8504c
Resource("https://upload.wikimedia.org/wikipedia/en/2/21/Stephen_Jay_Gould_2015%2C_portrait_%28unknown_date%29.jpg", :width => 200)

# ╔═╡ dadcf91b-35d4-4eb2-b160-4c977696c580
md"""

Minha vida recentemente se deparou, de uma maneira muito pessoal, com duas das célebres frases de Mark Twain. Uma eu deixarei para o fim deste ensaio. A outra (por vezes atribuída a Disraeli), identifica três tipos de inverdades, cada uma pior que a outra: mentiras, mentiras descaradas, e estatísticas.

Considere o exemplo clássico de estender a verdade com números — um caso bastante relevante à minha estória. A estatística reconhece diferentes medidas para “na média”, ou para a tendência central. Média aritmética é nosso conceito usual de “na média” — adicione todos os itens e divida pelo número que os compartilha (100 doces coletados por cinco crianças no próximo Halloween irão dar 20 para cada uma num mundo justo). A mediana, uma medida diferente da tendência central, é o ponto no meio do caminho. Se eu colocar em fila indiana cinco crianças em ordem de tamanho, a criança mediana é mais baixa que duas, e mais alta que as outras duas (que podem ter dificuldade em obter a fração justa dos doces). Um político no poder pode dizer com orgulho, “A renda média de nossos cidadãos é de $15.000 por ano.” O líder da oposição pode responder “Mas metade de nossos cidadãos ganha menos que $10.000 por ano.” Ambos estão corretos, mas nenhum cita a estatística com objetividade fria. O primeiro invoca a média aritmética, o segundo a mediana. (Médias são mais altas que medianas nesses casos porque um milionário vale mais que centenas de pobres ao determinar a média, mas ele pode contrabalancear apenas um mendigo no cálculo da mediana).

A questão maior que comunmente cria desconfiança ou desdenho pela ciência estatística é mais perturbadora. Muitas pessoas fazem uma separação infeliz e inválida entre coração e mente, sentimento e intelecto. Em algumas tradições contemporâneas, incentivadas por atitudes estereotipicamente centradas no sul da Califórnia, o sentimento é exaltado como sendo mais “real” e a única base apropriada para agir — se a sensação é boa, faça — enquanto o intelecto é minimizado como sendo apêndice de um elitismo fora de moda. A Estatística, nessa dicotomia absurda, acaba muitas vezes se tornando o símbolo do inimigo. Como Hilaire Belloc escreveu, “A Estatística é o triunfo do método quantitativo, e o método quantitativo é a vitória da esterilidade e da morte.”

Esta é uma estória pessoal da estatística, propriamente interpretada, como profundamente doce e portadora de vida. Ela declara uma guerra santa à desclassificação do intelecto contando uma pequena estória sobre a utilidade de conhecimento acadêmico, árido, científico. O coração e a cabeça são pontos focais de um só corpo, de uma só personalidade.

Em julho de 1982 eu descobri que sofria de mesotelioma abdominal, um câncer raro e grave normalmente associado com a exposição a abestos. Quando acordei depos da cirurgia , fiz minha primeira pergunta à minha médica e quimioterapeuta: “Qual a melhor literatura técnica sobre mesotelioma ?” Ela respondeu, com um toque de diplomacia (a única vez que fugiu da franqueza direta), que a literatura médica não continha nada que realmente valesse a pena ler.

Claro que manter um intelectual longe da literatura funciona tão bem quanto recomendar castidade ao Homo Sapiens, o mais sexuado de todos os primatas. Assim que pude andar, fui direto para a biblioteca médica Countway, em Harvard, e digitei mesotelioma no programa de computador de pesquisas bibliográficas. Uma hora mais tarde, cercado da mais recente literatura sobre mesotelioma abdominal, eu entendi com um nó na garganta por quê minha médica havia me dado aquele conselho humano. A literatura não poderia ser mais brutalmente clara: mesotelioma é incurável, com uma mortalidade mediana de apenas oito meses após o diagnóstico. Eu fiquei sentado atordoado por cerca de quinze minutos, então sorri e disse para mim mesmo: ah, é por isso que não me deram nada para ler. Então minha cabeça voltou a funcionar, ainda bem.

Se um pouco de aprendizado puder ser, em algum momento, algo perigoso, eu tinha encontrado o exemplo clássico. Atitude claramente importa ao lutar com o câncer. Não sabemos por quê (de minha visão materialista clássica, eu suspeito de estados mentais reforçando o sistema imunológico). Mas equalize pessoas com câncer por idade, sexo, saúde, status socio-econômico, e, em geral, aqueles com atitudes positivas, com forte propósito e vontade de viver, com compromisso para lutar, com uma resposta ativa de auxiliar seu próprio tratamento, e não apenas uma aceitação passiva do que o médico diz, tenderão a viver por mais tempo. Alguns meses mais tarde eu perguntei a Sir Peter Medawar, meu guru científico pessoal e prêmio Nobel em imunologia, qual a melhor receita para ter sucesso contra o câncer. “Uma personalidade sanguínea”, ele respondeu. Por sorte (pois uma pessoa não consegue se reconstruir no curto prazo e para um propósito definido), eu sou, se alguma coisa, de temperamento constante e confiante exatamente como receitado.

Vê-se o dilema para médicos humanos: se a atitude importa tão criticamente, deveria uma conclusão tão sombria ser propagandeada, especialmente sabendo que tão poucas pessoas possuem entendimento de estatística para avaliar o quê essas afirmações realmente signficam ? De meus anos de experiência com a evolução em pequena escala dos caramujos terrestres das Bahamas, tratada quantitativamente, eu desenvolvi esse entendimento técnico — e estou convencido que ele teve um papel central em salvar a minha vida. Conhecimento é poder, como diz o provérbio.

O problema pode ser posto de forma breve: O que significa “mortalidade mediana de 8 meses” em nosso vernáculo ? Eu suspeito que a maior parte das pessoas, sem treinamento em estatística, leria essa afirmação como “Eu provavelmente vou estar morto em oito meses” — exatamente a conclusão que deveria ser evitada, porque não é verdadeira, e porque a atitude importa tanto.

Eu não estava, claro, muito feliz, mas não li a afirmação de acordo com esse vernáculo fatalista. Meu treinamento técnico formou uma perspectiva diferente para “8 meses de mortalidade mediana”. O ponto é sutil, mas profundo — pois ele incorpora o modo de pensar caracterísitico do meu campo de estudo, biologia evolucionária e história natural.

Nós ainda carregamos a bagagem histórica da herança Platônica que busca essências puras e fronteiras definidas. (Por isso nós esperamos encontrar um “começo da vida” ou uma “definição de morte” sem ambiguidade, apesar da natureza frequentemente se apresentar como um contínuo irredutível). Essa herança Platônica, com sua ênfase em distinções claras e entidades imutáveis separadas, nos leva a ver medidas estatísticas de tendência central de forma errada, na verdade de forma oposta à interpretação apropriada ao nosso mundo real de variações, tonalidades, e continuidade. Ou seja, nós olhamos médias e medianas como “dura realidade,” e a variação que permite o seu cálculo como uma massa de medidas transientes e imperfeitas dessa verdadeira essência. Se a mediana é a realidade e a variação em torno da mediana um artifício para seu cálculo, então “provavelmente vou estar morto em oito meses” pode passar como uma interpretação razoável.

Mas todos biólogos evolucionários sabem que a própria variação é a única essência irredutível da natureza. Variação é a dura realidade, não um conjunto de medidas imperfeitas da tendência central. Médias e medianas são a abstração. Portanto, eu olhei as estatísticas do mesothelioma bem diferente — e não só porque eu sou um otimista que tende a ver a rosca ao invés do buraco, mas primariamente porque sei que a própria variação é a realidade. Eu precisava me colocar dentro da variação.

Quando eu soube da mediana de oito meses, minha primeira reação intelectual foi: ótimo, metade das pessoas vive mais que isso; agora, quais são as minhas chances de estar naquela metade? Eu li por uma hora nervosa e furiosa, e conclui, com alívio: danadas de boas. Eu possuia cada uma das características que conferiam a probabilidade de uma vida mais longa: Eu era jovem; minha doença havia sido identificada em um estágio relativamente inicial; eu iria receber o melhor tratamento médico disponível; eu tinha um mundo pelo qual viver; eu sabia como ler os dados corretamente e não me desesperar.

Outro ponto técnico adicionou ainda mais consolo. Eu imediatamente me dei conta de que a distribuição da variação em torno da mediana de oito meses quase que certamente seria aquilo que os estatísticos chamam de “skewed para a direita”. (Em uma distribuição simétrica, o perfil da variação à esquerda da tendência central é uma imagem espelhada da variação para a direita. Em distribuições enviesadas, a variação para um lado da tendência central é mais esticada — enviesada para esquerda quando se extende para a esquerda, enviesada para direita quando se estica para a direita.) A distribuição da variação tinha que ser enviesada para direita, eu raciocinei. Afinal, a esquerda da distribuição continha uma fronteira irrevocável no zero (pois o mesothelioma só pode ser identificado no momento da morte ou antes). Portanto, não há muito espaço para a metade baixa (ou esquerda) da variação — ela precisa estar comprimida entre zero e oito meses. Mas a metade alta (ou direita) pode se estender por anos e anos, mesmo que ninguém sobreviva no fim. A distribuição tinha que ser enviesada para a direita, e eu precisava saber o quão longe a rabeira da direita chegava — pois eu já havia concluído que meu perfil favorável me fazia um bom candidato para aquela parte da curva.

A distribuição era, de fato, fortemente enviesada para direita, com uma rabeira longa (embora pequena) que se extendia por muitos anos além da mediana de oito meses. Eu não vi nenhuma razão para eu não estar naquela pequena rabeira, e pude respirar um longo suspiro de alívio. Meu conhecimento técnico havia ajudado. Eu havia lido o gráfico corretamente. Eu fiz a pergunta certa e encontrei as respostas. Eu tinha conseguido, bem provavelmente, o mais precioso presente — tempo substancial. Eu não teria que parar e seguir imediatamente a injunção de Isaías para Ezequias — coloque sua casa em ordem pois tu irás morrer, e não viver. Eu teria tempo para pensar, para planejar, e para lutar.

Um último ponto sobre distribuições estatísticas. Elas se aplicam somente para um conjunto determinado de circunstâncias — neste caso a sobrevivência com mesothelioma sob métodos convencionais de tratamento. Se as circunstâncias mudam, a distribuição pode se alterar. Eu fui colocado em um protocolo experimental de tratamento e, com sorte, estarei no primeiro grupo amostral de uma nova distribuição com mediana alta e uma rabeira direita esticando até uma morte natural em idade avançada.

Parece-me que se tornou excessivamente chique olhar a aceitação da morte como algo equivalente à posse de dignidade intrínseca. Claro que eu concordo com o pastor do Eclesiastes, que há um tempo para amar e um tempo para morrer — e quando meus dias terminarem espero encarar o fim calmamente, de minha própria maneira. Na maior parte das situações, no entanto, prefiro o ponto de vista mais marcial de que a morte é o terrível inimigo — e não acho nada criticável naqueles que se enfurecem com o apagar das luzes.

As espadas da batalha são muitas, e nenhuma mais efetiva do que o humor. Minha morte foi anunciada em um encontro de meus colegas na Escócia, e eu quase experimentei o delicioso prazer de ler o meu obituário escrito por um de meus melhores amigos (que suspeitou e checou; ele também é um estatístico, e não esperava me encontrar tão longe na rabeira direita.) Ainda asssim, o incidente me deu as primeiras gargalhadas depois do diagnóstico. Pense só, eu quase pude repetir uma das frases mais famosas de Mark Twain: as notícias de minha morte foram fortemente exageradas.

Epílogo por Steve Dunn

Muitos me escreveram para perguntar o que aconteceu com Stephen Jay Gould. Infelizmente, o Dr. Gould faleceu em Maio de 2002, com 60 anos de idade. O Dr. Gould viveu 20 anos muito produtivos após seu diagnóstico, portanto excedendo sua mediana de oito meses por um fator de trinta! Apesar dele ter morrido de câncer, aparentemente não foi mesothelioma, mas sim um segundo câncer não relacionado.

Em Março de 2002, o Dr. Gould publicou sua Obra Prima de 1342 páginas, “A Estrutura da Teoria Evolucionária”. É justo que Gould, um dos cientistas e escritores mais prolíficos do mundo, tenha conseguido completar a expressão definitiva de seu trabalho científico e sua filosofia — e bem a tempo. O texto é longo demais e denso demais para quase qualquer leigo — mas os trabalhos de Stephen Jay Gould vão continuar vivos. Especialmente, espero, “A Mediana Não É a Mensagem”.

Texto original de Stephen Jay Gould e Steven Dunn traduzido para o português em Maio de 2007, por Ricardo Castro. Original em inglês: The Median Isn’t the Message.

"""

# ╔═╡ 121f0345-2ed2-40f6-a373-644809412c46
md"""
# _Quantis_

O quantil é definido como segmentos de tamanhos iguais de uma população. Uma das métricas mais comuns em análise estatística, a mediana, é na verdade apenas o resultado da divisão de uma população em dois quantis. Um quintil é um dos cinco valores que dividem um intervalo de dados em cinco partes iguais, cada uma sendo 1/5 (20%) do intervalo. Uma população dividida em três partes iguais é dividida em tercis, enquanto uma dividida em quartos é dividida em quartis. 

Os quantis são nmensurados de formas de fdiferentes, mas sempre parte de uma distribuição de dados ordenado do menor para o maior vlaor, ou vice-versa.


"""

# ╔═╡ ae165add-2b1e-4daa-8448-7716ccd342b5
md"""
## _Quartil_

Um quartil divide os dados em três pontos – um quartil inferior, mediano e quartil superior – para formar quatro grupos do conjunto de dados. 

Assim como a mediana divide os dados ao meio, de modo que 50% da medida fique abaixo da mediana e 50% acima dela, o quartil divide os dados em quartos para que 25% das medidas sejam menores que o quartil inferior, 50 % são menores que a mediana e 75% são menores que o quartil superior. 

Na distribuição:   78, 91, 94, 98, 99, 101, 103, 105, 114, 117, 121 

- O 94 é o quartil inferior, também conhecido como Q1

- O 101 é  a mediana: metade dos números estão abaixo dele, metade acima

- O 114 é o quartil superior , também conhecido como o Q3

78, 91, **94**, 98, 99, **101**, 103, 105, **114**, 117, 121 

Observe que 25% dos casos estão abaixo de 94; 50% dos casos estão abaixo de 101; 75% dos casos estnao abaixo de 114 

"""

# ╔═╡ d14f8fc6-6d89-4814-aa46-cc42cb9da59f
md"""
## _Quintil_

Um quintil é um valor estatístico de um conjunto de dados que representa 20% de uma determinada população, portanto, o primeiro quintil representa o quinto mais baixo dos dados (1% a 20%); o segundo quintil representa o segundo quinto (21% a 40%) e assim por diante. 
"""

# ╔═╡ 47a1477e-12ad-4a46-b03f-11e723db941f
md"""
#### _Qual é o percentual de renda que cada quintil recebe no Brasil?_

 1) Ordenar as famílias (ou indivíduos) do menor para o maior.

 2) Calcular os quatro valores que dividirão a distribuição em 5 faixas

 3) Somar a renda de todos os indivíduos de um determinado quintil e calcular quanto esse resultado representa do precentual total

 4) Em 2015, por exemplo, os 20% mais pobres ficavam com 3,6% da renda; enquanto os 20% mais ricos ficavam com 56% da renda
 
"""

# ╔═╡ 9fe1940c-f4e8-4fb5-a249-e6048efa2080
Resource("https://github.com/jaironicolau/estatistica_2022/blob/main/imagens/income-shares-by-quintile.png?raw=true", :width => 900)

# ╔═╡ 76cafa96-02a2-4d64-a161-375c2e19182d
md"""

Veja o gráfico com os valores do Brasil e de outros países:  [Our world in data](https://ourworldindata.org/grapher/income-shares-by-quintile?country=~BRA)

"""

# ╔═╡ b1c42974-370b-4302-8a71-3a29285908ad
md"""
## _Decil_

Se divirmos uma distribuição em dez segmentos temos os decis. O procedimento é o mesmo: o primeiro decil representa o décimo  mais baixo dos dados (1% a 10%); o decil o seguinte representa o segundo décimo (11 a 20% dos dados).

Imagine uma turma em qos alunos tenham tirado diferentes notas entre 2 e 10. Digamos que a nota do primeiro decil seja 3,5. Isso significa que os alunos que tiraram que estão no primeiro decil tiraram a nota abaixo de 3,5. Se a nota que divide o decil superior é 9, isso significa que os alunos que estão nessa faixa tirararm pelo menos 9.

"""

# ╔═╡ 1c2d2d67-c475-49c3-a03f-c0120c7c33f6
md"""
##### Esse vídeo usa os quintis e decis para mostrar a desigualdade de renda nos Estados Unidos. 
"""

# ╔═╡ c9938cc2-71d8-4449-a283-3d6e50284ea2
html"""
<div style="max-width:854px"><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/QPKKQnijnsM" width="854" height="480" style="position:absolute;left:0;top:0;width:100%;height:100%" frameborder="0" scrolling="no" allowfullscreen></iframe></div></div>
"""

# ╔═╡ 6e647771-69b7-4500-bd94-c6c650d43e5f
md"""
## _Percentil_

Uma distribuição numérica também pode ser segmentada em 99 percentis, representados por p1, p2, p3... p99, que dividem os dados em cem partes com cerca de 1% dos casos em cada um.

Um jovem com 1,80 metros  está no 90 percentil da altura de uma dada população, significa que 90% jovens estão abaixo desse patamar e 10% dos jovens têm pelo menos 1,80 de altura.

"""

# ╔═╡ 80b7f807-4345-45bb-91a8-2dd649113784
md"""
!!! danger "⚠️ Programas estatísticos e percentil"
    
    Todos os programas estatísticos (R, Python, Julia, Stata, SPPS) calculam o percentil os quintis de uma distribuição de maneira relativamente simples. 

     O usuário pode definir um quintil que ele gostaria de conhecer, ou trabalhar com os três mais comuns (quartil, quintil e decil).

    O uso mais frequente é aplicar uma outra medida para comparar os quintis, particularmente em estudos sobre a desigualdade. Por exemplo:
    - Qual é a renda média de cada quintil?
    - Qual é a mediana de votos gastos de campanha dos deputados em cada decil?
    - Qual é o percentual de renda somada das pessoas de um quintil sobre a renda agregada de toda a população?





"""

# ╔═╡ cf706cc8-d0f7-4495-86a2-db13b8d857cb
md"""
### _Um gráfico para observar os quintis_

Um gráfico pouco usado, mas útil para observar a distribuição de observações é o ECDF
 (_Empirical Cumulative Distribution Function_).

No gráfico abaixo, observamos uma distribuição de cinco valores (-2, -1, 0, 1, 2). 
Fixe o olhar na linha em um ponto do eixo horizontal (x) e trace uma linha até o eixo vertical (y). O ponto em que a a linha imaginaria corta y observamos o percentil.

Para o valor 0, por exemplo, o percential é de cerca de 0,48; ou seja, cerca de 48% de casos encontram-se abaixo de zero

"""

# ╔═╡ b2fefd1f-579b-4c96-ba00-7bfe81ce0860
md"""
# _Medida de Dispersão_
"""

# ╔═╡ ab27062e-3132-446b-ad83-ba94a255e31d
md"
As média, mediana e moda nos mostra uma medida que nos indica um sumário geral dos dados. Um outro conjunto de medidas revela o padrão de dispersão de dados. 

Podemos imaginar que existe uma variação maior da idade dos torcedores que comparecem a um jogo no Maracanã, do que dos frquentadores de um show de hip-hop ou de um baile da terceira idade.

Que medida usar para mensurar a variabilidade de uma população?


"

# ╔═╡ c7bb2925-8a44-41af-a464-ee19f63f59f1
md"""
## Desvio Padrão
"""

# ╔═╡ af22073b-3405-42f1-b28e-5c00e35cb237
md"
O desvio padrão é a medida de dispersão mais comum em estatística. Se tivermos que apresentar uma estatística que resuma a dispersão dos dados, geralmente é o desvio padrão. Como o próprio nome sugere, o desvio padrão informa qual é o desvio “normal” dos dados. Na verdade, ele calcula o desvio médio da média . Quanto maior o desvio padrão, mais dispersos são os dados. Pelo contrário, quanto menor o desvio padrão, mais os dados estão centrados em torno da média.
"

# ╔═╡ d95466e4-4325-4ab7-a066-1ab97f3424f0
md"
A fórmula do desvio padrão é denotado pela letra $\sigma$:

$$\sigma = \sqrt{\frac{1}{n}\sum^n_{i = 1}(x_i - \mu)^2}$$

Como você pode ver na fórmula, o desvio padrão é na verdade o desvio médio dos dados em relação à média μ. Veja que o quadrado da diferença entre as observações e a média 
 é para evitar que diferenças negativas sejam anuladas  pelas diferenças positivas.

Para facilitar, imagine uma população de apenas 3 adultos, com as seguintes alturas (em cm):

160,4 , 175,8 e 181,5

A média é 172,6. O desvio padrão é calculado da seguinte maneira:

$$\sigma = \sqrt{\frac{1}{3} \big[(160.4 - 172.6)^2 \\ + (175.8 - 172.6)^2 \\ + (181.5 - 172.6)^2 \big]}$$
$$\sigma = 8.91$$

O desvio padrão para as alturas desses três adultos é de 8,91 cm. Isso significa que, em média, a altura dos adultos dessa população se desvia da média em 8,91 cm.


"

# ╔═╡ 458e3af8-44b0-4314-b40f-0c1c3af05766
md"""
!!! tip " 💡Propriedades do desvio padrão"

    - O valor do desvio padrão é sempre positivo (nunca negativo).
    - O valor do desvio padrão aumenta dramaticamente com a inclusão de um ou mais valores extremos (outliers).
     - A unidade do desvio padrão é a mesma unidade dos dados originais.

"""

# ╔═╡ 7494d853-9d3d-4c7b-a7a7-11dae4b45884
md"""

### Z-escore e a padronização


"""

# ╔═╡ d22c5f01-e9ad-4c64-b713-09d0778fd47d
md"""

O Z-escore é uma forma de padronizar os dados, de modo que cada observação "perca" a sua unidade original e seja transformada em desvios-padrão. Para isso, basta subtrair cada valor da média e dividir pelo desvio padrão da distribuição.

$$Z=\frac{x-\mu}{\sigma}$$


onde, $$x$$ é a observação, $$\mu$$ a média e $$\sigma$$ é o desvio padrão.

Observe que um z-score negativo indica que o valor está abaixo da média, enquanto um z-score positivo mostra que o valor está acima da média.


"""

# ╔═╡ 1274c1af-9110-4633-be45-80eee80925a1
md"""
#### Uso do z-score apara padronizar resultados do pentatlo

Dois atletas (A e B) competem em uma corrida de 800 metros, cuja média de todos os comeptidores foi de 137 segundos, com desvio padrão de 5 segundos. O corredor A completou a corrida em 129 segundos, enquanto o corredor B gastou 140 segundos. Qula é o z-escore de cada um?

- O corredor A:  

$$Z=\frac{129-137}{5} = -1.6$$


- O corredor B: 

$$Z=\frac{140-137}{5} = 0.6$$

Os desempenho dos atletas A e B no salto a distância. A média é de 6 metros e desvio-padrão de 30 cm. Qual é o z-score do atlea A que saltou 6.60cm e do atleta B que saltou 5.84 cm.

- O saltador A:  

$$Z=\frac{6.60-6.00}{30} = 2.0$$


- O saltador B: 

$$Z=\frac{5.84- 6.00}{30} = -0.4$$


Desse modo, é possivel padronizar (transformar em desvis-padrão em relação à média) valores de diferentes distribuições. 


"""

# ╔═╡ 74e0ec83-2ca4-464b-9cdb-d045d27bb90d
md"""
!!! info "Exercício"
    - Um aluno de economina tirou nota 7 em cálculo (média 5 e desvio padrão de 3).

    - Um aluno de ciencias sociais tirou nota 9 em teoria antropológica (média 8 e desvio padrão de 1).

    Quem obteve um melhor desempenho relativo?

"""

# ╔═╡ 5e64eb80-f6eb-4962-9560-8d5688b54e41


# ╔═╡ d44b0dba-fe6f-4e84-a224-3834cd0c8163
md"""
!!! tip " 💡Benefícios da padronização"

    - Os valores padronizados são convertidos das unidades originais para a unidade estatística de desvio padrão da média.

     - assim, podemos comparar valores que são medidos em diferentes escalas, com diferentes unidades e extraídos de diferentes populações.
"""

# ╔═╡ f4ea9be6-400f-44ce-b263-78c42a6d72b3
md"""

### Z-escore e a curva normal


"""

# ╔═╡ cf536371-7f77-4412-99c8-411a473d32c3
md"""
Imagine que nós empilhassemos as observações de uma determinada população (por exemplo, as notas de uma turma, ou a altura das pessoas que compareceram ao último Fla-Flu) já padronizadas. Esse empilhamento das observação produziria um gráfico semelhante a uma curva normal,que tem o formato de um sino. 

A curva normal é a distribuição mais conhecida da estatística e tem uma propriedade: sabemos quantos casos estão abaixo de cada segmento da curva, quando observamos os desvios-padrão.

- 68,2 % dos casos estão a 1 desvio-padrão em relação à média 

- 95,4% dos casos estão a 2 desvios-padrão em relação à média

- 99.7% dos casos estão a 3 desvios-padrão em relação à média

"""

# ╔═╡ 7c4de643-4264-419f-992a-7b09a6484ca3


# ╔═╡ 4d1d7607-e556-4e49-99d6-71d9487c5de5
Resource("https://kanbanize.com/blog/wp-content/uploads/2014/07/Standard_deviation_diagram.png", :width => 900)

# ╔═╡ 86ae5742-14f7-42be-a7ea-54e11eba0ec0
md"""

Se a população  de casos, se distribui em um formato de uma curva  normal, e sabemos o z-score de um caso, é possivel saber em que percentil da distribuição ele está.

O saltador A do exemplo acima está a 2 desvios-padrão em relação à média. Olhando para o gráfico acima, observamos que a faixa vermelha contempla 2,2 % (2,1 % + 0,1 %) dos casos;  ou seja, o saltador A está entre os top 97,8 % da distibuição. 

Os livros antigos de estatística traziam uma tabela em anexo, onde era possivel fazer a conversão entre o z-score eo percential de um caso.

"""

# ╔═╡ 21e8c405-c8d3-4ac1-a13f-416fe1effd42
md"""
!!! danger "⚠️ A Regra dos dois desvio de Leo Monastério"
    
    Nunca brigue se o adversário estiver a mais de dois desvios padrão de você em qualquer dimensão: conhecimento, ideologia, inteligência ou porte físico


"""

# ╔═╡ b21cdbcc-b421-4653-a38e-1d35526f4319


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
RDatasets = "ce6b1742-4840-55fa-b093-852dadbb1d8b"
SymPy = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"

[compat]
DataFrames = "~1.3.2"
Plots = "~1.25.7"
PlutoUI = "~0.7.32"
RDatasets = "~0.7.7"
SymPy = "~1.1.3"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "af92965fb30777147966f58acb05da51c5616b5f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings"]
git-tree-sha1 = "9519274b50500b8029973d241d32cfbf0b127d97"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.2"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.CategoricalArrays]]
deps = ["DataAPI", "Future", "Missings", "Printf", "Requires", "Statistics", "Unicode"]
git-tree-sha1 = "c308f209870fdbd84cb20332b6dfaf14bf3387f8"
uuid = "324d7699-5711-5eae-9e2f-1d82baa6b597"
version = "0.10.2"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "f9982ef575e19b0e5c7a98c6e75ee496c0f73a93"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.12.0"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "ded953804d019afa9a3f98981d99b33e3db7b6da"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.0"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "6b6f04f93710c71550ec7e16b650c1b9a612d0b6"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.16.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[deps.CommonEq]]
git-tree-sha1 = "d1beba82ceee6dc0fce8cb6b80bf600bbde66381"
uuid = "3709ef60-1bee-4518-9f2f-acd86f176c50"
version = "0.2.0"

[[deps.CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "44c37b4636bc54afac5c574d2d02b625349d6582"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.41.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Conda]]
deps = ["Downloads", "JSON", "VersionParsing"]
git-tree-sha1 = "6cdc8832ba11c7695f494c9d9a1c31e90959ce0f"
uuid = "8f4d0f93-b110-5947-807f-2305c1781a2d"
version = "1.6.0"

[[deps.Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "Future", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrettyTables", "Printf", "REPL", "Reexport", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "ae02104e835f219b8930c7664b8012c93475c340"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.3.2"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3daef5523dd2e769dad2365274f760ff5f282c7d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.11"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ae13fcbc7ab8f16b0856729b050ef0c446aa3492"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.4+0"

[[deps.ExprTools]]
git-tree-sha1 = "56559bbef6ca5ea0c0818fa5c90320398a6fbf8d"
uuid = "e2ba6199-217a-4e67-a87a-7c52f15ade04"
version = "0.1.8"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "d8a578692e3077ac998b50c0217dfd67f21d1e5f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.0+0"

[[deps.FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "67551df041955cc6ee2ed098718c8fcd7fc7aebe"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.12.0"

[[deps.FilePathsBase]]
deps = ["Compat", "Dates", "Mmap", "Printf", "Test", "UUIDs"]
git-tree-sha1 = "04d13bfa8ef11720c24e4d840c0033d145537df7"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.17"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "51d2dfe8e590fbd74e7a842cf6d13d8a2f45dc01"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.6+0"

[[deps.GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "RelocatableFolders", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "4a740db447aae0fbeb3ee730de1afbb14ac798a1"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.63.1"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "aa22e1ee9e722f1da183eb33370df4c1aeb6c2cd"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.63.1+0"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "58bcdf5ebc057b085e58d95c138725628dd7453c"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.1"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "a32d672ac2c967f3deb8a81d828afc739c838a06"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "0fa77022fe4b511826b39c894c90daf5fce3334a"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.17"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.IniFile]]
deps = ["Test"]
git-tree-sha1 = "098e4d2c533924c921f9f9847274f2ad89e018b8"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.0"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "61feba885fac3a407465726d0c330b3055df897f"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.1.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "a7254c0acd8e62f1ac75ad24d5db43f5f19f3c65"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.2"

[[deps.InvertedIndices]]
git-tree-sha1 = "bee5f1ef5bf65df56bdd2e40447590b272a5471f"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.1.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d735490ac75c5cb9f1b00d8b5509c11984dc6943"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.0+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "a8f4f279b6fa3c3c4f1adadd78a621b13a506bce"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.9"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "340e257aada13f95f98ee352d316c3bed37c8ab9"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.3.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "e5718a00af0ab9756305a0392832c8952c7426c1"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.6"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.Mocking]]
deps = ["Compat", "ExprTools"]
git-tree-sha1 = "29714d0a7a8083bba8427a4fbfb00a540c681ce7"
uuid = "78c3b35d-d492-501b-9361-3d52fe80e533"
version = "0.7.3"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NaNMath]]
git-tree-sha1 = "b086b7ea07f8e38cf122f5016af580881ac914fe"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "0.3.7"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "648107615c15d4e09f7eca16307bc821c1f718d8"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.13+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0b5cfbb704034b5b4c1869e36634438a047df065"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.1"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Requires", "Statistics"]
git-tree-sha1 = "a3a964ce9dc7898193536002a6dd892b1b5a6f1d"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "2.0.1"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "6f1b25e8ea06279b5689263cc538f51331d7ca17"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.1.3"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "7e4920a7d4323b8ffc3db184580598450bde8a8e"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.25.7"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "ae6145ca68947569058866e443df69587acc1806"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.32"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "db3a23166af8aebf4db5ef87ac5b00d36eb771e2"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "2cf929d64681236a2e074ffafb8d568733d2e6af"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.3"

[[deps.PrettyTables]]
deps = ["Crayons", "Formatting", "Markdown", "Reexport", "Tables"]
git-tree-sha1 = "dfb54c4e414caa595a1f2ed759b160f5a3ddcba5"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "1.3.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.PyCall]]
deps = ["Conda", "Dates", "Libdl", "LinearAlgebra", "MacroTools", "Serialization", "VersionParsing"]
git-tree-sha1 = "71fd4022ecd0c6d20180e23ff1b3e05a143959c2"
uuid = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0"
version = "1.93.0"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "ad368663a5e20dbb8d6dc2fddeefe4dae0781ae8"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+0"

[[deps.RData]]
deps = ["CategoricalArrays", "CodecZlib", "DataFrames", "Dates", "FileIO", "Requires", "TimeZones", "Unicode"]
git-tree-sha1 = "19e47a495dfb7240eb44dc6971d660f7e4244a72"
uuid = "df47a6cb-8c03-5eed-afd8-b6050d6c41da"
version = "0.8.3"

[[deps.RDatasets]]
deps = ["CSV", "CodecZlib", "DataFrames", "FileIO", "Printf", "RData", "Reexport"]
git-tree-sha1 = "2720e6f6afb3e562ccb70a6b62f8f308ff810333"
uuid = "ce6b1742-4840-55fa-b093-852dadbb1d8b"
version = "0.7.7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "37c1631cb3cc36a535105e6d5557864c82cd8c2b"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.5.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "cdbd3b1338c72ce29d9584fdbe9e9b70eeb5adca"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "0.1.3"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "15dfe6b103c2a993be24404124b8791a09460983"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.3.11"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e6bf188613555c78062842777b116905a9f9dd49"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.0"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "a635a9333989a094bddc9f940c04c549cd66afcf"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.3.4"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
git-tree-sha1 = "d88665adc9bcf45903013af0982e2fd05ae3d0a6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.2.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "51383f2d367eb3b444c961d485c565e4c0cf4ba0"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.14"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "d21f2c564b21a202f4677c0fba5b5ee431058544"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.4"

[[deps.SymPy]]
deps = ["CommonEq", "CommonSolve", "Latexify", "LinearAlgebra", "Markdown", "PyCall", "RecipesBase", "SpecialFunctions"]
git-tree-sha1 = "571bf3b61bcd270c33e22e2e459e9049866a2d1f"
uuid = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"
version = "1.1.3"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "TableTraits", "Test"]
git-tree-sha1 = "bb1064c9a84c52e277f1096cf41434b675cd368b"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.6.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TimeZones]]
deps = ["Dates", "Downloads", "InlineStrings", "LazyArtifacts", "Mocking", "Printf", "RecipesBase", "Serialization", "Unicode"]
git-tree-sha1 = "0f1017f68dc25f1a0cb99f4988f78fe4f2e7955f"
uuid = "f269a46b-ccf7-5d73-abea-4c690281aa53"
version = "1.7.1"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "216b95ea110b5972db65aa90f88d8d89dcb8851c"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.6"

[[deps.URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "34db80951901073501137bdbc3d5a8e7bbd06670"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.1.2"

[[deps.VersionParsing]]
git-tree-sha1 = "58d6e80b4ee071f5efd07fda82cb9fbe17200868"
uuid = "81def892-9a0e-5fdd-b105-ffc91e053289"
version = "1.3.0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "66d72dc6fcc86352f01676e8f0f698562e60510f"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.23.0+0"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "c69f9da3ff2f4f02e811c3323c22e5dfcb584cfa"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.1"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "cc4bf3fdde8b7e3e9fa0351bdeedba1cf3b7f6e6"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "ece2350174195bb31de1a63bea3a41ae1aa593b6"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "0.9.1+5"
"""

# ╔═╡ Cell order:
# ╟─eae781b5-86ff-4a26-b49e-a37a8b510a8b
# ╟─e32f7fde-b87d-4687-b944-c1c7d6b91ac1
# ╟─f6dfb126-8367-11ec-290e-8b3a346eae2c
# ╟─f602cbeb-7fbf-4d29-9cd7-4492a4734a3b
# ╟─d345ee2b-9d49-4af1-926b-94c99f25a4dd
# ╟─456f635d-69b2-491f-bbf6-3ec2439ccf8c
# ╟─f9fb0ff9-cbae-4c6a-9c51-d97274b3c312
# ╟─7c75e10d-ef51-4bd1-ac02-a1cb70645815
# ╟─0b69f896-153c-4d52-904a-1ed87ecbdf13
# ╟─d4d4fd1c-567e-4e21-9d53-09c9a08213be
# ╟─35c09606-f73f-4fe1-8d10-3848708047e5
# ╟─847a26d9-26ab-404e-afe2-f53237099727
# ╟─dc4b2aa7-70b7-4fb8-a78b-2f85e6e8504c
# ╟─dadcf91b-35d4-4eb2-b160-4c977696c580
# ╟─121f0345-2ed2-40f6-a373-644809412c46
# ╟─ae165add-2b1e-4daa-8448-7716ccd342b5
# ╟─d14f8fc6-6d89-4814-aa46-cc42cb9da59f
# ╟─47a1477e-12ad-4a46-b03f-11e723db941f
# ╟─9fe1940c-f4e8-4fb5-a249-e6048efa2080
# ╟─76cafa96-02a2-4d64-a161-375c2e19182d
# ╟─b1c42974-370b-4302-8a71-3a29285908ad
# ╟─1c2d2d67-c475-49c3-a03f-c0120c7c33f6
# ╟─c9938cc2-71d8-4449-a283-3d6e50284ea2
# ╟─6e647771-69b7-4500-bd94-c6c650d43e5f
# ╟─80b7f807-4345-45bb-91a8-2dd649113784
# ╟─cf706cc8-d0f7-4495-86a2-db13b8d857cb
# ╟─a22c94a0-70af-41f5-a64f-989a116d19cf
# ╟─b2fefd1f-579b-4c96-ba00-7bfe81ce0860
# ╟─ab27062e-3132-446b-ad83-ba94a255e31d
# ╟─c7bb2925-8a44-41af-a464-ee19f63f59f1
# ╟─af22073b-3405-42f1-b28e-5c00e35cb237
# ╟─d95466e4-4325-4ab7-a066-1ab97f3424f0
# ╟─458e3af8-44b0-4314-b40f-0c1c3af05766
# ╟─7494d853-9d3d-4c7b-a7a7-11dae4b45884
# ╟─d22c5f01-e9ad-4c64-b713-09d0778fd47d
# ╟─1274c1af-9110-4633-be45-80eee80925a1
# ╟─74e0ec83-2ca4-464b-9cdb-d045d27bb90d
# ╠═5e64eb80-f6eb-4962-9560-8d5688b54e41
# ╟─d44b0dba-fe6f-4e84-a224-3834cd0c8163
# ╟─f4ea9be6-400f-44ce-b263-78c42a6d72b3
# ╟─cf536371-7f77-4412-99c8-411a473d32c3
# ╠═7c4de643-4264-419f-992a-7b09a6484ca3
# ╟─4d1d7607-e556-4e49-99d6-71d9487c5de5
# ╟─86ae5742-14f7-42be-a7ea-54e11eba0ec0
# ╟─21e8c405-c8d3-4ac1-a13f-416fe1effd42
# ╠═b21cdbcc-b421-4653-a38e-1d35526f4319
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
