void main(List<String> args){
    final windPlant = WindPlant( initialEnergy: 100);
    final nuclearPlant = NuclearPlant( energyLeft: 1000);

    print('wind: ${ chargePhone( windPlant)}');
    print('nuclear: ${ chargePhone( nuclearPlant)}');
}

double chargePhone( EnergyPlant plant){
    if( plant.energyLeft < 10){
        throw Exception('not enough energy');
    }
    return plant.energyLeft - 10;
}

enum plantType{ nuclear, wind, water}

abstract class EnergyPlant{
    double energyLeft;
    final plantType type; //nuclear, wind, water

    EnergyPlant({required this.energyLeft, required this.type});

    void consumeEnergy (double amount);
}

class WindPlant extends EnergyPlant{

    WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: plantType.wind);

    @override
    void consumeEnergy(double amount) {
        energyLeft -= amount;
    }
}

class NuclearPlant implements EnergyPlant{
    @override
    double energyLeft;

    @override
    final plantType type = plantType.nuclear;

    NuclearPlant({required this.energyLeft});


    @override
    void consumeEnergy(double amount) {
        energyLeft -= (amount * 0.5);
    }
}


