/**
 MindStack Data Engine

 By: AcuStat.org

 DateChanged: 092813
**/

module MindStack {
    use engine;

    proc main() {
        writeln('AcuStat - MindStack');
        writeln('-------------------');
        writeln('Version: 0.01 Alpha');
        writeln('');
        writeln('Program Options:');
        writeln('L - Load in Data File');
        writeln('S - Summary of Data');

        //Call MainEngine and Start
        mainEngine();
    }
}
