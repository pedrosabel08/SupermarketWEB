// Obtém o nome do arquivo da página atual
const currentPage = window.location.pathname.split("/").pop();

// Define uma função para ativar o link correspondente
function setActiveLink(pageId) {
    document.getElementById(pageId).classList.add("active");
}

// Verifica qual é a página atual e define o link ativo
switch (currentPage) {
    case 'index.html':
        setActiveLink('home');
        break;
    case 'produtos.html':
        setActiveLink('produtos');
        break;
    case 'login.html':
        setActiveLink('login');
        break;
    default:
        break;
}