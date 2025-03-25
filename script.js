document.addEventListener('DOMContentLoaded', function() {
    const elementos = document.querySelectorAll('.nao-metais, .metais-alcalinos, .metais-alcalino-terrosos, .semimetais, .halogenios, .gases-nobres, .outros-metais, .metais-de-transicao, .lantanideos, .actinideos');
    const selecionadosNomes = document.getElementById('selecionados-nomes');
    const botaoLimpar = document.getElementById('limpar-selecao'); // Seleciona o botão de limpar
    let selecionados = [];

    const atualizarSelecao = () => {
        // Limitar a seleção a 3 elementos
        if (selecionados.length >= 3) {
            elementos.forEach(item => {
                item.style.pointerEvents = item.classList.contains('destaque') ? 'auto' : 'none';
            });
        } else {
            elementos.forEach(item => {
                item.style.pointerEvents = 'auto';
            });
        }

        // Atualizar o texto com os nomes dos elementos selecionados separados por vírgula
        selecionadosNomes.textContent = selecionados.join(', ');
    };

    const alternarSelecao = (elemento) => {
        const nomeElemento = elemento.querySelector('small').textContent; // Pegando o nome do elemento
        
        if (elemento.classList.contains('destaque')) {
            // Desmarcar o elemento
            elemento.classList.remove('destaque');
            const index = selecionados.indexOf(nomeElemento);
            if (index !== -1) {
                selecionados.splice(index, 1); // Remover da lista
            }
        } else {
            // Marcar o elemento, mas somente se não ultrapassar o limite de 3
            if (selecionados.length < 3) {
                elemento.classList.add('destaque');
                selecionados.push(nomeElemento); // Adicionar o nome à lista de selecionados
            }
        }

        atualizarSelecao();
    };

    // Adiciona o evento de clique para cada elemento da tabela
    elementos.forEach(elemento => {
        elemento.addEventListener('click', () => {
            alternarSelecao(elemento);
        });
    });

    // Evento para limpar toda a seleção ao clicar no botão
    botaoLimpar.addEventListener('click', () => {
        selecionados = []; // Esvazia a lista de selecionados
        elementos.forEach(item => {
            item.classList.remove('destaque'); // Remove o destaque de todos os elementos
            item.style.pointerEvents = 'auto'; // Reativa a seleção
        });
        atualizarSelecao();
    });
});
