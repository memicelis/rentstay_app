import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "menuIcon"];

  toggleMenu(event) {
    this.menuTarget.classList.toggle("-translate-x-full");
    this.menuIconTargets.forEach((icon) => icon.classList.toggle("hidden"));
  }
}
