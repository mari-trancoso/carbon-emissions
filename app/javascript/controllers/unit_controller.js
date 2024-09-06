import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["emissionSource", "unit"];

  connect(){
    this.setEmissionSourceUnit()
  }

  setEmissionSourceUnit() {
    if (this.emissionSourceTarget.value === "1") {
      this.unitTarget.innerText = "liters";
    } else if (this.emissionSourceTarget.value === "2") {
      this.unitTarget.innerText = "tons";
    }
  }
}
