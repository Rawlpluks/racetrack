class CarSystem {
  //CarSystem - 
  //Her kan man lave en generisk alogoritme, der skaber en optimal "hjerne" til de forhåndenværende betingelser
  
  ArrayList<CarController> CarControllerList  = new ArrayList<CarController>();

  CarSystem(int populationSize) {
    for (int i=0; i<populationSize; i++) { 
      CarController controller = new CarController();
      CarControllerList.add(controller);
    }
  }
  

  void updateAndDisplay() {
    //1.) Opdaterer sensorer og bilpositioner
    for (CarController controller : CarControllerList) {
      controller.update();
    }

    //2.) Tegner tilsidst - så sensorer kun ser banen og ikke andre biler!
    for (CarController controller : CarControllerList) {
      controller.display();
    }
  }
  
  void kill(){
  for (int i = 0; i < CarControllerList.size(); i++){
    if(CarControllerList.get(i).sensorSystem.whiteSensorFrameCount != 0){
     CarControllerList.remove(i);
     i--;
    }
   } 
  }
}
