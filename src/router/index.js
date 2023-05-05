import { createRouter, createWebHistory } from "vue-router";
import DashView from "../views/DashView.vue";
import GptView from "../views/GptView.vue";
import ProfileView from "../views/ProfileView.vue";
import HomeView from "../views/HomeView.vue";

const routes = [
  {
    path: "/",
    name: "dash",
    component: DashView,
    children: [
      {
        path: "/home",
        name: "home",
        component: HomeView,
      },
      {
        path: "/gpt",
        name: "gpt",
        component: GptView,
      },
      {
        path: "/profile",
        name: "profile",
        component: ProfileView,
      },
    ],
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
