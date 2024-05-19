let elementoSelecionado = null;

function clicou( elemento ) {
    elementoSelecionado = document.getElementsByClassName("selected")[0];
    
    if(elementoSelecionado == elemento) {
        console.log("pega outro ai porra")
        console.log(elemento, elementoSelecionado)
    }
    else {
        elementoSelecionado.classList.remove("selected")
        elemento.classList.add("selected")
    }
}

window.onload = () => {
    const names = document.getElementById("header-names")
    const leftButton = document.getElementById("prev-slide")
    const rightButton = document.getElementById("next-slide")
    
    leftButton.onclick = () => {
        names.scrollLeft -= 50
    }
    rightButton.onclick = () => {
        names.scrollLeft += 50
    }
}
