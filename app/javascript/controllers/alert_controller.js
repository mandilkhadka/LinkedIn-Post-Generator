import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  fire() {
    Swal.fire({
      title: 'Copied!',
      text: 'Text has been copied to clipboard.',
      icon: 'success',
      confirmButtonText: 'OK'
    })
  }
}
