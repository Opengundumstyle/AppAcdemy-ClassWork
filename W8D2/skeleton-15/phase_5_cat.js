function Bat(name,owner){
    this.name = name
    this.owner = owner
}

Bat.prototype.cuteStatement = function(){
    return `${this.owner} loves ${this.name}`
}

Bat.prototype.cuteStatement = function(){
    //  return `${this.owner} loves ${this.name}`
    return `Everyone loves ${this.name}`
}

Bat.prototype.howl = function(){
    return `${this.name} howls`
}

let bat1 = new Bat('Dracula', "Brian")
let bat2 = new Bat('Batman', "Alfred")
let bat3 = new Bat('Morbius', "Jared Leto")
console.log(bat1.cuteStatement())
console.log(bat2.cuteStatement())
console.log(bat3.cuteStatement())
