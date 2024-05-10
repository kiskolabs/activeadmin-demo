import "@hotwired/turbo-rails";

import { Application } from "@hotwired/stimulus";
import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading";

const application = Application.start();

application.debug = false;
window.Stimulus = application;

lazyLoadControllersFrom("controllers", application);

document.addEventListener("turbo:load", (event) => {
  console.log("Turbo is ready!");
});

export { application };
