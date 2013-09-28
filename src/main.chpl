/**
 Chapel Package Manager

 Provided By: AcuStat.org

 DateChanged: 092813
**/

module ChPM {
    use engine;

    proc main() {
        writeln('Chapel Package Manager (ChPM)');
        writeln('-------------------');
        writeln('Version: 0.01 Alpha');
        writeln('Released: 09/28/13');
        writeln('========================');
        writeln('Program Options:');
        writeln('L - Load in Data File');
        writeln('S - Summary of Data');

        //Call MainEngine and Start
        mainEngine();
    }
}
