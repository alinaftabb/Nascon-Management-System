function dynamicdropdown(listindex) {
    switch (listindex) {
        case "EE":
            document.getElementById("events").options[0] = new Option("Select Events", "");
            document.getElementById("events").options[1] = new Option("EE1: Speed wiring");
            document.getElementById("events").options[2] = new Option("EE2: Aero wars");
            document.getElementById("events").options[3] = new Option("EE3: Robo race");
            document.getElementById("events").options[4] = new Option("EE4: Robo wars");
            document.getElementById("events").options[5] = new Option("EE5: Engineering Gameshow");
            break;
        case "CS":
            document.getElementById("events").options[0] = new Option("Select Events", "");
            document.getElementById("events").options[1] = new Option("CS1: Bug Hunt Challenge");
            document.getElementById("events").options[2] = new Option("CS2: Cyber Security Quiz");
            document.getElementById("events").options[3] = new Option("CS3: Mobile App development");
            document.getElementById("events").options[4] = new Option("CS4: Game Show");
            document.getElementById("events").options[5] = new Option("CS5: SE Quiz");
            break;
        case "Business":
            document.getElementById("events").options[0] = new Option("Select Events", "");
            document.getElementById("events").options[1] = new Option("BS1: Entrepreneurial Venture");
            document.getElementById("events").options[2] = new Option("BS2: Ad-Maniac");
            document.getElementById("events").options[3] = new Option("BS3: Accounting&Finance Guru");
            document.getElementById("events").options[4] = new Option("BS4: Marketing Plan");
            document.getElementById("events").options[5] = new Option("BS5: Business Case Simulation");
            break;
        case "Social":
            document.getElementById("events").options[0] = new Option("Select Events", "");
            document.getElementById("events").options[1] = new Option("SC1: Auto Show");
            document.getElementById("events").options[2] = new Option("SC2: NaSCon Got Challenge");
            document.getElementById("events").options[3] = new Option("SC3: Battle of the Bands");
            document.getElementById("events").options[4] = new Option("SC4: English Poetry");
            document.getElementById("events").options[5] = new Option("SC5: Bait Bazi");
            break;
        case "Sports":
            document.getElementById("events").options[0] = new Option("Select Events", "");
            document.getElementById("events").options[1] = new Option("SP1: Futsal");
            document.getElementById("events").options[2] = new Option("SP2: Basketball");
            document.getElementById("events").options[3] = new Option("SP3: Table Tennis");
            document.getElementById("events").options[4] = new Option("SP4: Cricket");
            document.getElementById("events").options[5] = new Option("SP5: Maze Run");
            break;
    }
    return true;
}