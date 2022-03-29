### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ c44e9567-3e8d-417c-b120-5e8fefa6c03b
begin
using SymPy
using DataFrames
using PlutoUI
using RDatasets
end

# ╔═╡ da0d0218-a5c4-4e86-b398-d3c586127b51
PlutoUI.TableOfContents(title= "Conteúdo", indent= true)

# ╔═╡ c5d6f5a0-b6ef-43ca-81b0-8c4f93ab68e0
md"""
# _Por que estudar métodos quantitativos?_

### Aperfeiçoamento da forma de pensar sobre o mundo

- Qual é a probabilidade de uma mulher que testa positivo para câncer em um exame de mamografia realmente estar com a doença?

- Por que os gráficos sobre a evolução dos casos e mortos por Covid-19 são apresentados em escala logarítimica?

- O que quer  dizer a "margem de erro com intervalo de confiança de 95%" nas pesquisas de opinião?

- Por que a taxa de homicídios é calculada por 100 mil?

- Como podemos ter segurança para dizer que as mulheres apoiam majoritariamente Lula na corrida eleitoral de 2022?

- A desigualdade está crescendo ou diminuindo no Brasil?


### Quantificação da ciência, das ciências sociais e do jornalismo

- Máquina de aprendizagem, big dada e algorítimos

- Ciência de dados e massificação de programação (R, Python, Julia)

- Jornalismo de dados

- Novas fronteiras da pesquisa quantitativa em ciências sociais: análise de textos, redes sociais, documentos históricos

- Causalidade e estatística bayesiana

### Ampliação das oportunidades profissionais

- Estágio e oportunidades profissionais para alunos que têm familiaridade com programação e estatística

- Predileção das revistas por artigos baseados em pesquisa quantitativa

"""

# ╔═╡ 3e22f68e-7402-4847-a1de-885ecb6fc78f
md"""
!!! tip " 💡Hans Roling:  um mestre da arte de apresentar dados"
    Hans Roling foi um médico sueco que se notabilizou nos anos 2010 por suas apresentações fabulosas sobre estateisticas sobre demografia e pobreza. Faleceu em 2017, com 68 anos.
"""

# ╔═╡ 2ba16c5d-cc73-47fe-b9b3-d4796ccdf549
html"""
<div style="max-width:854px"><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://embed.ted.com/talks/lang/en/hans_rosling_global_population_growth_box_by_box" width="854" height="480" style="position:absolute;left:0;top:0;width:100%;height:100%" frameborder="0" scrolling="no" allowfullscreen></iframe></div></div> 
"""

# ╔═╡ 2a855a38-80a9-11ec-24ad-41330e14806e
md"## _Jairo Nicolau: minha história com os dados_

Há exatos 40 anos  atrás eu comecei o curso de ciências sociais na Universidade Federal Fluminense (UFF), em Nitérói. Quase todas as discplinas do curso  tinham um formato semelhante. O professor indicava um texto para ser lido na aula seguinte; a aula consistia em diversas formas em torno do texto selecionado: exposição do professor, exposição de um aluno (ou grupo de alunos) ou uma discussão livre. Nas primeiras semanas de aula, estranhei esse formato, pois estava acostumado com o modelo do ensino médio, de fazer a leitura dos livros após a aula.

Um dos poucos cursos que fugiu desse modelo foi o de Estatística. Na época, uma aula de matemática, com uma avaliação final consistindo em uma série de exercícios feitos em casa e entregues ao professor, um argentino boa praça, do Departamento de Matemática, que acabava aprovando todo mundo.

Imagino que o professor soubesse que aquele curso não fazia nenhum sentido para os alunos de Ciências Sociais. Afinal, fomos para a grande área de humanas justamente porque erámos péssimos alunos de matemática e no fim do segundo grau tínhamos uma certeza: nunca mais precisaríamos de usar matemática na vida. E de fato, ao longo da graduação, foram poucos os textos em que  havia uma menção a números. Li alguns livros e muitos artigos de antropologia, teoria política, teoria sociológica, filosofia e história política. Professores que faziam trabalhos empíricos usavam entrevistas ou etnografia.

O primeiro texto com o qual eu tive contato que usava extensivamente estatística foi  o livro _Discriminação e Desigualdades Raciais no Brasil_, de Carlos Hasenbalg (1979). O livro fazia  parte da bibliografia da prova de mestrado que tive que ler em 1987. Era um texto cheio de tabelas e de leitura árida e um trabalho praticamente único da nascente sociologia da estratificação social brasileira. Uma das questões da prova consistiu em analisar um das tabelas do livro.

No mestrado, a disciplina de métodos quantitativos também era odiada pelos alunos, já que quase todos vinham da cultura anti-matemática que sempre dominou as humanidades no Brasil. Nos anos 1980, o IUPERJ era uma das centros de ciências sociais que exigiam que os alunos cursassem uma disciplina de métodos quantitativos e tinha em seus quadro professores que usavam estatatística. As aulas eram completadas por exercicios em um computador que tinha uma versão instalada do SPSS, o que era uma raridade.

Nos anos 1990 houve uma ampla massificação do uso do computador pessoal. Comprávamos as peças separadas e alguém montava o computador. Não havia computador pronto para usar. Meu primeiro computador foi comprado em 1992. No começo, ele funcionava praticamente como uma máquina de escrever a qual acrescentávamos alguns jogos. Na segunda metade dos 1990 o e-mail se espandiu e a internet foi inventada, o que revolucionou a forma que os cientistas sociais passaram a trabalhar. 

À medida que os computadores foram ficando mais potentes eles tornaram-se aptos a rodar programas estatísticos. No começo dos anos 2000 já era possivel instalar o SPSS no computador. Como a licença era carrísima, todos recorreriam aos ambulantes do Edifício Central, onde versões atualizadas (que quase sempre funcionavam) eram vendidas por uma bagatela.

Na tese de doutorado, escrita na primeira metade dos anos 1990, usei estatística descritiva;  todos os dados foram feitos por uma modesta calculadora pessoal. Nos anos seguintes, já como professor do IUPERJ, continuei a usar amplamente estatística em meu trabalho (basicamente índices e estatística básica). Nesse período, fazia o que a maioria dos professores fazia: contava com a ajuda de alunos e pesquisadores versados no usos do EXCEL e do SPPS para me ajudar. Comecei a ganhar alguma autonomia, quando fiz, em meados dos anos 2000, alguns cursos sobre o SPSS. 

No meu pós-doutorado em 2005/2006 investi em aprender um pouco mais de estatística. Li muitos livros, fiz alguns cursos e passei a usar o SPSS razoavelmente bem. Na volta ao Brasil, tive confiança para ensinar a temida disciplina de metodologia quantitativa. Tentei inovar usando slides e integrando um pouco mais as aulas ao laboratório de SPSS. 

Com a descoberta do Tableau (um software amigável que faz gráficos bem bonitos) em 2009 passei a me interessar por visualização de dados. Na década seguinte, minha vida mudou com o uso do Stata (2013) e posteriormente com a descoberta da programação. Aos poucos, comecei a utilizar o R, o Python e até o Julia para analisar os meu dados e fazer os meus gráficos.

Uma das melhores coisas que aconteceram na minha carreira foi ter aprendido a usar a programaação para fazer análises estatísticas e gráficos. Todos os passos da minha atividade ficam registrados, o que é fundamental na comunidade científica atual. Gosto de dizer que isso aconteceu quando eu me aproximava dos 50 anos. Quase tudo que sei aprendi sozinho. E como todo autodidata sei coisas muito avançadas e não sei outras bem básicas. Falo isso porque creio que posso incentivar os mais jovens. Sobretudo, os que acham que já decidiram que não querem aprender estatística e consideram que programação é coisa de nerd.

"

# ╔═╡ 0a4f64f5-2ccf-4b38-9b85-79c340452fe0
md"""

# População e amostra

#### População

É o conjunto de todas as observações de interesse: os moradores do Complexo da Maré, os estudantes do Pedro II, os jogadores que participam da Série A do brasileiro

#### Amostra

É um segmento da população cujos os dados estão disponíveis: os ndivíduos que responderam à PNAD; os alunos do Pedro II sorteados para realizar um teste de desempenho escolar; os respondentes de uma pesquisa de opinião do Instituto Quaest.

O objetivo da maioria das análises de dados é aprender sobre a população. Mas quase sempre é necessário, e mais prático, observar apenas amostras dessa população. Por exemplo: o Datafolha ouv cerca de 1.000  brasileiros para coletar informações a respeito das opiniões e crenças da população.

A **estatística inferencial** fornece avaliações sobre uma população com base em dados de uma amostra. Por exemplo, uma pesquisa realizada nos EUA em 2018 perguntou: “Você acredita no céu?” A população de interesse era composta por todos os adultos dos Estados Unidos. Dos 1.141 indivíduos da amostra, 81% responderam que sim. Estamos interessados, no entanto, não apenas nessas 1.141 pessoas, mas na população de mais de 250 milhões de adultos que residem nos Estados Unidos.


"""

# ╔═╡ a4053934-3722-447b-a348-d88ef2c52472
md"# _Casos e Variáveis_

Nas pesquisas quantitativas é fundamental enteder o que é um caso, o que é uma variável.

#### Caso

Um caso é um indivíduo/objeto de uma determinada população.

Imagine, por exemplo, a população de municípios brasileiros (5570 municípios). O municipio do Rio de Janeiro é um caso da população.

Um pesquisador que estuda o PSDB, dedica-se a entender um caso de uma população de partidos brasileiros. Atualmente, existem 34 partidos regsitrados no Brasil.

#### Variável

Uma variável é um atributo ou característica dos indivíduos/objetos.

O termo variável dá ênfase ao fato de que os atributos dos indivíduos variam. Numa população de mulheres, o sexo não é uma variável.

Em uma pesquisa eleitoral, a idade e a escolaridade são variáveis, já que que observamos pessoas de diferentes idades e escolaridades na população.


"

# ╔═╡ afe1c9bc-a6da-43f0-a041-8ccc732da956
md"""
!!! info "O que é significa a letra N nas pesquisas quantitativas?"
    O  **n** faz referência ao número de casos de uma população. A população de municípios brasileiros é de 5570, portanto o **n = 5570**.
"""

# ╔═╡ 54813f12-bbe6-4cff-aed0-eeeab29d9f67
md"""
### Tipos de variáveis 

#### Variável quantitativa (numérica)
Porta algum valor numérico que é passível de operação matemática (soma, divisão, multiplicação): idade, número de filhos, renda per capita, anos de estudo

#### Variável categórica
Cada observação pertence a uma categoria, em um conjunto de categorias:
- Gênero: masculino, feminino
- Religião: católica, evangélica, espírita, budista, outras 
- Tipo de moradia: apartamento, casa
- Crença na vida após a morte: sim, não

"""

# ╔═╡ 67a8efb8-f39a-45ef-820c-eab27b3a271c
md"""
!!! info " 💡Quizz 1"
     Identifique se cada uma da variáveis é categórica (factor) ou quantitativa:
     - número de crianças em uma creche
     - sessão eleitoral em uma pesquisa sobre geografia do voto
     - estado civil
     - distância (em quilômetros) de deslocamento até a escola
     - CPF
"""


# ╔═╡ 0a6d1014-d05e-4e9b-b343-01cfc6a28d80
md"""
!!! hint "Resposta do Quizz 1"
    - número de crianças em uma creche:  **numérica**
    - sessão eleitoral em uma pesquisa sobre geografia do voto:  **categórica**
    - estado civil:  **categórica**
    - distância (em quilômetros) de deslocamento até a escola: **numérica**
    - CPF: **serve como uma variável de identificação**
"""

# ╔═╡ fcbb584e-28e2-49de-9791-7ff63a0f639e
md"""
!!! tip " 💡Nate Silver:  o mais conhecido analista de dados"
    Nate Silver é fundador do site 538, especializado em jornalismo de dados e autor do livro *O Sinal e o Ruído* (recomendo a leitura).
"""

# ╔═╡ f4b0b123-efe4-4be5-9162-5fa266bc97ae
html"""
<div style="max-width:854px"><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://embed.ted.com/talks/lang/pt/nate_silver_does_racism_affect_how_you_vote" width="854" height="480" style="position:absolute;left:0;top:0;width:100%;height:100%" frameborder="0" scrolling="no" allowfullscreen></iframe></div></div>
"""

# ╔═╡ 32311376-80ad-4f7f-b422-a0559e75a28d
md"""
# _Dados Tabulares_

Quase todos  os dados que os pesquisadore lidam estão no formato tabular

Onde:

* Cada **coluna** é uma variável
* Cada **linha** é uma observação
* Cada **célula** é uma mensuração única
"""

# ╔═╡ 1db4f060-d5b3-4de7-84be-d679ffd37bbf
md"""
$(Resource("https://github.com/storopoli/Computacao-Cientifica/blob/master/images/tidydata_1.jpg?raw=true"))

> Figura com licença creative commons de [`@allisonhorst`](https://github.com/allisonhorst/stats-illustrations)
"""

# ╔═╡ def331ca-3061-4d3d-a274-55475c47d6a9
md"""

#### Exemplo de um  banco em formato tabular

2000 American National Election Studies: Dataframe sobre o nível de informação dos cidadãos

Um banco de dados com 1807 observações e 8 variáveis:

- **y** classificação do entrevistador com os levels: Very Low, Fairly Low, Average, Fairly High, Very High

- **collegeDegree** categóricas com levels: No, Yes

- **female** categórica com os levels: No, Yes

- **agea** numérica com a idade dos respondente em anos

- **homeOwn** categórica com levels: No, Yes

- **govt** categórica com levels: No, Yes

- **length** numérica, mostra a duração da entrevista em minutos

- **id** um número que identifica cada respondente

"""

# ╔═╡ 64865c3a-9311-4662-8e88-def8f1bce222
Informação_Política = dataset("pscl", "politicalInformation")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
RDatasets = "ce6b1742-4840-55fa-b093-852dadbb1d8b"
SymPy = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"

[compat]
DataFrames = "~1.3.2"
PlutoUI = "~0.7.32"
RDatasets = "~0.7.7"
SymPy = "~1.1.4"
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

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings"]
git-tree-sha1 = "9519274b50500b8029973d241d32cfbf0b127d97"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.2"

[[deps.CategoricalArrays]]
deps = ["DataAPI", "Future", "Missings", "Printf", "Requires", "Statistics", "Unicode"]
git-tree-sha1 = "c308f209870fdbd84cb20332b6dfaf14bf3387f8"
uuid = "324d7699-5711-5eae-9e2f-1d82baa6b597"
version = "0.10.2"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c9a6160317d1abe9c44b3beb367fd448117679ca"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.13.0"

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
git-tree-sha1 = "6e47d11ea2776bc5627421d59cdcc1296c058071"
uuid = "8f4d0f93-b110-5947-807f-2305c1781a2d"
version = "1.7.0"

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

[[deps.ExprTools]]
git-tree-sha1 = "56559bbef6ca5ea0c0818fa5c90320398a6fbf8d"
uuid = "e2ba6199-217a-4e67-a87a-7c52f15ade04"
version = "0.1.8"

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

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

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

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "a6552bfeab40de157a297d84e03ade4b8177677f"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.12"

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

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

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

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "db3a23166af8aebf4db5ef87ac5b00d36eb771e2"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "de893592a221142f3db370f48290e3a2ef39998f"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.4"

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
git-tree-sha1 = "1fc929f47d7c151c839c5fc1375929766fb8edcc"
uuid = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0"
version = "1.93.1"

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
git-tree-sha1 = "5ba658aeecaaf96923dce0da9e703bd1fe7666f9"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.1.4"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.SymPy]]
deps = ["CommonEq", "CommonSolve", "Latexify", "LinearAlgebra", "Markdown", "PyCall", "RecipesBase", "SpecialFunctions"]
git-tree-sha1 = "1763d267a68a4e58330925b7ce8b9ea2ec06c882"
uuid = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"
version = "1.1.4"

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

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.VersionParsing]]
git-tree-sha1 = "58d6e80b4ee071f5efd07fda82cb9fbe17200868"
uuid = "81def892-9a0e-5fdd-b105-ffc91e053289"
version = "1.3.0"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "c69f9da3ff2f4f02e811c3323c22e5dfcb584cfa"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.1"

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
# ╠═c44e9567-3e8d-417c-b120-5e8fefa6c03b
# ╠═da0d0218-a5c4-4e86-b398-d3c586127b51
# ╟─c5d6f5a0-b6ef-43ca-81b0-8c4f93ab68e0
# ╟─3e22f68e-7402-4847-a1de-885ecb6fc78f
# ╟─2ba16c5d-cc73-47fe-b9b3-d4796ccdf549
# ╟─2a855a38-80a9-11ec-24ad-41330e14806e
# ╟─0a4f64f5-2ccf-4b38-9b85-79c340452fe0
# ╟─a4053934-3722-447b-a348-d88ef2c52472
# ╟─afe1c9bc-a6da-43f0-a041-8ccc732da956
# ╟─54813f12-bbe6-4cff-aed0-eeeab29d9f67
# ╟─67a8efb8-f39a-45ef-820c-eab27b3a271c
# ╟─0a6d1014-d05e-4e9b-b343-01cfc6a28d80
# ╟─fcbb584e-28e2-49de-9791-7ff63a0f639e
# ╟─f4b0b123-efe4-4be5-9162-5fa266bc97ae
# ╟─32311376-80ad-4f7f-b422-a0559e75a28d
# ╟─1db4f060-d5b3-4de7-84be-d679ffd37bbf
# ╟─def331ca-3061-4d3d-a274-55475c47d6a9
# ╟─64865c3a-9311-4662-8e88-def8f1bce222
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
