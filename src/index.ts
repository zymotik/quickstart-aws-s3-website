function component() {
    const element = document.createElement('div');
  
    element.innerHTML = ['google', 'drive', 'compare'].join('-');
  
    return element;
  }
  
  document.body.appendChild(component());