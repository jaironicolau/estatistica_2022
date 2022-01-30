### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ da0d0218-a5c4-4e86-b398-d3c586127b51
using PlutoUI

# ╔═╡ a09709c0-c8bf-422e-973d-19b56398ddac
PlutoUI.TableOfContents(title= "Conteúdo", indent= true)


# ╔═╡ 46c966b4-60d0-4528-92d4-d7602916be96
md"""
# _Ciências Sociais e estatística_
"""

# ╔═╡ c5d6f5a0-b6ef-43ca-81b0-8c4f93ab68e0
md"""
## _Por que estudar métodos quantitativos?_

### Aperfeiçoamento da forma de pensar sobre o mundo

- Qual é a probabilidade de uma mulher que testa positivo para câncer em um exame de mamografia realmente estar com a doença?

- Por que os gráficos sobre a evolução dos casos e mortos por Covid-19 são apresentados em escala logarítimica?

- O que quer  dizer uma margem com intervalo de confiança de 95% nas pesquisas de opinião?

- Por que a taxa de homicídios é calculada por 100 mil?

- Como podemos ter segurança para dizer  que as mulheres apoiam majoritariamente Lula nas pesquisas de opinião?

- A desigualdade está crescendo ou diminuindo no Brasil?


### Quantificação da ciência, das ciências sociais e do jornalismo

- Máquina de aprendizagem, big dada e algorítimos

- Ciência de dados e massificação de programação (R, Python, Julia)

- Jornalismo de dados

- Novas fronteiras da pesquisa quantitativa em ciências sociais: análise de textos, redes sociais, documentos históricos

- Causalidade e estatística bayesiana

### Ampliação das oportunidades profissionais

- Estágio e oportunidades profissionais para versados em programação e estatística

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

# ╔═╡ 37895e91-6be0-443a-8422-26bb5aab9234
md"""
> Este dataset possui 10 mil linhas e 200 colunas. As colunas contêm `String`, `Float`, `DateTime` e `missing`. O Pandas leva cerca de 400 milissegundos para carregar este dataset. Sem multithreading, `CSV.jl` é 2 vezes mais rápido que R e cerca de 10 vezes mais rápido com 10 threads.
> Fonte: [Julia Computing em 2020](https://www.washingtonpost.com/health/interactive/2022/omicron-wave-spread-maps/?itid=hp_pandemic).
"""

# ╔═╡ 2a855a38-80a9-11ec-24ad-41330e14806e
md"## _Uma história pessoal_

Há exatos 40 anos  atrás eu comecei curso de ciências sociais na Universidade Federal Fluminense (UFF), em Nitérói. Quase todas as discplinas do curso  tinham um formato semelhante. O professor indicava um texto para ser lido na aula seguinte; a aula consistia em diversas formas em torno desse texto: exposição do professor, exposição de um aluno (ou grupo de alunos) ou uma discussão livre. Nas primeiras semanas de aula, estranhei esse formato, pois estava acostumado com o modelo do ensino médio, de fazer a leitura dos livros após a aula.

Um dos poucos cursos que fugia a esse modelo era o de Estatística. Na época, uma aula de matemática, com uma avaliação final consistindo em uma série de exercícios feitos em casa e entregues ao professor, um argentino boa praça, do departamento de Matemática, que acabava aprovando todo mundo.

Imagino que o professor soubesse que aquele curso não fizesse nenhum sentido para os alunos de ciências sociais. Afinal, fomos para a grande área de humanas justamente porque erámos péssimos alunos de matemática e no fim do segundo grau tinhamos uma certeza: nunca mais precisaríamos de usar matemática na vida. E de fato, ao longo da graduação em um número muito reduzido de textos havia menção a números. Li muitos textos de antropologia, teoria política, teoria sociológica, filosofia e história política. Professores que faziam trabalhos empíricos usavam entrevistas ou etnografia.

O primeiro texto que tive contato com um livro que usava extensivamente estatística foi  em 1987, enquanto estudava para a prova de mestrado. _Discriminação e Desigualdades Raciais no Brasil_, de Carlos Hasenbalg (1979), fazia parte da bibliografia da prova. Era um texto cheio de tabelas e de leitura árida e um trabalho praticamente único da nascente sociologia da estratificação social brasileira. Uma das questões da prova consistiu em analisar um das tabelas do livro.

No mestrado, a disciplina de métodos quantitativos também era odiada pelos alunos, já quase todos vinham da cultura anti-matemática que sempre dominou as humanidades no Brasil. Nos anos 1980, o IUPERJ era uma das centros de ciências sociais que exigiam que os alunos cursassem uma disciplina de métodos quantitativos e tinha em seus quadro professores que usavam estatatística. As aulas eram completadas por exercicios em um computador que tinha uma versão instalada do SPSS, uma raridade.

Nos anos 1990 houve uma ampla massificação do uso do computador pessoal. Comprávamos as peças separadas e alguém nmontava o computador. Não havia computador pronto para usar. Meu primeiro computador foi comprado em 1992. No começo ele funcionava praticamente como uma máquina de escrever a qual acrescentávamos alguns jogos. Na segunda metade dos 1990 o e-mail se espandiu e a internet foi inventada, o que revolucionou a forma que os cientistas sociais passaram a trabalhar. 

À medida que os computados foram ficando mais potentes eles começaram a rodar programas estatísticos. No começo dos anos 2000 já era possivel instalar o SPSS no computador. Como a licença era carrísima, todos recorreriam aos ambulantes do Edififio Central, onde versões atualizadas (que quase sempre funcionavam) eram vendidas por uma bagatela.

Na tese de doutorado, escrita na primeira metade dos anos 1990, usei estatística descritiva;  todos os dados foram feitos por uma modesta calculadora pessoal. Nos anos seguintes, já como professor do IUPERJ, continuei a usar amplamente estatística em meu trabalho (basicamente índices e estatística básica). Nesse período, fazia o que a maioria dos professores fazia: contava com a ajuda de alunos e pesquisadores versados no usos do EXCEL e do SPPS para me ajudar. Comecei a ganhar alguma autonomia, quando fiz em meados dos anos 2000 alguns cursos de SPSS. 

No meu pós-doutorado em 2005/2006 investi em aprender um pouco mais de estatística. Li muitos livros, fiz alguns cursos e passei a usar o SPSS razoavelmente bem. Na volta ao Brasil, tive confiança para ensinar a temida disciplina de metodologia quantitativa. Tentei inovar usando slides e tentando integrar um pouco mais as aulas ao laboratório de SPSS. 

Com a descoberta do Tableau (um software amigável que faz gráficos bem bonitos) em 2009 passei a me interessar por visualização de dados. Na década seguinte, minha vida mudou com o uso do Stata (2013) e posteriormente com a descoberta da programação. Aos poucos, comecei a utilizar o R, o Python e até o Julia para analisar os meu dados e fazer os meus gráficos.



"

# ╔═╡ a4053934-3722-447b-a348-d88ef2c52472
md"## Casos e Variáveis

Nas pesquisas quantitativas é fundamental enteder o que é um caso, o que é uma variável.

##### Caso

Um caso é um indivíduo/objeto de uma determinada população.

Imagine, por exemplo, a população de municípios brasileiros (5570 municípios). O municipio do Rio de Janeiro é um caso da população.

Um pesquisador que estuda o PSDB estuda um caso de uma população de partidos b=no Brasil. Atualmente, existem 34 partidos regsitrados.

##### Variável

Uma variável é um atributo ou característica dos indivíduos/objetos

O termo variável dá ênfase ao fato de que os atributos dos indivíduos. Numa população de mulheres, o sexo não é uma variável.

Em uma pesquisa eleitoral a idade, a escolaridade são varieaveis, já que que temos pessoas de idades e escolaridades diferentes na população.


"

# ╔═╡ de8f2220-1091-4900-9a80-e8b16a1a7f9d


# ╔═╡ afe1c9bc-a6da-43f0-a041-8ccc732da956
md"""
!!! info "O que é significa a letra N nas pesquisas quantitativas?"
    O  **n** faz referência ao número de casos de uma população. A população de municípios brasileiros é de 5570, portanto o **n = 5570**.
"""

# ╔═╡ 54813f12-bbe6-4cff-aed0-eeeab29d9f67
md"""
### Tipos de variáveis 

#### Variável quantitativa (numérica)
porta algum  valor numéricos que são passíveis de operação matemática (soma, divisão, multiplicação): idade, número de filhos, renda per capita, anos de estudo

#### Variável categórica
cada observação pertence a uma categoria em conjunto de categorias:
- gênero: masculino, feminino
- religião: católica, evangélica, espírita, budista 
- tipo de moradia: apartamento, casa
- crença na vida após a morte: sim, não

"""

# ╔═╡ 67a8efb8-f39a-45ef-820c-eab27b3a271c
md"""
!!! info " 💡Quizz 1"
   Identifique se cada uma da variáveis é categórica (factor) ou quantitativa:
- número de crianças em uma creche
- domicílio eleitoral
- estado civil
- distância (em quilômetros) de deslocamento até a escola
- código postal
"""

# ╔═╡ 0a6d1014-d05e-4e9b-b343-01cfc6a28d80
md"""
!!! info " 💡Resposta do Quizz 1"

- número de crianças em uma creche:  **numérica**
- domicílio eleitoral:  **categórica**
- estado civil:  **categórica**
- distância (em quilômetros) de deslocamento até a escola: **numérica**
- código postal: **serve como uma variável de identificação**

"""

# ╔═╡ 95ffed65-3b4e-4622-b285-b0a69414f138


# ╔═╡ f4b0b123-efe4-4be5-9162-5fa266bc97ae
html"""
<div style="max-width:854px"><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://embed.ted.com/talks/lang/pt/nate_silver_does_racism_affect_how_you_vote" width="854" height="480" style="position:absolute;left:0;top:0;width:100%;height:100%" frameborder="0" scrolling="no" allowfullscreen></iframe></div></div>
"""

# ╔═╡ 32311376-80ad-4f7f-b422-a0559e75a28d


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.32"
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

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

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

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

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

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

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

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

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
# ╠═da0d0218-a5c4-4e86-b398-d3c586127b51
# ╠═a09709c0-c8bf-422e-973d-19b56398ddac
# ╟─46c966b4-60d0-4528-92d4-d7602916be96
# ╟─c5d6f5a0-b6ef-43ca-81b0-8c4f93ab68e0
# ╠═3e22f68e-7402-4847-a1de-885ecb6fc78f
# ╠═2ba16c5d-cc73-47fe-b9b3-d4796ccdf549
# ╟─37895e91-6be0-443a-8422-26bb5aab9234
# ╟─2a855a38-80a9-11ec-24ad-41330e14806e
# ╠═a4053934-3722-447b-a348-d88ef2c52472
# ╠═de8f2220-1091-4900-9a80-e8b16a1a7f9d
# ╟─afe1c9bc-a6da-43f0-a041-8ccc732da956
# ╠═54813f12-bbe6-4cff-aed0-eeeab29d9f67
# ╟─67a8efb8-f39a-45ef-820c-eab27b3a271c
# ╟─0a6d1014-d05e-4e9b-b343-01cfc6a28d80
# ╠═95ffed65-3b4e-4622-b285-b0a69414f138
# ╟─f4b0b123-efe4-4be5-9162-5fa266bc97ae
# ╠═32311376-80ad-4f7f-b422-a0559e75a28d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
