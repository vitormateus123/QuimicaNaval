document.addEventListener('DOMContentLoaded', function () {
    const elementos = document.querySelectorAll('.nao-metais, .metais-alcalinos, .metais-alcalino-terrosos, .semimetais, .halogenios, .gases-nobres, .outros-metais, .metais-de-transicao, .lantanideos, .actinideos');
    const selecionadosNomes = document.getElementById('selecionados-nomes');
    const botaoLimpar = document.getElementById('limpar-selecao');
    const periodInput = document.getElementById('input-period');
    const groupInput = document.getElementById('input-group');
    const valenceInput = document.getElementById('input-valence');
    const errorMessage = document.createElement('div');
    const botaoConfirmar = document.getElementById('confirm-selection');
    errorMessage.id = 'error-message';
    errorMessage.style.color = 'red';
    errorMessage.style.display = 'none';
    document.getElementById('putElement').appendChild(errorMessage);

    let selecionados = [];
    const groupMap = { "1a": "1", "2a": "2", "3b": "3", "4b": "4", "5b": "5", "6b": "6", "7b": "7", "8b": "8", "9b": "9", "10b": "10", "1b": "11", "2b": "12", "3a": "13", "4a": "14", "5a": "15", "6a": "16", "7a": "17", "8a": "18" };

    function atualizarSelecao() {
        elementos.forEach(item => {
            item.style.pointerEvents = selecionados.length >= 3 && !item.classList.contains('destaque') ? 'none' : 'auto';
        });
        selecionadosNomes.textContent = selecionados.join(', ');
    }

    function alternarSelecao(elemento) {
        const nomeElemento = elemento.querySelector('small').textContent;
        if (elemento.classList.toggle('destaque')) {
            if (selecionados.length < 3) selecionados.push(nomeElemento);
        } else {
            selecionados = selecionados.filter(nome => nome !== nomeElemento);
        }
        atualizarSelecao();
    }

    elementos.forEach(elemento => elemento.addEventListener('click', () => alternarSelecao(elemento)));

    botaoLimpar.addEventListener('click', () => {
        selecionados = [];
        elementos.forEach(item => item.classList.remove('destaque'));
        atualizarSelecao();
    });

    botaoConfirmar.addEventListener('click', function() {
        if (selecionados.length === 3) {
            elementos.forEach(elemento => {
                if (elemento.classList.contains('destaque')) {
                    elemento.classList.add('finalSelection'); 
                }
                elemento.style.pointerEvents = 'none'; 
            });
            botaoLimpar.disabled = true; 
            botaoConfirmar.disabled = true; 
            } else {
            alert("É necessário selecionar 3 elementos!");
        }
    });
    

    function clearValenceIfNeeded() {
        if (periodInput.value || groupInput.value) valenceInput.value = "";
    }

    function clearPeriodGroupIfNeeded() {
        if (valenceInput.value) {
            periodInput.value = "";
            groupInput.value = "";
        }
    }

    [periodInput, groupInput].forEach(input => input.addEventListener("input", clearValenceIfNeeded));
    valenceInput.addEventListener("input", clearPeriodGroupIfNeeded);

    function searchElement() {
        const period = periodInput.value.trim().toLowerCase();
        let group = groupInput.value.trim().toLowerCase();
        const valence = valenceInput.value.trim().toLowerCase();

        if (!period && !group && !valence) {
            errorMessage.textContent = "Os campos não podem estar vazios.";
        } else if ((period && !group) || (!period && group)) {
            errorMessage.textContent = "Período e grupo devem ser preenchidos.";
        } else {
            document.querySelectorAll("td").forEach(td => td.classList.remove("highlight"));
            group = groupMap[group] || group;
            const element = valence ? document.querySelector(`td[data-valence='${valence}']`) : document.querySelector(`td[data-period='${period}'][data-group='${group}']`);
            
            if (element) {
                element.classList.add("highlight");
                errorMessage.style.display = "none";
                window.scrollTo({ top: 0, behavior: "smooth" });
                return;
            } else {
                errorMessage.textContent = "Nenhum elemento encontrado com os dados fornecidos.";
            }
        }
        errorMessage.style.display = "block";
    }

    // Envia com enter
    document.getElementById("search-element").addEventListener("click", searchElement);
    document.querySelectorAll("#input-period, #input-group, #input-valence").forEach(input => {
        input.addEventListener("keypress", event => {
            if (event.key === "Enter") {
                searchElement();
            }
        });
    });

    //permite alternar entre os inputs com as setas do teclado
    document.querySelectorAll("#input-period, #input-group, #input-valence").forEach((input, index, inputs) => {
        input.addEventListener("keydown", event => {
            const moveFocus = (dir) => {
                const nextIndex = index + dir;
                if (nextIndex >= 0 && nextIndex < inputs.length) {
                    inputs[nextIndex].focus();
                    event.preventDefault();
                }
            };

            if (event.key === "ArrowDown") moveFocus(1);
            else if (event.key === "ArrowUp") moveFocus(-1);
            else if (event.key === "ArrowRight" && input.selectionEnd === input.value.length) moveFocus(1);
            else if (event.key === "ArrowLeft" && input.selectionStart === 0) moveFocus(-1);
        });
    });
});
