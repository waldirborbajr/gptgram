import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

// tailwind css definition
import "./assets/css/app.css";

import "@fortawesome/fontawesome-free/js/all";

createApp(App).use(router).mount("#app");
