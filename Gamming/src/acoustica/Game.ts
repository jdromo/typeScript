import Team = require("./Team");

class Game {
    public tempTotal = 0;
    public prevTotal = 0;
    home: Team;
    public name = "";
    constructor() {
        this.name = this.home.name;
        //isMobile =true;
    }
}

export = Game;
