function Animal(name) {
    this.name = name;
};

Animal.prototype.sayHello = function () {
    console.log("Hello, my name is " + this.name);
};

function Dog() { };

Dog.prototype = Object.create(Animal.prototype); // Dog now inherits from Animal

Dog.prototype.constructor = Dog // otherwise instances of Dog will have 'instance.constructor === Animal'

Dog.prototype.bark = function () {
    console.log("Bark!");
};

const liesel = new Dog("Liesel");

liesel.bark();
liesel.sayHello();