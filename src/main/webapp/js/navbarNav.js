const link = document.querySelectorAll('.nav-link');

//criar evento de click em todos os itens do menu
link.forEach(element => {
    element.addEventListener('click', (event) => {

        event.preventDefault();
        //remove a classe active do menu
        getRemoveClassActive('.nav-item');

        //busca o elemento pai, atraves do elemento filho
        const navItemAtual = event.target.parentNode

        //adiciona a classe active
        navItemAtual.classList.add('active');

        getShowHiddenElementSection(navItemAtual);
    });
});

/**
 * Remove a classe [active] do elemento HTML
 * @param {String} ele Recebe uma string, pode ser um nome de uma classe ou um identificador, localiza todos e remove a classe active
 */
const getRemoveClassActive = (ele) => {
    document.querySelectorAll(ele).forEach(element => {
        element.classList.remove('active');
    });
}

/**
 * Funcao responsavel por mostrar e ocultar os elemento section
 * @param {HTMLElement} navItemAtual elemento HTML que contem a referencia de qual section deve ser exibida
 */
const getShowHiddenElementSection = (navItemAtual) => {
    //remove a classe active dos cantainer do elemento section
    getRemoveClassActive('.container-section');

    const ref = navItemAtual.getAttribute('ref');
    const section = document.getElementById(ref);
    section.classList.add('active');    
}

/**
 * ao clicar no link na barra de navegacao,
 * busca o elemento section com o mesmo nome para exibir
 * @param {String} ref atributo de referencia no item do click
 */
const getApiDadosLista = (ref) =>{
    switch (ref) {
        case 'section-fabricante':
            //c�digo da se��o fabricante
            break;
    
        default:
            break;
    }
}