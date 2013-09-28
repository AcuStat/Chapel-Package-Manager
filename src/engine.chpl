/**
 MindStack Data Engine

 By: AcuStat.org

 DateChanged: 092813

 Summary: Starts the Guided Data Tutorial
**/

module engine {

    proc mainEngine() {
        var command: string;

        while(command != 'exit'){
            writeln("AE > ");
            stdin.read(command);

            writeln("---------------");
            writeln(command);
        }
    }
}