import ballerina/io;
import ballerina/time;
import ballerina/lang.runtime;

public function main() {
    io:println("Hello, World! I'm starting the timer.");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);

    // print while time in while loop for 10 secs
    var i = 0;
    while (i < 60) {
        currentTime = time:utcNow();
        formattedTime = time:utcToString(currentTime);
        if (i % 10 == 0) {
            io:println("Current time: " + formattedTime);
        }
        runtime:sleep(1);
        i = i + 1;
    }
}
