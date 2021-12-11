import "./style.scss";
import Navigo from "navigo";
import { renderPageElement } from "./utils/utils";
import PointsOfInterestPage from "./pages/points-of-interest/pointsOfInterestPage";
import AnimalsPage from "./pages/animals/animalsPage";
import {speciesService} from "./services/speciesService";
import PlantsPage from "./pages/plants/plantsPage";

const router = new Navigo("/");
const rootElement = document.getElementById("root");

router.on({
    "/": () => {},
    "/animals": async () => {
        const animals = await speciesService.findAllAnimals()
        rootElement.innerHTML = ""
        rootElement.appendChild(AnimalsPage({ animals }))
    },
    "/plants": async () => {
      const plants = await speciesService.findAllPlants()
      rootElement.innerHTML = ""
      rootElement.appendChild(PlantsPage({plants}))
    },
    "/points-of-interest": () => {
        renderPageElement(PointsOfInterestPage(), rootElement);
    },
})
.notFound(() => {
    alert("Not found!");
})
.resolve();
