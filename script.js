document.addEventListener("DOMContentLoaded", function() {
    const groupMap = {
        "1a": "1", "2a": "2", "3b": "3", "4b": "4", "5b": "5", "6b": "6", "7b": "7",
        "8b": "8", "9b": "9", "10b": "10", "1b": "11", "2b": "12", "3a": "13", "4a": "14",
        "5a": "15", "6a": "16", "7a": "17", "8a": "18"
    };

    const periodInput = document.getElementById("input-period");
    const groupInput = document.getElementById("input-group");
    const valenceInput = document.getElementById("input-valence");
    const errorMessage = document.createElement("div");
    errorMessage.id = "error-message";
    errorMessage.style.color = "red";
    errorMessage.style.display = "none";
    document.getElementById("putElement").appendChild(errorMessage);

    const clearValenceIfNeeded = () => {
        if (periodInput.value || groupInput.value) {
            valenceInput.value = "";
        }
    };

    const clearPeriodGroupIfNeeded = () => {
        if (valenceInput.value) {
            periodInput.value = "";
            groupInput.value = "";
        }
    };

    periodInput.addEventListener("input", clearValenceIfNeeded);
    groupInput.addEventListener("input", clearValenceIfNeeded);
    valenceInput.addEventListener("input", clearPeriodGroupIfNeeded);

    const searchElement = () => {
        const period = periodInput.value.trim().toLowerCase();
        let group = groupInput.value.trim().toLowerCase();
        const valence = valenceInput.value.trim().toLowerCase();

        if (!period && !group && !valence) {
            errorMessage.textContent = "Os campos não podem estar vazios.";
            errorMessage.style.display = "block";
            return;
        }
         
        if (period && !group){
            errorMessage.textContent = "O grupo não pode estar vazio.";
            errorMessage.style.display = "block";
            return;
        } else if (!period && group){
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
        } else {
            errorMessage.textContent = "Nenhum elemento encontrado com os dados fornecidos.";
            errorMessage.style.display = "block";
        }
    };

    document.getElementById("search-element").addEventListener("click", searchElement);
});

//Selecionar os elementos clicando sobre 

document.addEventListener('DOMContentLoaded', function() {
    const elementos = document.querySelectorAll('.nao-metais, .metais-alcalinos, .metais-alcalino-terrosos, .semimetais, .halogenios, .gases-nobres, .outros-metais, .metais-de-transicao, .lantanideos, .actinideos');
    let selecionados = 0;
  
    const atualizarSelecao = () => {
      elementos.forEach(item => {
        item.style.pointerEvents = selecionados >= 3 && !item.classList.contains('destaque') ? 'none' : 'auto';
      });
    };
  
    const alternarSelecao = (elemento) => {
      elemento.classList.toggle('destaque');
      selecionados += elemento.classList.contains('destaque') ? 1 : -1;
    };
  
    elementos.forEach(elemento => {
      elemento.addEventListener('click', () => {
        if (selecionados < 3 || elemento.classList.contains('destaque')) {
          alternarSelecao(elemento);
          atualizarSelecao();
        }
      });
    });
  });

  