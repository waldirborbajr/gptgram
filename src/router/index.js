import { createRouter, createWebHistory } from "vue-router";
import DashView from "../views/DashView.vue";
import GptView from "../views/GptView.vue";
import ProfileView from "../views/ProfileView.vue";

const routes = [
  {
    path: "/",
    name: "home",
    component: DashView,
  },
  {
    path: "/gpt",
    name: "gpt",
    component: GptView,
  },
  {
    path: "/profile",
    name: "gpt",
    component: ProfileView,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
