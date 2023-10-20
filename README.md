# shellscript-tarefa

Script criado para automatizar tarefas em um ambiente GNU/Linux baseado em distribuição Debian, possuí três funções:
<ul>
    <li>Atualizar Pacotes e Dependências:</li>
    <p>Permite ao usuário escolher se deseja atualizar os pacotes e dependências do sistema.</p>
    <li>Limpar Pacotes Não Utilizados:</li>
    <p>Permite ao usuário escolher se deseja limpar pacotes não utilizados no sistema.</p>
    <li>Atualizar Repositórios Git:</li>
    <p>Atualiza os repositórios Git localizados no diretório "Git" dentro da pasta home do usuário.</p>
</ul>

### Configurar Script no Bash

Baixar o script e dentro do diretório em que o mesmo foi baixado executar o comando:
<pre>
sudo mv tarefa.sh /usr/local/bin/
</pre>
E para executar o script:
<pre>
tarefa.sh
</pre>
