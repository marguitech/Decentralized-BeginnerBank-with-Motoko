import { DfyBank } from "../../declarations/DfyBank";

window.addEventListener("load", async function(){
  console.log("Loaded");
  update();

});

document.querySelector("form").addEventListener("submit", async function(event) {
 event.preventDefault(); 
 console.log("Submmitted");

 const button = event.target.querySelector("#submit-btn");

 const inputAmount = parseFloat(document.getElementById("input-amount").value);
 const outputAmount = parseFloat(document.getElementById("withdrawal-amount").value);

 button.setAttribute("disabled", true);
 

 if (document.getElementById("input-amount").value.length != 0){
 await DfyBank.addUp(inputAmount);
 }
 if (document.getElementById("withdrawal-amount").value.length != 0){
  await DfyBank.withdraw(outputAmount);
   };

 

  document.getElementById("input-amount").value = "";
  document.getElementById("withdrawal-amount").value = "";
  button.removeAttribute("disabled");

  await DfyBank.compound();
  update();

});

//Make span in Front End have current Value of our Bank.
async function update(){
  const currentAmount = await DfyBank.checkBalance();
  document.getElementById("value").innerText = currentAmount.toFixed(2);

};