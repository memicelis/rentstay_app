import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const swiper = new Swiper(".swiper", {
      zoom: true,
      freeMode: true,
      slidesPerView: 1.2,
      spaceBetween: 50,
      direction: "vertical",
      scrollbar: {
        el: ".swiper-scrollbar",
      },
    });
  }
}
