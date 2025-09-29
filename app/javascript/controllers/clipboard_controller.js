// app/javascript/controllers/clipboard_controller.js
import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  static targets = ["content"]

  async copy() {
    const text = this.contentTarget.textContent.trim()

    try {
      await navigator.clipboard.writeText(text)

      // ✅ Show success modal
      Swal.fire({
        title: 'Copied!',
        text: 'Text has been copied to clipboard.',
        icon: 'success',
        timer: 1000
      })
    } catch (error) {
      console.error("Copy failed", error)

      // ❌ Show error modal
      Swal.fire({
        title: 'Oops!',
        text: 'Failed to copy the text.',
        icon: 'error',
        timer: 1000
      })
    }
  }
}
