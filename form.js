const form = document.getElementById('form-contato');
const btnSubmit = document.getElementById('btn-submit');

form.addEventListener('submit', function (e) {
  e.preventDefault();

  btnSubmit.disabled = true;
  btnSubmit.textContent = 'Enviando...';

  const formData = new FormData(form);

  fetch(form.action, {
    method: form.method,
    body: formData,
    headers: {
      'Accept': 'application/json'
    }
  }).then(response => {
    if (response.ok) {
      alert("Obrigado! Sua mensagem foi enviada com sucesso.");
      form.reset();
    } else {
      alert("Houve um erro ao enviar. Tente novamente mais tarde.");
    }
  }).catch(error => {
    alert("Erro de conexão. Verifique sua internet.");
  }).finally(() => {
    btnSubmit.disabled = false;
    btnSubmit.textContent = 'Enviar Mensagem';
  });
});