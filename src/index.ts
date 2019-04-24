function component() {
    const element = document.createElement('div');
  
    element.innerHTML = ['quickstart', 'aws', 's3', 'website'].join('-');
  
    return element;
  }
  
  document.body.appendChild(component());