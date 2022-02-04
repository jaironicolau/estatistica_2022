### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ eae781b5-86ff-4a26-b49e-a37a8b510a8b
using PlutoUI


# ╔═╡ d36a7ba2-19da-4cc4-8347-cb6c6e5549bb
using SymPy 

# ╔═╡ a3a2cdcb-57f0-4980-8841-548d3e65d0ae
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

A média  é  (..../ 9) = 98
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


"""

# ╔═╡ 7c75e10d-ef51-4bd1-ac02-a1cb70645815
md"""
!!! info "Exercício"
    Use uma calculadora e calcule: é a média e a mediana se acrescentarmos uma observação de valor 1200 na distribuição acima
"""

# ╔═╡ 0b69f896-153c-4d52-904a-1ed87ecbdf13
md"""
!!! hint "Resposta"
    média   = 100

    mediana = 208
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

# ╔═╡ dc4b2aa7-70b7-4fb8-a78b-2f85e6e8504c


# ╔═╡ dadcf91b-35d4-4eb2-b160-4c977696c580
md"""
### _A mediana não é a mensagem:  Stephen Jay Gould_

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
## _Quartis_

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
## _Quintis_

Um quintil é um valor estatístico de um conjunto de dados que representa 20% de uma determinada população, portanto, o primeiro quintil representa o quinto mais baixo dos dados (1% a 20%); o segundo quintil representa o segundo quinto (21% a 40%) e assim por diante. 
"""

# ╔═╡ 47a1477e-12ad-4a46-b03f-11e723db941f


# ╔═╡ 76cafa96-02a2-4d64-a161-375c2e19182d


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
SymPy = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"

[compat]
PlutoUI = "~0.7.32"
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

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

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

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

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

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

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

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "a7254c0acd8e62f1ac75ad24d5db43f5f19f3c65"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.2"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

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

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "a8f4f279b6fa3c3c4f1adadd78a621b13a506bce"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.9"

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

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0b5cfbb704034b5b4c1869e36634438a047df065"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "ae6145ca68947569058866e443df69587acc1806"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.32"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "2cf929d64681236a2e074ffafb8d568733d2e6af"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.PyCall]]
deps = ["Conda", "Dates", "Libdl", "LinearAlgebra", "MacroTools", "Serialization", "VersionParsing"]
git-tree-sha1 = "71fd4022ecd0c6d20180e23ff1b3e05a143959c2"
uuid = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0"
version = "1.93.0"

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

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e6bf188613555c78062842777b116905a9f9dd49"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.SymPy]]
deps = ["CommonEq", "CommonSolve", "Latexify", "LinearAlgebra", "Markdown", "PyCall", "RecipesBase", "SpecialFunctions"]
git-tree-sha1 = "571bf3b61bcd270c33e22e2e459e9049866a2d1f"
uuid = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"
version = "1.1.3"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.VersionParsing]]
git-tree-sha1 = "58d6e80b4ee071f5efd07fda82cb9fbe17200868"
uuid = "81def892-9a0e-5fdd-b105-ffc91e053289"
version = "1.3.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─eae781b5-86ff-4a26-b49e-a37a8b510a8b
# ╟─d36a7ba2-19da-4cc4-8347-cb6c6e5549bb
# ╟─a3a2cdcb-57f0-4980-8841-548d3e65d0ae
# ╟─f6dfb126-8367-11ec-290e-8b3a346eae2c
# ╟─f602cbeb-7fbf-4d29-9cd7-4492a4734a3b
# ╠═d345ee2b-9d49-4af1-926b-94c99f25a4dd
# ╟─456f635d-69b2-491f-bbf6-3ec2439ccf8c
# ╟─f9fb0ff9-cbae-4c6a-9c51-d97274b3c312
# ╟─7c75e10d-ef51-4bd1-ac02-a1cb70645815
# ╟─0b69f896-153c-4d52-904a-1ed87ecbdf13
# ╟─d4d4fd1c-567e-4e21-9d53-09c9a08213be
# ╟─35c09606-f73f-4fe1-8d10-3848708047e5
# ╠═dc4b2aa7-70b7-4fb8-a78b-2f85e6e8504c
# ╟─dadcf91b-35d4-4eb2-b160-4c977696c580
# ╟─121f0345-2ed2-40f6-a373-644809412c46
# ╟─ae165add-2b1e-4daa-8448-7716ccd342b5
# ╟─d14f8fc6-6d89-4814-aa46-cc42cb9da59f
# ╠═47a1477e-12ad-4a46-b03f-11e723db941f
# ╠═76cafa96-02a2-4d64-a161-375c2e19182d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
