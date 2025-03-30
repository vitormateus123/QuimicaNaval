document.addEventListener('DOMContentLoaded', function () {
    const elementos = document.querySelectorAll('.nao-metais, .metais-alcalinos, .metais-alcalino-terrosos, .semimetais, .halogenios, .gases-nobres, .outros-metais, .metais-de-transicao, .lantanideos, .actinideos');
    const selecionadosNomes = document.getElementById('selecionados-nomes');
    const botaoLimpar = document.getElementById('limpar-selecao');
    const periodInput = document.getElementById("input-period");
    const groupInput = document.getElementById("input-group");
    const valenceInput = document.getElementById("input-valence");
    const errorMessage = document.createElement("div");
    errorMessage.id = "error-message";
    errorMessage.style.color = "red";
    errorMessage.style.display = "none";
    document.getElementById("putElement").appendChild(errorMessage);

    let selecionados = [];

    const groupMap = {
        "1a": "1", "2a": "2", "3b": "3", "4b": "4", "5b": "5", "6b": "6", "7b": "7",
        "8b": "8", "9b": "9", "10b": "10", "1b": "11", "2b": "12", "3a": "13", "4a": "14",
        "5a": "15", "6a": "16", "7a": "17", "8a": "18"
    };

    function atualizarSelecao() {
        if (selecionados.length >= 3) {
            elementos.forEach(item => {
                item.style.pointerEvents = item.classList.contains('destaque') ? 'auto' : 'none';
            });
        } else {
            elementos.forEach(item => {
                item.style.pointerEvents = 'auto';
            });
        }
        selecionadosNomes.textContent = selecionados.join(', ');
    }

    function alternarSelecao(elemento) {
        const nomeElemento = elemento.querySelector('small').textContent;

        if (elemento.classList.contains('destaque')) {
            elemento.classList.remove('destaque');
            selecionados = selecionados.filter(nome => nome !== nomeElemento);
        } else {
            if (selecionados.length < 3) {
                elemento.classList.add('destaque');
                selecionados.push(nomeElemento);
            }
        }
        atualizarSelecao();
    }

    elementos.forEach(elemento => {
        elemento.addEventListener('click', () => alternarSelecao(elemento));
    });

    botaoLimpar.addEventListener('click', () => {
        selecionados = [];
        elementos.forEach(item => {
            item.classList.remove('destaque');
            item.style.pointerEvents = 'auto';
        });
        atualizarSelecao();
    });

    function clearValenceIfNeeded() {
        if (periodInput.value || groupInput.value) {
            valenceInput.value = "";
        }
    }

    function clearPeriodGroupIfNeeded() {
        if (valenceInput.value) {
            periodInput.value = "";
            groupInput.value = "";
        }
    }

    periodInput.addEventListener("input", clearValenceIfNeeded);
    groupInput.addEventListener("input", clearValenceIfNeeded);
    valenceInput.addEventListener("input", clearPeriodGroupIfNeeded);

    function searchElement() {
        const period = periodInput.value.trim().toLowerCase();
        let group = groupInput.value.trim().toLowerCase();
        const valence = valenceInput.value.trim().toLowerCase();

        if (!period && !group && !valence) {
            errorMessage.textContent = "Os campos não podem estar vazios.";
            errorMessage.style.display = "block";
            return;
        }

        if (period && !group) {
            errorMessage.textContent = "O grupo não pode estar vazio.";
            errorMessage.style.display = "block";
            return;
        } else if (!period && group) {
            errorMessage.textContent = "O período não pode estar vazio.";
            errorMessage.style.display = "block";
            return;
        }

        document.querySelectorAll("td").forEach(td => td.classList.remove("highlight"));
        group = groupMap[group] || group;

        const element = valence
            ? document.querySelector(`td[data-valence='${valence}']`)
            : document.querySelector(`td[data-period='${period}'][data-group='${group}']`);

        if (element) {
            element.classList.add("highlight");
            errorMessage.style.display = "none";

            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        } else {
            errorMessage.textContent = "Nenhum elemento encontrado com os dados fornecidos.";
            errorMessage.style.display = "block";
        }
    }

    document.getElementById("search-element").addEventListener("click", searchElement);
});

document.addEventListener("DOMContentLoaded", function () {
    const searchButton = document.getElementById("search-element");
    const inputs = document.querySelectorAll("#input-period, #input-group, #input-valence");

    function handleEnterKey(event) {
        if (event.key === "Enter") {
            event.preventDefault(); // Impede que o formulário seja enviado ou outros comportamentos padrão
            searchButton.click(); // Simula o clique no botão
        }
    }

    // Adiciona o evento de tecla para cada campo de entrada
    inputs.forEach(input => {
        input.addEventListener("keypress", handleEnterKey);
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const inputs = document.querySelectorAll("#input-period, #input-group, #input-valence");

    inputs.forEach((input, index) => {
        input.addEventListener("keydown", function (event) {
            if (event.key === "ArrowDown") {
                event.preventDefault();
                if (index < inputs.length - 1) {
                    inputs[index + 1].focus(); // Move para o próximo campo (abaixo)
                }
            } else if (event.key === "ArrowUp") {
                event.preventDefault();
                if (index > 0) {
                    inputs[index - 1].focus(); // Move para o campo acima
                }
            } else if (event.key === "ArrowRight") {
                if (this.selectionEnd === this.value.length) { // Se o cursor estiver no final do texto
                    event.preventDefault();
                    if (index < inputs.length - 1) {
                        inputs[index + 1].focus(); // Vai para o próximo campo (direita)
                    }
                }
            } else if (event.key === "ArrowLeft") {
                if (this.selectionStart === 0) { // Se o cursor estiver no início do texto
                    event.preventDefault();
                    if (index > 0) {
                        inputs[index - 1].focus(); // Vai para o campo anterior (esquerda)
                    }
                }
            }
        });
    });
});
