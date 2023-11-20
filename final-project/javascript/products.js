
function addRow(){
  rowIndex++;
  let tr = newTR(rowIndex);

  tr.appendChild(newTDWithSelect('category_id[]',categoryList));
  tr.appendChild(newTDWithInputText('name[]','Ingrese el nombre del producto'));
  tr.appendChild(newTDWithInputText('price[]','Ingrese el precio', 'number'));
  tr.appendChild(newTDWithInputText('details[]','Ingrese datails'));
  let tableData = document.getElementById('tableData');
  tableData.getElementsByTagName('tbody')[0].appendChild(tr);
}

function saveTable(){

  
}


function updateRow(btn){
  return true;
}

function removeRow(btn){
  
}



function newTR(index){

  let tr = document.createElement('tr');
  tr.setAttribute('id','tr-'+index);

  let th = document.createElement('th');
  th.setAttribute('scope','row');
  th.innerHTML = rowIndex;tr.appendChild(th);

  return tr;
}

function newTDWithInputText(name,placeholder, type = 'text'){

  let td = document.createElement('td');
  let input = document.createElement('input');
  input.setAttribute('type',type);
  input.setAttribute('name',name);
  input.setAttribute('placeholder',placeholder);

  td.appendChild(input);

  return td;
}

function newTDWithInputDate(name){

  let td = document.createElement('td');
  let input = document.createElement('input');
  input.setAttribute('type','date');
  input.setAttribute('name',name);
  td.appendChild(input);

  return td;
}

function newTDWithSelect(name,optionList){

  let td = document.createElement('td');
  let select = document.createElement('select');
  select.setAttribute('name',name);
  
  td.appendChild(select);

  optionList.forEach((element) => {
    select.appendChild(new Option(element.name, element.id));
  });
    
  return td;
}

function newTdWithButtons(rowIndex){
  /*<td class="text-center py-2">
    <button type="button" class="btn btn-primary" id="update-table">Actualizar</button>
              <button type="button" class="btn btn-success" id="delete-row">Borrar</button>
  </td>*/

  let td = document.createElement('td');
  td.classList.add('text-center');
  td.classList.add('py-2');

  let btn1 = document.createElement('button');
  btn1.classList.add('btn');
  btn1.classList.add('btn-primary');
  btn1.setAttribute('type','button');
  btn1.setAttribute('id','update-row');
  btn1.setAttribute('index',rowIndex);
  btn1.innerHTML = 'Actualizar';
  btn1.addEventListener('click', function(){
    updateRow(this)
  });

  td.appendChild(btn1);
  
  let btn2 = document.createElement('button');
  btn2.classList.add('btn');
  btn2.classList.add('btn-success');
  btn2.setAttribute('type','button');
  btn2.setAttribute('id','delete-row');
  btn2.setAttribute('index',rowIndex);

  btn2.innerHTML = 'Remover';

  btn2.addEventListener('click', function(){
    console.log('CLICK DELETE ROW');
    return confirm('Are you sure you want remove this row?');
  });

  
  td.appendChild(btn1);
  td.appendChild(btn2);
  return td;
}

//Esperamos la carga del DOM antes de hacer referencia a un elemento
document.addEventListener("DOMContentLoaded", (event) => {

  /*
  
    <button type="button" class="btn btn-primary" id="update-row">Actualizar</button>
              <button type="button" class="btn btn-success" id="delete-row">Borrar</button>
  
  */

  document.getElementById('update-row').addEventListener('click', function(){
    updateRow(this);
  });

  document.getElementById('delete-row').addEventListener('click', function(){
    removeRow(this);
  });
  
  let linkProduto = document.getElementById('btn-add-row');
  linkProduto.addEventListener('click',addRow);
  //document.getElementById('btn-save').addEventListener('click',saveTable);;
});
