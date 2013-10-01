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

            writeln("&&&&&&&&&&&&&&");
            use Regexp;
            writeln("Search 3");
            {
              var r = compile("(t)[a-z]+");

              var str = " test ";
              var cap:reMatch;
              var match = r.search(str, cap);

              writeln(match);
              writeln(cap);

              writeln(str.substring(match));
            }

            writeln("---------------");
            writeln(command);
        }
    }
}