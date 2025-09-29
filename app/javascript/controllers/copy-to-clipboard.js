    import { Controller } from "@hotwired/stimulus";

    export default class extends Controller {
      static targets = ["content"]; // Define a target for the content to copy

      async copy() {
        try {
          await navigator.clipboard.writeText(this.contentTarget.innerText);
          alert("Copied!");
        } catch (err) {
          console.error("Failed to copy:", err);
          alert("Failed to copy!");
        }
      }
    }
