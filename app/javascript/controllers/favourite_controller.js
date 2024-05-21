import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  async toggleFill(event) {
    const houseId = this.element.dataset.houseId;
    const isFavourite = event.currentTarget.classList.toggle("fill-white");

    const response = await fetch(`/houses/${houseId}/toggle_favourite`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document
          .querySelector('meta[name="csrf-token"]')
          .getAttribute("content"),
      },
      body: JSON.stringify({ favourite: isFavourite }),
    });

    if (!response.ok) {
      throw new Error("Failed to update favorite status");
    }

    const html = await response.text();
    const frame = document.getElementById("favourites");
    if (frame) {
      frame.innerHTML = html;
    }
  }
}
