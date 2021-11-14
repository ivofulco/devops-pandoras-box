10:58 AM 4/19/2021

echo $home

MODO DE EDICAO

i + insert = muda para o modo edicao
ESC + o = abre o modo de insercao na linha posterior da atual
ESC + shift + o = abre o modo de insercao na linha anterior da atual
ESC + shift + a= edita o final do arquivo
ctrl + n = auto completar

MODO DE NAVEGACAO

ESC + :q = sair
ESC + :w = salvar
ESC + :wq = salvar e sair
esc + :qa! = sair sem salvar
desfazer : esc + u
refazer : esc + ctrl r
substituir texto = :%s/ul/nav/qc
substituir texto escapando= :%s/<\/li>//qc
ESC + :vs ../CAMINHO_DE_UM_ARQUIVO = abre um arquivo com a tela em dividida verticalmente
ESC + :SP ../CAMINHO_DE_UM_ARQUIVO = abre um arquivo com a tela divida horizontalmente
ctrl + ww = mudar o curso para proxima pagina
gt = alternar abas


MODO DE BUSCA
/PALAVRA_BUSCADA = procurará o padrao digitado
ESC + n = procurará o próximo padrão digitado
ESC + shift + n = procurará o anterior padrão digitado

MODO DE SELECAO

w = seleciona a proxima palavra
shit + v = selecionar uma linha 
y = copiar linha
p = colar
x = recorta
2p = cola 2 vezes
5p = cola 5 vezes
== > indenta a linha
gg = ir para inicio do arquivo
shift + g = ir para o final do arquivo

MODO DE SELECAO POR BLOCO

ctrl + v
h = ir para esquerda
j = desce uma linha
x = apaga/recorta

=================================================
Gravar macro de comandos

1 - q para iniciar e parar
2 - após iniciar será necessário nomear o grupo de comandos
3 - para chamar basta digitar @ e nome do grupo acima

=================================================

INSTALAR GERENCIADOR DE PLUGIN
PATHOGEN

https://github.com/tpope/vim-pathogen

PLUGIN
https://github.com/preservim/nerdtree

chamando o plugin NERDTREE
:NERDTree
t para abrir em uma nova aba

https://github.com/mattn/emmet-vim
emmet
remapeado para ,,


----------------------------------------------

:%s/titulo-depoimentos/title-testimonies/gc


# BUSCA COM AGRUPAMENTO
:%s/botao-\(\d\)-depoimentos/button-\1-testimonies/gc

# COPIE O CONTEUDO ATE ENCONTRAR 
:%s/figura-"\(.\{-}\)"-depoimentos/figure-"\1"-testimonies-gc

:%s/id_ativo/active_id/gc

