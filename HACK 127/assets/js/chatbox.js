/* temps de réponse du bot, 1000 milisecondes (1s) */
var responseTime = 1000; 


/* messages du bot dans l'ordre  */
var responseScript = [
    
    
  `Hello, how can we help you ?`,

  `I need to check the information, please write the name of your local network and your ID encryptfiles`,
  
  `If you want to buy a decryptor from us, the price is 205 000$, we accept bitcoin or Montero cryptocurrency for payment`,

  `We can give a report on the security of your network, but this is possible only after the transaction`,

  `If you want to buy a decryptor, you can pay via Bitcoin, our wallet bc1qxxxxxxxxxxxxxxxxxxxxzux3j you can pay we can pay you up to 8,5 BTC`,

  `un petit quetru download qui s’appelle
  <br/>
  <br/>
  <a class="btn btn-lg btn-block btn-success" href="decryptor.exe"><i class="fa fa-download"></i> decryptor.exe</a>
  <br />
  can you confirm receipt and give us the decryptor`,

  `réponse 5`,
  `réponse 6`,
  `réponse 7`,
  `réponse 8`,
  `réponse 9`,
  `réponse 10`,
  `etc...`

]







/* a partir d'ici c'est le script de fonctionnement du chatbox */





const chatWindow = document.getElementById('chatWindow');
const messageInput = document.getElementById('messageInput');
const sendButton = document.getElementById('sendButton');
let bool=false;

sendButton.addEventListener('click', sendMessage);

    // Sélectionnez l'élément avec la classe "btn-action"
    const btnAction = document.querySelector(".btn-action");

    // Sélectionnez l'élément avec l'ID "chatbox"
    const chatbox = document.querySelector(".chatbox");

    // Ajoutez un gestionnaire d'événements pour le clic sur le bouton
    btnAction.addEventListener("click", function() {
        // Modifiez l'opacité de l'élément "chatbox" à 1
        chatbox.classList.add("visible");
        if (bool==false){receiveResponse();bool=true;}
    });

var responseNb = 0;

function sendMessage() {
  const messageText = messageInput.value;
    const message = createMessage(messageText, 'user');
    chatWindow.appendChild(message);
    scrollToBottom();
    receiveResponse();
    messageInput.value='';
  }


function receiveResponse() {

  const responseText = responseScript[responseNb];
  const responseMessage = createMessage(responseText, 'bot');

  if(responseNb<responseScript.length){

  setTimeout(() => {
    chatWindow.appendChild(responseMessage);
    scrollToBottom();
  }, responseTime);

  responseNb++;}

}

function createMessage(text, sender) {
    const messageContainer = document.createElement('div');
    messageContainer.classList.add('d-flex', 'mb-2');
    
    const messageContent = document.createElement('div');
    messageContent.classList.add('p-2', 'rounded');
    if (sender === 'user') {
      messageContent.classList.add('bg-primary', 'me', 'text-white', 'ml-auto');
    } else {
      messageContent.classList.add('bg-light', 'other', 'mr-auto');
    }
  
    // Utilisation de innerHTML pour accepter du contenu HTML
    messageContent.innerHTML = text;
    
    messageContainer.appendChild(messageContent);
    return messageContainer;
  }

function scrollToBottom() {
  chatWindow.scrollTop = chatWindow.scrollHeight;
}


createMessage('Hello, how can we help you ?')